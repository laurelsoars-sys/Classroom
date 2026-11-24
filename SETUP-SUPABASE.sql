-- Run this in YOUR Supabase project's SQL Editor.
-- One private JSON school planner per authenticated user.
create table if not exists public.classroom_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null,
  revision bigint not null default 1,
  updated_at timestamptz not null default now()
);
alter table public.classroom_data enable row level security;
revoke all on public.classroom_data from anon;
grant select, insert, update on public.classroom_data to authenticated;
create policy "read own Classroom" on public.classroom_data for select to authenticated using ((select auth.uid()) = user_id);
create policy "create own Classroom" on public.classroom_data for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "update own Classroom" on public.classroom_data for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
-- Never use Supabase service_role or secret keys in browser code.
