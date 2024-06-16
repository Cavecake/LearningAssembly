# LearningAssembly
 A repository to store some beginner code of assembly
## Requirements
There are no requirements, but this guide is targeted for the people who fulfill the following requirements.

Visual Stuido Code should be installed
WSL with an Ubuntu distribution using wsl version 2 should be installed

## Setting Up
For the installation we will need to install an assembler, we will use nasm.
Furthermore gcc and gdb will be installed.

### Installing gdb and gcc
To install these packages run
```
sudo apt update
sudo apt install gcc
sudo apt install gdb
```

### Installing NASM
First head over to (nasm.us)[https://www.nasm.us/] and download the nasm-x.xx.xx.tar.gz
You now need to unpack the file

Now switch to wsl (`wsl`)
Use `cd` and navigate you way to the unpacked file.

To install nasm run:
```
./configure
make
make install
```

If make is not installed run:
```
sudo apt install make
```

### Install support for architecture
To let your wsl support the architecture the code is designed for run the following commands
```
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libc6:i386 libncurses5:i386 libstdc++6:i386
```

### Setting Up VS-Code
Copy the launch.json and tasks.json from the file.
Install the vs-code extensions
`GDB Debug`, `WSL` and `x86 and x86_64 Assembly`

### Starting VS-Code in wsl
To correctly run the code you must run vs-code from wsl.
To do so switch to the wsl `wsl` and run `code` to start vs-code.

Everything should know be ready, to test your setup with the helloWorld.asm.
Just press F5