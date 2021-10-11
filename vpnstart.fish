function vpnstart
  protonvpn-cli killswitch --off
  protonvpn-cli connect --fastest
  protonvpn-cli killswitch --on
  protonvpn-cli connect --fastest
end
