# Chapter 01

## Intro

As discussed we begin with diving into Reverse Engineering topics. 
In the vast variety of computer architectures, operating systems, 
execution file formats and different protection mechanisms I choose 
to start up with very simple CrackMes under Linux OS. 
The tools and infrastructure we start are not common for beginning in RE (Reverse Engineering) - usually 
newby tutorials start with Olly under Winoows XP and date from 2001. If you don't know what Olly is
be patient everything will be clear soon.

## Why Linux

Linux is popular and although there are not many tutorials for RE,
very decent tools got velocity for this environment. You would not believe it, but
reversing under Linux is actually simpler than on Windows. Linux is a way simpler under
the hood than the most popular OS and the concepts can be shown in a clear way.

After getting familiar with ELF (execution file format for Unix like OSs) and the 
execution flow under Unix you will be able to apply your knowledge from tinkering IoT 
devices to analyzing Android native applications.

## Infrastructure

### Windows Host

If your machine is running Windows the steps are:

1. Install VirtualBox
1. Install Ubuntu 16.04 TLS (Xubuntu if you like a lightweight graphical environment more) on a VM
1. Install Ansible
1. Install Git
1. Clone Ansible playbooks for building RE environment - https://github.com/mr6r4y/ansible-infra
1. Run playbook **build-re.yml**
1. Clone Radare2 help scripts - https://github.com/mr6r4y/re-misc

for details go to [Infrastructure](../infrastructure.md)

### Linux Host

If you are on Ubuntu like system you can follow the steps for Windows Host without the first two.

## Tools of trade

* Unix cmd utilities: file, readelf, objdump, strings, strip
* Radare2

## References

* https://www.virtualbox.org/
* https://xubuntu.org/getxubuntu/
* https://www.ubuntu.com/download/desktop
* https://github.com/radare/radare2
* https://github.com/mr6r4y/ansible-infra
* https://github.com/mr6r4y/re-misc