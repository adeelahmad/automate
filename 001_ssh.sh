sed -i 's,^\(PasswordAuthentication \).*,\1'yes',' /etc/ssh/sshd_config
/etc/init.d/ssh restart

bash -c "cat > ~/.ssh/config" <<'EOF'
Host * 
Protocol 2 
TCPKeepAlive yes 
ServerAliveInterval 60
EOF


