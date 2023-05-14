select CONCAT(name_prefix ,'',users.first_name , ' ' ,users.last_name)as fullname ,
		bookings.start_date,bookings.end_date,
        rooms.room_name 
from bookings
inner join users on users.id =  bookings.users_id
inner join rooms on bookings.rooms_id = rooms.id
order by users_id;

