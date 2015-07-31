function process_partner_perfreport
   # start the virtualenv
   source $WORKON_HOME/adweb/bin/activate.fish
  
   set --global --export SH_ROOT ''
   set --global --export SH_ENV ''
   set --global --export DJANGO_SETTINGS_MODULE ads.settings

   # assumes ADWEB_PATH already set
   set --global --export PYTHONPATH $ADWEB_PATH/configs:$ADWEB_PATH/code

   cd $ADWEB_PATH
   python code/ads/partner/scripts/process_partner_performance.py $argv
end