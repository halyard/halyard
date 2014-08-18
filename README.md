boxen
==========

My personal boxen configurations

## Using

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone <location of my new git repository> /opt/boxen/repo
cd /opt/boxen/repo
./script/boxen
```

It should run successfully, and should tell you to source a shell script
in your environment.
For users without a bash or zsh config or a `~/.profile` file,
Boxen will create a shim for you that will work correctly.
If you do have a `~/.bashrc` or `~/.zshrc`, your shell will not use
`~/.profile` so you'll need to add a line like so at _the end of your config_:

``` sh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
```

Once your shell is ready, open a new tab/window in your Terminal
and you should be able to successfully run `boxen --env`.
If that runs cleanly, you're in good shape.

## What You Get

This configuration provides the following:

* Homebrew
* Git
* rbenv
* Ruby 1.9.3
* Ruby 2.0.0
* Ruby 2.1.0
* Ruby 2.1.1
* ack
* Findutils
* GNU tar

## Customizing

### Creating a personal module

See [the documentation in the
`modules/people`](modules/people/README.md)
directory for creating per-user modules that don't need to be applied
globally to everyone.

### Creating a project module

See [the documentation in the
`modules/projects`](modules/projects/README.md)
directory for creating organization projects (i.e., repositories that people
will be working in).
