# a menu driven system information program

clear
cat << EOF
Please Select:

  1. Display System Information
  2. Display Disk Space
  3. Display Home Space Utilization
  0. Quit
EOF

echo -n 'Enter your choice [0-3]: '
read choice

case $choice in
  0) echo "Goodbye";

