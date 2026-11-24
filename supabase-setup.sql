-- Mostafizur Rahman Private Exam — Supabase setup
-- Run this in the Supabase Dashboard SQL Editor of the project you use
-- for the exam app (e.g. the MRFolio project). It creates the table that
-- stores every student's exam attempt. No existing table is touched.
-- The app reads the project URL + anon key from SUPABASE_CONFIG at the top
-- of index.html. Never put the service_role key in the app.

create table if not exists public.exam_results (
  id uuid primary key default gen_random_uuid(),
  student_name text not null,
  group_name text,
  subject text,
  exam text,
  correct int not null,
  total int not null,
  pct numeric not null,
  seconds int,
  created_at timestamptz not null default now()
);

alter table public.exam_results enable row level security;

-- Name-based exam, no login: anyone with the link may save + read attempts.
create policy "Anyone can insert exam results"
  on public.exam_results for insert to anon with check (true);

create policy "Anyone can read exam results"
  on public.exam_results for select to anon using (true);
