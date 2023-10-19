sasha@sasha-linux:~$ pwd
/home/sasha
sasha@sasha-linux:~$ mkdir homework/2/ -p
sasha@sasha-linux:~$ cd homework/2/
sasha@sasha-linux:~/homework/2$ ls
sasha@sasha-linux:~/homework/2$ mkdir students mentors
sasha@sasha-linux:~/homework/2$ ls
mentors  students
sasha@sasha-linux:~/homework/2$ touch students/students_list.txt
sasha@sasha-linux:~/homework/2$ ls
mentors  students
sasha@sasha-linux:~/homework/2$ tree
.

├── mentors

└── students

    └── students_list.txt

2 directories, 1 file

sasha@sasha-linux:~/homework/2$ touch mentors/mentors_list.txt
sasha@sasha-linux:~/homework/2$ tree
.

├── mentors

│   └── mentors_list.txt

└── students

    └── students_list.txt

2 directories, 2 files

sasha@sasha-linux:~/homework/2$ sudo apt install vim vim-runtime
sasha@sasha-linux:~/homework/2$ vim mentors/mentors_list.txt 
sasha@sasha-linux:~/homework/2$ vim students/students_list.txt 
sasha@sasha-linux:~/homework/2$ head mentors/mentors_list.txt 
У нас нет наставников
sasha@sasha-linux:~/homework/2$ head students/students_list.txt 
Одногруппники • 67
    Михаил Першин
    Андрей Сенюта
    Анатолий Разорёнов
    Соколов Сергей
    Надежда Шашина

sasha@sasha-linux:~/homework/2$ mv mentors/mentors_list.txt students/
sasha@sasha-linux:~/homework/2$ ls
mentors  students
sasha@sasha-linux:~/homework/2$ tree
.

├── mentors

└── students

    ├── mentors_list.txt

    └── students_list.txt

2 directories, 2 files

sasha@sasha-linux:~/homework/2$ rm mentors/ -r
sasha@sasha-linux:~/homework/2$ ls
students
sasha@sasha-linux:~/homework/2$ mv students students_and_mentors
sasha@sasha-linux:~/homework/2$ ll

итого 12
drwxrwxr-x 3 sasha sasha 4096 окт 19 22:25 ./
drwxrwxr-x 3 sasha sasha 4096 окт 19 22:07 ../
drwxrwxr-x 2 sasha sasha 4096 окт 19 22:24 students_and_mentors/
sasha@sasha-linux:~/homework/2$ rm students_and_mentors/ -r
sasha@sasha-linux:~/homework/2$ ls
sasha@sasha-linux:~/homework/2$ touch file1
sasha@sasha-linux:~/homework/2$ ls
file1
sasha@sasha-linux:~/homework/2$ echo hello world > file1
sasha@sasha-linux:~/homework/2$ cat file1
hello world
sasha@sasha-linux:~/homework/2$ cp file1 file2
sasha@sasha-linux:~/homework/2$ ls
file1  file2
sasha@sasha-linux:~/homework/2$ ln -s file1 file3
sasha@sasha-linux:~/homework/2$ ls
file1  file2  file3
sasha@sasha-linux:~/homework/2$ ll
итого 16
drwxrwxr-x 2 sasha sasha 4096 окт 19 22:31 ./
drwxrwxr-x 3 sasha sasha 4096 окт 19 22:07 ../
-rw-rw-r-- 1 sasha sasha   12 окт 19 22:29 file1
-rw-rw-r-- 1 sasha sasha   12 окт 19 22:29 file2
lrwxrwxrwx 1 sasha sasha    5 окт 19 22:31 file3 -> file1
sasha@sasha-linux:~/homework/2$ ln file1 file4
sasha@sasha-linux:~/homework/2$ ls -li
итого 12
918548 -rw-rw-r-- 2 sasha sasha 12 окт 19 22:29 file1
918550 -rw-rw-r-- 1 sasha sasha 12 окт 19 22:29 file2
918552 lrwxrwxrwx 1 sasha sasha  5 окт 19 22:31 file3 -> file1
918548 -rw-rw-r-- 2 sasha sasha 12 окт 19 22:29 file4
sasha@sasha-linux:~/homework/2$ rm file1
sasha@sasha-linux:~/homework/2$ ls -li
итого 8
918550 -rw-rw-r-- 1 sasha sasha 12 окт 19 22:29 file2
918552 lrwxrwxrwx 1 sasha sasha  5 окт 19 22:31 file3 -> file1
918548 -rw-rw-r-- 1 sasha sasha 12 окт 19 22:29 file4
sasha@sasha-linux:~/homework/2$ # символическая ссылка перестала работать, жесткая осталась
sasha@sasha-linux:~/homework/2$ cat file2
hello world
sasha@sasha-linux:~/homework/2$ cat file3
cat: file3: Нет такого файла или каталога
sasha@sasha-linux:~/homework/2$ cat file4
hello world
sasha@sasha-linux:~/homework/2$ mv file2 test2
sasha@sasha-linux:~/homework/2$ ls
file3  file4  test2
sasha@sasha-linux:~/homework/2$ mv file4 test4
sasha@sasha-linux:~/homework/2$ ls
file3  test2  test4
sasha@sasha-linux:~/homework/2$ ln -s test2 link2
sasha@sasha-linux:~/homework/2$ ln -s test4 link4
sasha@sasha-linux:~/homework/2$ mkdir links
sasha@sasha-linux:~/homework/2$ mv link2 links/
sasha@sasha-linux:~/homework/2$ mv link4 links/
sasha@sasha-linux:~/homework/2$ ls
file3  links  test2  test4
sasha@sasha-linux:~/homework/2$ tree
.

├── file3 -> file1

├── links

│   ├── link2 -> test2

│   └── link4 -> test4

├── test2

└── test4

1 directory, 5 files

sasha@sasha-linux:~/homework/2$ cd links
sasha@sasha-linux:~/homework/2/links$ ls -li

итого 0
918553 lrwxrwxrwx 1 sasha sasha 5 окт 19 22:39 link2 -> test2
918554 lrwxrwxrwx 1 sasha sasha 5 окт 19 22:39 link4 -> test4




