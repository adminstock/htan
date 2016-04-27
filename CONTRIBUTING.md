# Contributing to HTAN

Thanks for taking the time to contribute!

The following is a set of guidelines for contributing to **HTAN**.

## Code of Conduct

This project adheres to the [Contributor Covenant Code of Conduct](CODEOFCONDUCT.md).

## Found an Issue?

If you find a bug in the source code or a mistake in the documentation, 
you can help us by submitting an issue to our 
[GitHub Repository](https://github.com/adminstock/htan). 
Even better you can submit a **Pull Request** with a fix.

## Want a new Installer?

You can make your own installer and submit a **Pull Request**.

## Coding Rules

To ensure consistency throughout the source code and to work properly it is recommended to follow the rules:

- All installers must be documented;
- Use strict format for documentation of installers;
- Always include in the description of file, the following parameters:
  `HTAN_NAME`, `HTAN_CATEGORY` and `HTAN_OPTIONAL`;
- Use `gettext` for all text;
- Use two spaces for indentation.

### Headers format of Installers

```bash
#!/bin/bash

#======================================================================
# Performs installation and configuration of ...
#
# USAGE:
#   installer [--debug] [--version] [--help] [--nocolor] [--tested]
#
# PROJECT:
#   Hosting tools by Aleksey Nemiro (HTAN)
#
# REQUIREMENTS:
#   Debian 8, HTAN Tools
#
# AUTHOR:
#   Author name
#   URL
#   <email>
#
# VERSION:
#   Version number: Major.Minor.Changes.
#   For example: 1.0.0
#
# CREATED:
#   Date of creation (DD.MM.YYYY)
#
# REVISION:
#   Date of change (DD.MM.YYYY)
#
# COPYRIGHT:
#   © , 2016. All rights reserved.
#
# LICENSE:
#   Apache License Version 2.0
#   http://www.apache.org/licenses/LICENSE-2.0
#
# HTAN_NAME:
#   Display name
#
# HTAN_CATEGORY:
#   Category name
#
# HTAN_OPTIONAL:
#   true|false
#======================================================================

# installer code
```

### Categories

You can use any category names for your installers (`HTAN_CATEGORY`).

Below is a list of existing categories:

- Admin Panel
- Application Development
- Configuration
- Database
- FTP Server
- Mail Server
- Revision control
- Security
- Services
- SSH Server
- Tools
- Web server

### Tools

You can use ready-made helper functions to create own installer.

To do this, you must include to an installer common helper module.
This is best done at the beginning file immediately after headers.

```bash
# Including common (standard code)
if [[ -z "$HTAN_INCLUDED_TOOLS" ]]; then
  {
    if [[ "${0##*/}" != "installer name" ]]; then
      printf "Including the common …"
    fi
    if source "$(cd $(dirname $0) && pwd)/../tools/common"; then
      if [[ "${0##*/}" != "installer name" ]]; then
        OK
      fi
    fi
  } || {
    echo ""
    echo -e "\033[1;31m$(gettext "Failed to include the common.")\033[0m"
    exit 1
  }
fi
```

Use `IncludeTool` function to include additional modules:

```bash
# Including tools
IncludeTool package service config web

# examples:
# IncludeTool package
# IncludeTool config
# IncludeTool web config service
# etc
```