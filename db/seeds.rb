# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.create(firstname: 'Yagi', lastname: 'Toshinori', postion:'Heroics Teacher', quirk: 'One For All');
Instructor.create(firstname: 'Aizawa', lastname: 'Shota', postion:'Homeroom Teacher', quirk: 'Erasure');
Instructor.create(firstname: 'Yamada', lastname: 'Hizashi', postion:'English Teacher', quirk: 'Voice');
Instructor.create(firstname: 'Ekuto', lastname: 'Purazumu', postion:'Mathematics Teacher', quirk: 'Clones');
Instructor.create(firstname: 'Ishiyama', lastname: 'Ken', postion:'Modern Literature', quirk: 'Cement');
Instructor.create(firstname: 'Magima', lastname: 'Higari', postion:'Development Studio Head', quirk: 'Iron Claws');
Instructor.create(firstname: 'Kayama', lastname: 'Nemuri', postion:'Head of Management', quirk: 'Somnambulist');

Course.create(title: 'Heroics Course', hours: 600);
Course.create(title: 'General Education Course',  hours: 400);
Course.create(title: 'Support Course', hours: 300);
Course.create(title: 'Management Course', hours: 300);

Cohort.create(title: "Identity Course", start_date: Faker::Date.backward(100) , end_date: Faker::Date.forward(100), instructor_id: 1, course_id: 1);
Cohort.create(title: "Rescue Course", start_date: Faker::Date.backward(100) , end_date: Faker::Date.forward(100), instructor_id: 2, course_id: 1);
Cohort.create(title: "Power Course", start_date: Faker::Date.backward(100) , end_date: Faker::Date.forward(100),  instructor_id: 1, course_id: 1);
Cohort.create(title: "English 101", start_date: Faker::Date.backward(100) , end_date: Faker::Date.forward(100), instructor_id: 3, course_id: 2);
Cohort.create(title: "Mathematics 101", start_date: Faker::Date.backward(100) , end_date: Faker::Date.forward(100), instructor_id: 4, course_id: 2);
Cohort.create(title: "Modern Literature 101", start_date: Faker::Date.backward(100) , end_date: Faker::Date.forward(100), instructor_id: 5, course_id: 2);
Cohort.create(title: "Costume Design", start_date: Faker::Date.backward(100) , end_date: Faker::Date.forward(100), instructor_id: 6, course_id: 3);
Cohort.create(title: "Costume Developer", start_date: Faker::Date.backward(100) , end_date: Faker::Date.forward(100), instructor_id: 6, course_id: 3);
Cohort.create(title: "Management 101", start_date: Faker::Date.backward(100) , end_date: Faker::Date.forward(100), instructor_id: 7, course_id: 4);
Cohort.create(title: "Management 102", start_date: Faker::Date.backward(100) , end_date: Faker::Date.forward(100), instructor_id: 7, course_id: 4);


Student.create(firstname: 'Izuku', lastname: 'Midoria', quirk: 'One For All', cohort_id: 1);
Student.create(firstname: 'Shoto', lastname: 'Todoroki',  quirk: 'Half-Cold Half-Hot', cohort_id: 1);
Student.create(firstname: 'Katsuki', lastname: 'Bakugo',  quirk: 'Explosion', cohort_id: 1);
Student.create(firstname: 'Ochaco', lastname: 'Uraraka',  quirk: 'Zero Gravity', cohort_id: 1);
Student.create(firstname: 'Tenya', lastname: 'Iida',  quirk: 'Engine', cohort_id: 1);
Student.create(firstname: 'Tsuyu', lastname: 'Asui',  quirk: 'Frog',cohort_id: 2);
Student.create(firstname: 'Mina', lastname: 'Ashido',  quirk: 'Acid',cohort_id: 2);
Student.create(firstname: 'Yuga', lastname: 'Aoyama',  quirk: 'Navel Laser',cohort_id: 2);
Student.create(firstname: 'Mashirao', lastname: 'Ojiro',  quirk: 'Tail',cohort_id: 2);
Student.create(firstname: 'Denki', lastname: 'Kaminari',  quirk: 'Electrification',cohort_id: 2);
Student.create(firstname: 'Eijiro', lastname: 'Kirishima',  quirk: 'Hardening',cohort_id: 3);
Student.create(firstname: 'Koji', lastname: 'Koda', quirk: 'Anivoice', cohort_id: 3);
Student.create(firstname: 'Rikido', lastname: 'Sado',  quirk: 'Sugar Rush',cohort_id: 4);
Student.create(firstname: 'Mezo', lastname: 'Shoji',  quirk: 'Dupli-Arms',cohort_id: 4);
Student.create(firstname: 'Kyoka', lastname: 'Jiro',  quirk: 'Earphone Jack',cohort_id: 5);
Student.create(firstname: 'Hanata', lastname: 'Sero',  quirk: 'Tape',cohort_id: 5);
Student.create(firstname: 'Fumikage', lastname: 'Tokoyami',  quirk: 'Dark Shadow',cohort_id: 6);
Student.create(firstname: 'Toru', lastname: 'Hagakure',  quirk: 'Invisible',cohort_id: 6);
Student.create(firstname: 'Minoru', lastname: 'Minata', quirk: 'Pop Off', cohort_id: 7);
Student.create(firstname: 'Momo', lastname: 'Yaoyorozu',  quirk: 'Creation',cohort_id: 7);
Student.create(firstname: 'Itsuka', lastname: 'Kendo',  quirk: 'Big Fist',cohort_id: 8);
Student.create(firstname: 'Ibara', lastname: 'Shiozaki', quirk: 'Vines', cohort_id: 8);
Student.create(firstname: 'Shihai', lastname: 'Kuroiro',  quirk: 'Black',cohort_id: 9);
Student.create(firstname: 'Neito', lastname: 'Monoma',  quirk: 'Copy',cohort_id: 9);
Student.create(firstname: 'Juzo', lastname: 'Honenuki', quirk: 'Softening', cohort_id: 10);
Student.create(firstname: 'Yosetsu', lastname: 'Awase',  quirk: 'Weld',cohort_id: 10);