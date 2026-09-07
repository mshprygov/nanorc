# Nanorc

### Custom nanorc files for pretty nano syntax highlighting

These files were found all around the Internet,<br>
on GitHub or in Linux distributions that I used,<br>
and later modified to my own liking.
<br>

---
<br>

For **distro.nanorc** files do:<br>
`sudo cp distro/distro.nanorc /etc/nanorc`<br>
<br>

For **language.nanorc** files do:<br>
`sudo mkdir -p /usr/share/nano/extra`<br>
`sudo cp extra/language.nanorc /usr/share/nano/extra`<br>
<br>

If **nano-syntax-highlighting** package is installed (Arch and derivatives),<br>
make sure **extra** is included *after* it in **etc/nanorc** to overwrite it:<br>
`include "/usr/share/nano-syntax-highlighting/*.nanorc"`<br>
`include "/usr/share/nano/extra/*.nanorc"`<br>
Otherwise comment out the corresponding line.
