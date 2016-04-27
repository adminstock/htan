# HTAN

**HTAN** - это набор скриптов для развертывания веб-хостинга на базе **Debian**.

## Системные требования

Сервер **Debian 8** без предустановленного ПО (minimal).

## Лицензия

Исходный код **HTAN** предоставляется на условиях лицензии **Apache License Version 2.0**.

## Установка и использование

```bash
# требуются права root
su -l root

# обновление сервера
apt-get update && apt-get upgrade

# установка необходимых компонентов
apt-get install -y less libpcre3 subversion

# загрузка htan
svn export https://github.com/adminstock/htan.git/trunk/ /usr/lib/htan

# установка необходимых разрешений
chmod u=rwx /usr/lib/htan/run

# запуск htan
/usr/lib/htan/run --lang=ru
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

_**NOTE:** **Nginx** will forward requests to **Apache**._

### FTP Server
- Very Secure FTP Daemon (vsftpd)

### Revision control
- Subversion

### Application Development
- PHP5
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
