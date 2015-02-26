Demo suite 0
============

Some very simple puppet manifests.

demo0 - MOTD
------------

The "Hello, World" of Puppet. Manages /etc/motd with static content.

Run with:

```
puppet apply demo0.pp
```

demo1 - Apache
--------------

Introduces:
 * package and service resources
 * Requires keyword

Run with:

```
puppet apply demo1.pp
```

Will server a static html file over HTTP (port 80 from inside the VM, port 8880 from outside).

demo2 - Classes
---------------

Introduces:
 * Classes

Run with:
 
```
puppet apply demo2.pp
```
