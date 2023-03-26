ALTER TABLE public.vozos ADD user_id uuid;
ALTER TABLE public.vozos ADD CONSTRAINT vozos_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users (id) ON UPDATE RESTRICT ON DELETE RESTRICT;
