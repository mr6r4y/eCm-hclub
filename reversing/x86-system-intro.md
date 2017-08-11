# x86 System Level Internals

---

## In the beginning there was only Real Mode

* The MS-DOS era
* Only one process is running
* Registers are 16 bit in size

---

## Do you remember:

* `cs`: code segment register
* `ss`: stack segment register
* `ds`: data segment register
* `es`,`fs`,`gs`: extra segment registers 
## well in Real Mode they are actually used :)

---

## More on Real Mode

### Memory segmentation

```
                   .------.
                   | MEM  |
                   |      |
                   | ...  |
                   |      |
                   |------|
.----. .----.      |      |
| cs |:| ip |----->|=OFFS=|
'----' '----'      |      |
   |               | 64KB |
   '-------------->|------|
                   |      |
                   |      |
                   | ...  |
                   |      |
                   |      |
                   '------'
```

---

## Later on Intel introduced Protected Mode:

* Multiple processes at the same time
* Privilage levels (Rings)
* 32 bit registers
* More advanced memory management

---

## Things became more complex:

* `CR0`: system control flags
* Privilage level instructions
* Privilage level registers: `LDTR`, `GDTR`, `CR0`, etc...
* Memory paging
* User and Kernel space

---

## Now the OS can isolate processes in their own sandbox:

* Processes see flat memory
* Processes make system calls by `int 0x80`, `syscall`, `sysenter`, etc.

---

## What happens when PowerOn is pressed

```
.------------------------.
|    CPU - Real-mode     |
'------------------------'
             |
             v
.------------------------.
|       BIOS/UEFI        |
'------------------------'
             |
             v
.------------------------.
|       Bootloader       |
'------------------------'
             |
             v
.------------------------.
|         Kernel         |
'------------------------'
             |
             v
.------------------------.
|      Init process      |
'------------------------'
```

---

## What happens when PowerOn is pressed ..

1. CPU starts in Real Mode and executes first instruction at `0xfffffff0` (Firmware at ROM)
2. BIOS searches for devices with MBR (master boot record)
3. The bootloader puts Real Mode kernel part in the 1MB accessible memory
4. The Kernel then:
	* Sets Protected Mode
	* Initialises Paging
	* Takes control in Ring0 priv level