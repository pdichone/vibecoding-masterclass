create table public.transcripts (
  id uuid not null default gen_random_uuid (),
  user_id uuid not null,
  video_url text not null,
  transcript text not null,
  created_at timestamp with time zone null default now(),
  constraint transcripts_pkey primary key (id),
  constraint unique_user_video_transcript unique (user_id, video_url),
  constraint transcripts_user_id_fkey foreign KEY (user_id) references auth.users (id) on delete CASCADE
) TABLESPACE pg_default;