# Nanorc

Custom nanorc configuration files for that pretty syntax highlighting in Nano.<br>

These files were gathered from various sources across the Internet.<br>
Some were later modified to my own liking, some rewritten entirely from scratch.
<br>

---
## Core Principles
* **16 standard color names**: potentially compatible with any terminal color scheme.
* **Green theme focus**: optimized for the "Green on Black" profile that I use most.
* **No "fruit salad" effect**: kept minimal to only highlight what is necessary.
* **Easy to customize**: clearly structured to toggle features on/off via comments.

## Installation
* For **global Nano theme** run:<br>
`sudo cp distro/distro.nanorc /etc/nanorc`<br>
* For **language syntax highlighting** run:<br>
`sudo mkdir -p /usr/share/nano/extra`<br>
`sudo cp extra/language.nanorc /usr/share/nano/extra`<br>
* If **nano-syntax-highlighting** package is installed (Arch and derivatives),<br>
make sure **extra** is included *after* it in **etc/nanorc** to override it:<br>
`include "/usr/share/nano-syntax-highlighting/*.nanorc"`<br>
`include "/usr/share/nano/extra/*.nanorc"`<br>
Otherwise, comment out the corresponding line.
