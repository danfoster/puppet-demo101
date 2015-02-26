# Puppet 101 - From Zero to Hero.

A set of simple puppet examples to introduce new users to puppet.

## Demos included

1. The file resource.
2. The package and service resource.
3. Using the puppetmaster and agent.
4. Introducing classes.
5. Introducting modules.
6. Introducing files.
7. Introducing templates and variables
8. Introducing facter and custom facts.

## Using

These demos uses [Vagrant](https://www.vagrantup.com/) to spin up 2 VMs, client and server. Demos one and 2 only use the client VM.


Use `vagrant ssh client` and `vagrant ssh server` to connect to each one.

The script `demo` followed by a 2 digit number switches puppet manifests and modules to the correct demo. e.g.:

```
$ demo 05
Switching to: 05-modules
```
