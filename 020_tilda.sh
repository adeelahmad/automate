
apt-get -y remove --purge guake
kill -9 `ps aux | grep -v grep | grep guake | awk {'print $2'}`
#kill -HUP `ps aux |grep -v grep |grep /usr/bin/guake |awk {'print $2'}`

apt-get -y install tilda

mkdir -p ~/.config/autostart
cat > ~/.config/autostart/tilda.desktop <<'EOF'
[Desktop Entry]
Encoding=UTF-8
Version=1.1.12-1
Type=Application
Name=Tilda
Comment=Dropdown terminal
Exec=/usr/bin/tilda
OnlyShowIn=XFCE;
StartupNotify=false
Terminal=false
Hidden=false
EOF

# add default tilda settings because they are not created till first run
mkdir -p ~/.config/tilda
touch ~/.config/tilda/config_0

cat <<'EOF' >> ~/.config/tilda/config_0
tilda_config_version = "1.1.11"
# image = ""
# command = ""
font = "DejaVu Sans Mono 9"
key = "<Super>F1"
addtab_key = "<Shift><Control>t"
fullscreen_key = "F11"
closetab_key = "<Shift><Control>w"
nexttab_key = "<Control>Page_Down"
prevtab_key = "<Control>Page_Up"
movetableft_key = "<Shift><Control>Page_Up"
movetabright_key = "<Shift><Control>Page_Down"
gototab_1_key = "<Alt>1"
gototab_2_key = "<Alt>2"
gototab_3_key = "<Alt>3"
gototab_4_key = "<Alt>4"
gototab_5_key = "<Alt>5"
gototab_6_key = "<Alt>6"
gototab_7_key = "<Alt>7"
gototab_8_key = "<Alt>8"
gototab_9_key = "<Alt>9"
gototab_10_key = "<Alt>0"
copy_key = "<Shift><Control>c"
paste_key = "<Shift><Control>v"
quit_key = "<Shift><Control>q"
title = "Tilda"
background_color = "white"
# working_dir = ""
web_browser = "x-www-browser"
word_chars = "-A-Za-z0-9,./?%&#:_"
lines = 1000
max_width = 1920
max_height = 420
min_width = 1
min_height = 1
transparency = 25
x_pos = 0
y_pos = 0
tab_pos = 0
backspace_key = 0
delete_key = 1
d_set_title = 3
command_exit = 2
scheme = 3
slide_sleep_usec = 20000
animation_orientation = 0
timer_resolution = 200
auto_hide_time = 200
on_last_terminal_exit = 0
palette_scheme = 1
show_on_monitor_number = 0
palette = {11822, 13364, 13878, 52428, 0, 0, 20046, 39578, 1542, 50372, 41120, 0, 13364, 25957, 42148, 30069, 20560, 31611, 1542, 38944, 39578, 54227, 55255, 53199, 21845, 22359, 21331, 61423, 10537, 10537, 35466, 58082, 13364, 64764, 59881, 20303, 29298, 40863, 53199, 44461, 32639, 43176, 13364, 58082, 58082, 61166, 61166, 60652}
scrollbar_pos = 1
back_red = 0
back_green = 0
back_blue = 0
text_red = 65535
text_green = 65535
text_blue = 65535
scroll_background = true
scroll_on_output = false
notebook_border = false
antialias = true
scrollbar = false
use_image = false
grab_focus = true
above = true
notaskbar = true
bold = true
blinks = true
scroll_on_key = true
bell = false
run_command = false
pinned = true
animation = true
hidden = true
centered_horizontally = true
centered_vertically = false
enable_transparency = true
double_buffer = false
auto_hide_on_focus_lost = false
auto_hide_on_mouse_leave = false
EOF

