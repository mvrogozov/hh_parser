![PEP8](https://img.shields.io/badge/code%20style-pep8-orange.svg)](https://www.python.org/dev/peps/pep-0008/)
# hh_parser
***
##### Парсинг сайта hh. Парсер запускается в Telegram боте.
***
## Возможности.

* Парсинг сайта hh.ru для поиска вакансий.
* Управление парсером через Telegram бота
* Сохранение результата в CSV файл.
***

## Установка.
***
* Клонировать репозиторий ```https://github.com/mvrogozov/hh_parser``` и перейти в него в командной строке.

```
git clone git@github.com:mvrogozov/hh_parser.git
```
```
cd hh_parser
```

* Cоздать и активировать виртуальное окружение:

```
python3 -m venv env
```

```
source env/bin/activate
```

* Установить зависимости из файла requirements.txt:

```
python3 -m pip install --upgrade pip
```
```
pip install -r requirements/requirements.txt
```
* Создать файл ```.env```.
* Сохранить в нём строку ```TG_TOKEN = 'xxx:aaa'```, где ```xxx:aaa``` - Ваш токен для Вашего телеграм бота.

* Запустить проект:
```
python3 job_parser.py
```
### Возможен запуск в контейнере Docker

1. На сервер скопировать папку ```job_parser```.
2. В файле ```Dockerfile``` в строке ```ENV TG_TOKEN=xxxxxxxxxx``` 
заменить символы 'xxxxxxxxxx' на токен для Вашего телеграм бота.
3. Собрать образ:
```sudo docker build .```
4. Запустить собранный образ:
```sudo docker run #containernumber``` , где '#containernumber' - номер собранного контейнера.
5. В Telegram отправить сообщение ```/help``` для справки по командам бота.
***
Переменные окружения, необходимые для запуска:

* TG_TOKEN - токен телеграм бота

***
Автор:
* Рогозов Михаил

