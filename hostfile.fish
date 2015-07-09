function hostfile
   set SOURCE $argv[1]
   set TARGET /etc/hosts
   set SOURCE_PATH ~/.hostfiles
   set COMMAND hostfile
   set CLEAN clean
   set DEVELOPMENT dev
   set INTEGRATION integration
   set STAGING staging

   if test -f $SOURCE_PATH/$SOURCE
       if test $SOURCE = dev
          cp $TARGET $SOURCE_PATH/staging
       else
	   cp $TARGET $SOURCE_PATH/dev
       end
       sudo cp $SOURCE_PATH/$SOURCE $TARGET
   else if test $SOURCE = help
       echo "Usage: hostfile <$CLEAN|$DEVELOPMENT|$INTEGRATION|$STAGING>"
   else
       echo "Unknown Option: '$SOURCE'"
       echo "Try: `$COMMAND help`"
   end
end
