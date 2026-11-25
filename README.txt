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

Classroom 6.2: expanded class colors (28 presets and a custom color picker).


Classroom 7.0 — calendar & reminder upgrade
- New: .ics homework calendar export, single-task exports, Google Calendar event shortcut.
- New: editable due time and calendar reminder lead time.
- New: optional browser notifications only when the app is running.
- To receive reminders while Classroom is closed: import the .ics file into Apple Calendar, Google Calendar, or Outlook and enable calendar alerts.
- This is a one-way calendar export, not automatic calendar sync. Changes require a fresh export, which can create duplicates in some calendars.
- Push notifications with the app closed are NOT built in; require a server-side push service.
- Each task without a set due time defaults to 5:00 PM local time when exported.
- Before uploading, export a backup in your old app. Upload package contents to GitHub repository root.
