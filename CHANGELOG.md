# Change Log

All notable changes to HTAN will be documented in this file.

## [1.0.101] - unreleased

Version contains significant changes and improvements.

For developers of installers, note the change in the method `PackageExists`:

* `PackageExists` replaced to `PackageInstalled`;
* `PackageExists` - now is new method.

### Added
- Ubuntu support;
- PHP7 installer from source code;
- PHP7 installer for Debian (when the official package will be presented);
- PHP installer for Ubuntu;
- Smart installer for PHP;
- Tools for PHP (*/tools/php*);
- System parameters: `--confirmed` (`--yes`, `--y`), `--noheader`, `--noincmsg`;
- Removing CD-ROM entry from the *sources.list*;
- Argument `--nodefault` to `ParseArgs` (*/tools/common*)

### Changed
- `PackageExists` -> `PackageInstalled` (*/tools/package*);
- `PackageExists` - now used for checking packages in the index;
- `PackageVersion` - only number after the colon (for example: 1:7.0 -> 7.0);
- SSA installer - adapted to PHP7;
- Apache2 is optional;
- SVN installer;
- Execution only for root user;
- New logic in `ServiceStop` and `ServiceIsRunning` (*/tools/service*).

### Fixed
- Fixes vsftpd installer to official packages;
- Server IP detector;
- fail2ban configuration (issue #3);
- Fixed blocking access to SSH in SSA installer;
- Fixed localization errors;
- Self-scripting of */tools/service*.

## [1.0.55] - 2016-04-27
First public release.