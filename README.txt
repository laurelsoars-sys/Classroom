Classroom v5.1: Cloud setup uses a two-field form instead of consecutive browser prompts (which can be unreliable on iPhone). Your saved grades remain unchanged.

Classroom v5 — private optional Supabase cloud sync

Upload index.html, sw.js, manifest.webmanifest and icons/ to the root of your GitHub Pages repository.

Before upgrading, export a JSON backup from version 4. Cloud sync requires creating your own Supabase project and running SETUP-SUPABASE.sql in its SQL Editor. After you publish this version, open Settings & backup > Set up cloud sync and enter the Project URL + publishable key (NEVER a secret/service_role key). Configure Supabase Auth > URL Configuration with your published GitHub Pages URL as Site URL and redirect allow list. Use the same email on all your devices; choose “Connect this device” and carefully read prompts. Do not put grades or backup JSON in public GitHub.

Local data is always saved. Cloud sync uses email magic links and row-level security. The setup is optional. Conflict detection stops overwrites when two devices have changed the data. Keep periodic backups.
