# Infrastructure building guide

## Introduction

Maintaining an updated environment with all the needed tools can be cumbersome.
This guide describes main topics for that.

## Steps for creating basic Linux VM with RE tools installed

1. Install VirtualBox
1. Install Ubuntu 16.04 TLS (Xubuntu if you like a lightweight graphical environment more) on a VM
1. Install Ansible
1. Install Git
1. Clone Ansible playbooks for building RE environment - https://github.com/mr6r4y/ansible-infra
1. Run playbook `build-re.yml`
1. Clone Radare2 help scripts - https://github.com/mr6r4y/re-misc
1. Edit your user's `.profile` to include cloned `re-misc` folder - `PATH="$HOME/srcs/my-github/re-misc:$PATH"`
1. Clone my write-ups - https://github.com/mr6r4y/re-write-ups
1. Clone sample snippets - https://github.com/mr6r4y/re-test
1. Clone **eCm-hclub** - https://github.com/mr6r4y/eCm-hclub

## VirtualBox

## Ansible

### Configuring **host_vars/local**

## References

URL | Description
----|-------------
https://www.virtualbox.org/ | Oracle's free VM tool
https://xubuntu.org/getxubuntu/ | Like Ubuntu but with Xfce graphical environment (cause I don't like Unity)
https://www.ubuntu.com/download/desktop | Ubuntu Desktop
https://github.com/radare/radare2 | Official site of the main tool we are going to use and get familiar with
https://github.com/mr6r4y/ansible-infra | Aims to automate the creation of any environment we use during hacking sessions
https://github.com/mr6r4y/re-misc | Scripts that I use/write on top of Radare2
https://github.com/mr6r4y/re-test | Snippets of code in C, C++ or any kind of obscure language or execution environment. The aim of this repo is to collect samples to study
https://github.com/mr6r4y/re-write-ups | My efforts and work on reversing/breaking stuff with documentation included. We are going to use this for examples
https://github.com/mr6r4y/eCm-hclub | The main repo that documents and contains everything we do in the Hacking Club
