### Shell configuration and other customizations for my LinuxMint 17.1 env.


#### Based on Paul Mooring's https://github.com/paulmooring/bashrc

Different aspects of shell configuration are separated into respective '.sh`' files, grouped
into '.bashrc.d`' folder. This approach increases readability and maintainability.
Each configuration file is loaded(sourced) in the '`~/.bashrc`', using a row list of filenames
in order to preserve the order of loading.

Some custom commands (written in Bash/Perl) are also included in this repo,
placed under the '`~/bin/`' folder.
