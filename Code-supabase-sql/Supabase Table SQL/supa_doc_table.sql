create table public.documents (
  id bigserial not null,
  content text null,
  metadata jsonb null,
  embedding public.vector null,
  user_id uuid null,
  created_at timestamp with time zone null default now(),
  doc_name text null,
  constraint documents_pkey primary key (id)
) TABLESPACE pg_default;

create index IF not exists idx_documents_doc_name on public.documents using btree (doc_name) TABLESPACE pg_default;