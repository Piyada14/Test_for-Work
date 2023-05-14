select CONCAT(name_prefix ,'', users.first_name , ' ' ,users.last_name)as fullname ,
		bookings.start_date,bookings.end_date,
        rooms.room_name 
from bookings
inner join users on users.id =  bookings.users_id
inner join rooms on bookings.rooms_id = rooms.id
WHERE bookings.start_date >= "2021-09-02 14:00:00" AND bookings.start_date <= "2021-09-02 17:00:00" AND
bookings.end_date >= "2021-09-02 16:00:00" AND bookings.end_date <= "2021-09-02 20:00:00"
order by users_id;
