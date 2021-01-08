--create schema spms;

create table roles (
	id serial primary key,
	name varchar(20) unique not null
);

create table users (
	id serial primary key,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	email varchar(50) unique not null check(email ~ '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'),
	role_id integer references roles
);

create table login (
	id serial primary key,
	username varchar(15) unique not null check(length(username) > 0),
	psswrd varchar(15) not null check(length(psswrd) > 0),
	user_id integer references users
);

create table genre (
	id serial primary key,
	name varchar(15) unique not null
);

create table committee (
	id serial primary key,
	genre_id integer unique references genre
);

create table users_committee (
	id serial primary key,
	user_id integer references users,
	committee_id integer references committee,
	unique(user_id, committee_id)
);

create table review_status (
	id serial primary key,
	name varchar(15) unique not null
);

create table request (
	id serial primary key,
	question text,
	answer text,
	request_time timestamp not null,
	requester_id integer references users,
	requestee_id integer references users,
	request_status integer references review_status
);

create table story_type (
	id serial primary key,
	name varchar(15) unique not null,
	weight integer not null check (weight <= 100)
);

create table pitch_stage (
	id serial primary key,
	name varchar(15) unique not null
);

create table add_file (
	id serial primary key,
	path text unique not null
);

create table pitch (
	id serial primary key,
	title varchar(50) not null,
	pitch_made_at timestamp not null,
	pitch_arrived_at timestamp not null,
	completion_date date not null,
	tagline varchar(150) not null,
	description text not null,
	genre_id integer references genre,
	type_id integer references story_type,
	stage_id integer references pitch_stage,
	status_id integer references review_status
);

create table request_pitch (
	id serial primary key,
	request_id integer references request,
	pitch_id integer references pitch
);

create table pitch_add_file (
	id serial primary key,
	pitch_id integer references pitch,
	add_file_id integer references add_file
);

create table author_pitch (
	id serial primary key,
	user_id integer references users,
	pitch_id integer references pitch,
	unique(user_id, pitch_id)
);

create table editor_pitch (
	id serial primary key,
	user_id integer references users,
	pitch_id integer references pitch,
	approval integer references review_status,
	unique(user_id, pitch_id, approval)
);

create table draft (
	id serial primary key,
	time_submitted timestamp not null,
	pitch_id integer references pitch,
	draft_status integer references review_status
);

create table draft_add_file(
	id serial primary key,
	draft_id integer references draft,
	add_file_id integer references add_file
);

create table editor_draft (
	id serial primary key,
	user_id integer references users,
	draft_id integer references draft,
	approval integer references review_status,
	unique(user_id, draft_id, approval)
);


create table request_draft (
	id serial primary key,
	request_id integer references request,
	draft_id integer references draft
);