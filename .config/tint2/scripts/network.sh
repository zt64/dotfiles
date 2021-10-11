name=$(nmcli -t -f NAME c show --active)
if [ "$name" = "" ]; then
  echo ""
else
  echo "  $name"
fi