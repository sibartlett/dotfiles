dotfiles
========

Ansible powered dotfiles inspired by:

* [sloria's dotfiles](https://github.com/sloria/dotfiles)
* [caarlos0's machine](https://github.com/caarlos0/machine)

Fully supports MacOSX. Red Hat and Debian support is good but not as complete.

a few neat features
-------------------

- zsh configured with [antibody](https://github.com/getantibody/antibody).
- pluggable. Everything is optional. Fork this. Remove what you don't use. Configure what you do use.
- Mac packages installed with [homebrew][]. Mac apps installed with [homebrew-cask][].

prerequisites (skip if using macOS)
-----------------------------------

- ansible >= 1.6
- git


install
-------

- [Fork](https://github.com/sloria/dotfiles/fork) this repo.
- Clone your fork.

```bash
# Replace git url with your fork
# NOTE: It is important that you clone to ~/dotfiles
$ git clone https://github.com/YOU/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
```

- Update the following variables in `host_vars/localhost` (at a minimum)
    - `git_name`: Your name, which will be attached to commit messages, e.g. "Steven Loria"
    - `git_email`: Your git email address.
- Optional, but recommended: Update `group_vars/local` with the programs you want installed by [homebrew][], [homebrew-cask][], and npm.
    - `osx_homebrew_packages`:  Utilities that don't get installed by the roles.
    - `osx_cask_packages`: Mac Apps you want installed with [homebrew-cask][].
- Edit `main.yml` as you see fit. Remove any roles you don't use. Edit roles that you do use.
- Run the installation script.

```bash
$ ./setup
```

updating
--------

Once you have the dotfiles installed you can run the following command to rerun the ansible playbook:

```bash
$ dot
```

special files
-------------

All configuration is done in `~/dotfiles`. Each role may contain (in addition to the typical ansible directories and files) a number of special files

- **role/\*.zsh**: Any files ending in `.zsh` get loaded into your environment.
- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.

[homebrew]: http://brew.sh/
[homebrew-cask]: https://github.com/caskroom/homebrew-cask


license
-------

[MIT Licensed](http://sloria.mit-license.org/).
