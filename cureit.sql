show databases;
show databases;
use cureit;
show tables;
show triggers;
show databases;
use cureit;
show triggers;
show databases;
use cureit;
show tables;
show triggers;
delimiter //
CREATE DEFINER=`root`@`localhost` TRIGGER `doctor_AFTER_INSERT` AFTER INSERT ON `doctor` FOR EACH ROW 
BEGIN

INSERT INTO `connect_to_your_doctor`.`doctor_timetable`(doctor_id, weekday, start_time, end_time, slot_duration,break_time, status) VALUES (NEW.doctor_id,'Monday','10:00:00','18:00:00',30,'14:00:00','available'),
(NEW.doctor_id,'Tuesday','10:00:00','18:00:00',30,'14:00:00','available'),
(NEW.doctor_id,'Wednesday','10:00:00','18:00:00',30,'14:00:00','available'),
(NEW.doctor_id,'Thursday','10:00:00','18:00:00',30,'14:00:00','available'),
(NEW.doctor_id,'Friday','10:00:00','18:00:00',30,'14:00:00','available'),
(NEW.doctor_id,'Saturday','10:00:00','18:00:00',30,'14:00:00','available'),
(NEW.doctor_id,'Sunday','10:00:00','18:00:00',30,'14:00:00','not available');
END

