function wifireset
  nmcli network off
  nmcli network on
  sudo dhclient
end
