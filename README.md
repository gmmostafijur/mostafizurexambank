# Mostafizur Rahman Private Exam — mostafizurexambank

SSC MCQ exam app for students. Students enter their name, pick a group,
subject and exam, and take the exam with a timer. Results and previous-exam
history (with charts) are saved per student.

## Deploy on Vercel

1. In Vercel, **Add New → Project → Import** this repository.
2. It is a static site — no framework, no build command, no environment
   variables needed. Output directory is the repository root.
3. The site will be live at `mostafizurexambank.vercel.app`.

## Supabase (optional, for online result history)

1. Run `supabase-setup.sql` in the Supabase Dashboard SQL Editor of the
   project used for the exam app.
2. In `index.html`, fill in `SUPABASE_CONFIG` at the top of the script with
   that project's URL and **anon (publishable)** key. Never use the
   service_role key in the app.
3. Until Supabase is configured, results are saved on the student's own
   device (localStorage) and previous-exam history works per device.

## Admin

The start screen has an অ্যাডমিন section (default password `admin123`,
changeable inside the panel) to create new exams from question photos
(OCR) or typed questions.
