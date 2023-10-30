####################################################### Разбор ДЗ
# 1 Подключить репозиторий с nginx любым удобным способом, установить nginx и потом удалить nginx, используя утилиту dpkg.
sudo apt update

// добавляем ключ
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C

// дописываем строку с репозиторием в файлик sources.list
sudo echo "deb  http://ppa.launchpad.net/nginx/stable/ubuntu lucid main" >> /etc/apt/sources.list

// обновляем список репозиториев
sudo apt update

sudo su

apt-add-repository 'deb http://ppa.launchpad.net/nginx/stable/ubuntu lucid main'

# 2-й вариант
sudo echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu lucid main" >> /etc/apt/sources.list
exit

sudo apt update
# должно стать 4 репозитория


// устанавливаем веб-севрер Nginx
sudo apt install -y nginx

// проверим
dpkg -l nginx

// удаляем Nginx
sudo apt remove -y nginx
sudo dpkg -r nginx

// проверим
dpkg -l nginx


# 2 Установить пакет на свой выбор, используя snap.
snap list

// ищем пакет
snap search postman

// устанавливаем
sudo snap install postman

// устанавливаем
snap list

// запускаем установленное ПО
postman


# 3 Создать с помощью nano файл test.txt. Настроить автоматический бэкап этого файла раз в 10 минут в файл с названием test.txt.bak с использованием cron.
# создадим файл
nano test.txt

# добавим правило для планировщика задач cron
crontab –e

# вариант решения утилитой cat
*/10  * * * * cat /home/student/test.txt > /home/student/test.txt.bak
# вариант решения утилитой cp (копирование файла)
*/10  * * * * cp –b /path/to/file/test.txt /path/to/file/test.txt.bak
