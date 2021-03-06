# Shiny on Vagrant for childes

## Installation

I resized the main partition way up to 50 GB in order not to run out of space. It is possible
we don't need anywhere near this amount of space, in which case we can change the setting in the
`Vagrantfile`.

Only 2.6 GB is used after installation of Ubuntu and R packages.
To start:

```
$ vagrant plugin install vagrant-disksize
$ vagrant up
```

After reboot, run

```
$ vagrant up
```

The Shiny server will then be accessible at port 8080.

## Updating the VM

```
$ git pull
$ vagrant reload
$ vagrant provision
```

## If there are problems

```
$ vagrant destroy
$ vagrant up
```

Check the files in /var/logs/shiny-server/

