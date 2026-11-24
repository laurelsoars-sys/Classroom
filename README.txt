Classroom 6.1 — student accounts

Upload all files in this directory to GitHub Pages repository root.

CONFIGURATION REQUIRED:
1. Run VERIFY-SUPABASE-SECURITY.sql in Supabase SQL Editor.
2. Enable Auth > Providers > Email > Confirm email.
3. Auth > URL Configuration: Site URL https://laurelsoars-sys.github.io/Classroom/ and add https://laurelsoars-sys.github.io/Classroom/** as redirect pattern.
4. For sharing with multiple friends, configure Custom SMTP. Supabase default auth email limits are for testing.
5. Test with two separate student accounts and confirm neither can view the other's grades.

The Supabase publishable API key in index.html is not a secret. Never add service_role or secret keys to the repository.

Existing grades: export backup in v6 before upgrading. Old legacy grades are offered for import on first sign-in in a browser; other users get separate local storage.
