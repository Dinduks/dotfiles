## Notes

### Lenovo Thinkpad X230
#### WiFi
Required driver/firmware: `aptitude install firmware-realtek`.

#### Brightness
Follow these steps: https://wiki.archlinux.org/index.php/Kernel_parameters#GRUB  
The parameter to add is: `acpi_osi=\\"!Windows 2012\\"`.  
Run `sudo upragde-grub` when done.

### Graphics
#### Auto start X at login
https://wiki.archlinux.org/index.php/Xinitrc#Autostart_X_at_login

### Audio
In order for audio to work, the user should be in the `pulse` group.

### Usage
#### Ask for the password after wake
Edit */etc/systemd/logind.conf* and set `HandleLidSwitch` to `ignore`.
