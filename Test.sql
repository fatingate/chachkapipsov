
select * from producername;

select * from medicine where producerid = 3;

select medicinename ||' is for '|| indication ||' but do not use it if you have '|| contra_ind from medicine;

select upper(producername), length(producername) from producer where producername like('%A%') or producername like('%H%');

select medicineid, medicinename, typename from medicine NATURAL join typee;

select count(*) from producer;

select medicinename from medicine where medicineid= (select medicineid from typee where typename = 'pills');

select medicinename from medicine where medicineid= (select medicineid from typee where typename = 'pills');

select producername from producer inner join medicine on producer.producerid= medicine.medicineid 
