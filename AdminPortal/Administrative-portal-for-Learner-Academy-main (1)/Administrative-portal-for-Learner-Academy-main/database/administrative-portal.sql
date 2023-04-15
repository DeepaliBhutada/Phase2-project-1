
create database administrativeportal;
use administrativeportal;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `section` int(55) NOT NULL,
  `teacher` int(20) NOT NULL,
  `subject` int(20) NOT NULL,
  `time` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `classes` (`id`, `section`, `teacher`, `subject`, `time`) VALUES
(1, 2, 1, 2, '8:30'),
(2, 1, 3, 2, '10:00'),
(3, 2, 2, 3, '11:30');

CREATE TABLE `students` (
  `id` int(20) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `age` int(20) DEFAULT NULL,
  `class` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `students` (`id`, `fname`, `lname`, `age`, `class`) VALUES
(1, 'Vir', 'Sing', 20, 1),
(2, 'Rani', 'Sinha', 22, 3),
(3, 'Rajani', 'Sinha', 23, 2),
(4, 'Shital', 'Puri', 21, 2),
(5, 'Ram', 'Khurana', 18, 2),
(6, 'Harsh', 'Kela', 24, 1),
(7, 'Yazen', 'Rawn', 24, 2);

CREATE TABLE `subjects` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `shortcut` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `subjects` (`id`, `name`, `shortcut`) VALUES
(1, 'English', 'ENG'),
(2, 'Science', 'SCE'),
(3, 'Hindi', 'HINDI'),
(4, 'Mathematics', 'MATH');

CREATE TABLE `teachers` (
  `id` int(20) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(55) NOT NULL,
  `age` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `teachers` (`id`, `fname`, `lname`, `age`) VALUES
(1, 'Nilesh', 'Kela', '35'),
(2, 'Sonu', 'Pandit', '43'),
(3, 'Anad', 'Pawar', '48'),
(4, 'Akash', 'Puri', '66');

ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject`),
  ADD KEY `teacher_id` (`teacher`);
  
  ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class`);
  
  ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);
  
  ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `classes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  
  ALTER TABLE `students`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
  
  ALTER TABLE `subjects`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  
  
  ALTER TABLE `teachers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  
  ALTER TABLE `classes`
  ADD CONSTRAINT `subject_id` FOREIGN KEY (`subject`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `teacher_id` FOREIGN KEY (`teacher`) REFERENCES `teachers` (`id`);

ALTER TABLE `students`
  ADD CONSTRAINT `class_id` FOREIGN KEY (`class`) REFERENCES `classes` (`id`);
COMMIT;


  

  

  

  


  
  
  
  
  
  








