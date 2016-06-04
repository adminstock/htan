# HTAN

This is a set of scripts for the initial installation and configuration of **Debian** or **Ubuntu** server for use as web hosting.

## Requirements

Server **Debian 7** or **Debian 8** without pre-installed software

or

**Ubuntu Server 16**

with Internet access.

_**NOTE**: Working with pre-installed software in the current version of HTAN has not been tested._

Minimum RAM **256 MB**.

Recommended RAM **1 GB** or more.

Minimum amount of free space on HDD: **4 GB**.

## License

**HTAN** is licensed under the **Apache License Version 2.0**.

## Install and Using

### Debian

```bash
# root access is required
su -l root

# update packages
apt-get update && apt-get upgrade

# prerequisites
apt-get install -y less libpcre3 git

# clone htan to /usr/lib/htan
git clone https://github.com/adminstock/htan.git /usr/lib/htan

# create symbolic links to htan
[[ -f /sbin/htan ]] || ln -s /usr/lib/htan/run /sbin/htan
[[ -f /usr/sbin/htan ]] || ln -s /usr/lib/htan/run /usr/sbin/htan

# set permissions
chmod u=rwx /usr/lib/htan/run

# run
htan
```

### Ubuntu Server

```bash
# update packages
sudo apt-get update && sudo apt-get upgrade

# prerequisites
sudo apt-get install -y less libpcre3 git

# clone htan to /usr/lib/htan
sudo git clone https://github.com/adminstock/htan.git /usr/lib/htan

# create symbolic links to htan
[[ -f /sbin/htan ]] || sudo ln -s /usr/lib/htan/run /sbin/htan
[[ -f /usr/sbin/htan ]] || sudo ln -s /usr/lib/htan/run /usr/sbin/htan

# set permissions
sudo chmod u=rwx /usr/lib/htan/run

# run
sudo htan
```

## Updating

To update, run the following command:

```
cd /usr/lib/htan/
sudo git fetch origin && \
sudo git reset --hard origin/master && \
chmod u=rwx /usr/lib/htan/run
```

or remove and reinstall:

```
sudo rm -r /usr/lib/htan/
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
- PHP7 (v7.0.6 from source code)
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
