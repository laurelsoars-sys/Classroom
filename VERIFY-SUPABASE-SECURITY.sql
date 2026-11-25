-- Execute in Supabase SQL Editor BEFORE inviting students.
-- Keep the existing per-user table and ensure RLS is active.
create table if not exists public.classroom_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null,
  revision bigint not null default 1,
  updated_at timestamptz not null default now()
);
alter table public.classroom_data enable row level security;
revoke all on public.classroom_data from anon;
grant select, insert, update on public.classroom_data to authenticated;
drop policy if exists "read own Classroom" on public.classroom_data;
drop policy if exists "create own Classroom" on public.classroom_data;
drop policy if exists "update own Classroom" on public.classroom_data;
create policy "read own Classroom" on public.classroom_data for select to authenticated using ((select auth.uid()) = user_id);
create policy "create own Classroom" on public.classroom_data for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "update own Classroom" on public.classroom_data for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
-- Verify RLS is on and policies above exist before sharing publicly.
select tablename, rowsecurity from pg_tables where schemaname='public' and tablename='classroom_data';
select policyname, cmd, roles from pg_policies where schemaname='public' and tablename='classroom_data';
