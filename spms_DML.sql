-- genre
insert into genre values (default, 'Romance');
insert into genre values (default, 'Mystery');
insert into genre values (default, 'Fantasy');
insert into genre values (default, 'SciFi');
insert into genre values (default, 'Thriller/Horror');
insert into genre values (default, 'Young Adult');
insert into genre values (default, 'Children');
insert into genre values (default, 'Inspirational');
insert into genre values (default, 'Self-Help');
insert into genre values (default, 'Religious');
insert into genre values (default, 'Spiritual');
insert into genre values (default, 'Biography');
insert into genre values (default, 'Textbook');

select * from genre;
-- genre

-- pitch_stage
insert into pitch_stage values (default, 'Submitted');
insert into pitch_stage values (default, 'Assistant');
insert into pitch_stage values (default, 'General');
insert into pitch_stage values (default, 'Senior');
insert into pitch_stage values (default, 'Draft');

select* from pitch_stage;
-- pitch_stage

-- review_status
insert into review_status values (default, 'On Hold');
insert into review_status values (default, 'Under Review');
insert into review_status values (default, 'Request Made');
insert into review_status values (default, 'Request Replied');
insert into review_status values (default, 'Accepted');
insert into review_status values (default, 'Rejected');


select * from review_status;
-- review_status

-- roles
insert into roles values (default, 'Author');
insert into roles values (default, 'EditorI');
insert into roles values (default, 'EditorII');
insert into roles values (default, 'EditorIII');

select * from roles;
-- roles

-- story_type
insert into story_type values (default, 'Article', 10);
insert into story_type values (default, 'Short Story', 20); -- requires majority of committee 
insert into story_type values (default, 'Novela', 25); -- requires majority of committee
insert into story_type values (default, 'Novel', 50); -- requires majority of committee

select * from story_type;
-- story_type


