# HTAN

This is a set of scripts for the initial installation and configuration of **Debian** server for use as web hosting.

## Requirements

Server **Debian 8** without pre-installed software.

_**NOTE**: Working with pre-installed software in the current version of HTAN has not been tested._

## License

**HTAN** is licensed under the **Apache License Version 2.0**.

## Install and Using

```bash
# root access is required
su -l root

# update packages
apt-get update && apt-get upgrade

# prerequisites
apt-get install -y less libpcre3 subversion

# export htan to /usr/lib/htan
svn export https://github.com/adminstock/htan.git/trunk/ /usr/lib/htan

# set permissions
chmod u=rwx /usr/lib/htan/run

# run
/usr/lib/htan/run
```

## Components

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
