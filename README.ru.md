# HTAN

**HTAN** - это набор скриптов для развертывания и настройки веб-хостинга на базе **Debian** или **Ubuntu Server**.

## Системные требования

Сервер **Debian 7** или **Debian 8** без предустановленного ПО (minimal),

или

**Ubuntu Server 16**

с доступом к Интернет.

Минимальный объем ОЗУ **256 Мб**.

Для установки некоторых компонентов из исходного кода может потребоваться не менее **1 Гб** оперативной памяти.

Минимальный объем свободного пространства на жестком диске: **4 Гб**.

## Лицензия

Исходный код **HTAN** предоставляется на условиях лицензии **Apache License Version 2.0**.

## Установка и использование

### Debian

```bash
# требуются права root
su -l root

# обновление сервера
apt-get update && apt-get upgrade

# установка необходимых компонентов
apt-get install -y less libpcre3 git

# получение htan в папку /usr/lib/htan
git clone https://github.com/adminstock/htan.git /usr/lib/htan

# создание символьных ссылок на htan (для быстрого запуска)
[[ -f /sbin/htan ]] || ln -s /usr/lib/htan/run /sbin/htan
[[ -f /usr/sbin/htan ]] || ln -s /usr/lib/htan/run /usr/sbin/htan

# установка необходимых разрешений
chmod u=rwx /usr/lib/htan/run

# запуск htan
htan --lang=ru
```

### Ubuntu Server

```bash
# обновление сервера
sudo apt-get update && sudo apt-get upgrade

# установка необходимых компонентов
sudo apt-get install -y less libpcre3 git

# получение htan в папку /usr/lib/htan
sudo git clone https://github.com/adminstock/htan.git /usr/lib/htan

# создание символьных ссылок на htan (для быстрого запуска)
[[ -f /sbin/htan ]] || sudo ln -s /usr/lib/htan/run /sbin/htan
[[ -f /usr/sbin/htan ]] || sudo ln -s /usr/lib/htan/run /usr/sbin/htan

# установка необходимых разрешений
sudo chmod u=rwx /usr/lib/htan/run

# запуск htan
sudo htan --lang=ru
```

## Обновление до новой версии

Для получения обновлений **HTAN** выполните следующую команду:

```
# переход в папку htan
cd /usr/lib/htan/
# получение обновлений
sudo git fetch origin && \
sudo git reset --hard origin/master
# установка разрешений
sudo chmod u=rwx /usr/lib/htan/run
```

либо удалите **HTAN** и выполните установку заново:

```
# удаление
sudo rm -r /usr/lib/htan/
```

## Компоненты

На сервер могут быть установлены следующие компоненты:

### SSH Server
- Secure SHell (openssh)

### Mail Server
- Postfix - mail transfer agent (MTA)

### Web server
- Apache2
- Nginx

_**ПРИМЕЧАНИЕ:** **Apache** на заднем плане, получает запросы от **Nginx**._

### FTP Server
- Very Secure FTP Daemon (vsftpd)

### Revision control
- Subversion

### Application Development
- PHP5
- PHP7 (v7.0.6 из исходного кода)
- Mono ASP.NET

### Database
- MySql
- PostgreSql

### Admin Panel
- SmallServerAdmin - web panel to manage server
- phpMyAdmin
- phpPgAdmin

### Tools
- HTAN.Runner - fastcgi-mono-server daemon
- Etckeeper - monitor changes to /etc with git
- Midnight Commander (mc)
- Nmap - security&port scanner, network exploration tool
- SYSSTAT

### Services
- eXtended InterNET Daemon (xinetd)
- NTP - network time protocol

### Security
- Sudo - substitute user and do
- Fail2Ban
- IPTables

### Configuration
- adduser
- rcS - control the behaviour of scripts startup
