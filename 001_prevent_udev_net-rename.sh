# prevent renaming of network interfaces by udev
ln -s /dev/null /etc/udev/rules.d/80-net-setup-link.rules

## Add this to the /etc/default/grub GRUB_CMDLINE_LINUX_DEFAULT
sed -i 's,^\(GRUB_CMDLINE_LINUX=\).*,\1'\"net.ifnames=0\"',' /etc/default/grub


