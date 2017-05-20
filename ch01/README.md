# Chapter 01

## Intro

We begin with diving into Reverse Engineering topics. 
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

A VM in OVA format is supplied. It will be available in some time as a Vagrant configuration.

## Tools of trade

* Unix cmd utilities: file, readelf, objdump, strings, strip
* Radare2

## What to read

A little knowledge of "What is a computer?" would help. For example if you go through
https://en.wikipedia.org/wiki/X86 would make my effort explaining basic assembly easier.
You need to know that PC has a processor with x86 architecture.

## Agenda

1. What is Reverse Engineering (RE)
1. What the skill set can be used for
1. x86 introduction
1. Tools - Radare2 fast walk-through
1. Demo and excercises

## References

### Reading

* https://radare.org/r/
* https://en.wikipedia.org/wiki/X86
* https://github.com/corkami/pics/blob/master/binary/elf101/elf101.pdf
