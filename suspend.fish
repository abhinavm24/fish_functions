function suspend
  sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target
  sudo systemctl suspend
end