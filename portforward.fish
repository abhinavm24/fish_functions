function portforward -d "forwards remote port over ssh"
    if test -n "$REMOTE_PORT"
       set OTHER_PORT $REMOTE_PORT
    else
        set OTHER_PORT 8888
    end

    if test -n "$LOCAL_PORT"
       set NEW_PORT $LOCAL_PORT
    else
        set NEW_PORT 7777
    end

    if test -n "$REMOTE_HOST"
       set OTHER_HOST $REMOTE_HOST
    else
        set OTHER_HOST "CharonEther"
    end
    
    echo "Forwarding Port"
    set COMMAND_STRING "ssh -L $NEW_PORT:localhost:$OTHER_PORT $OTHER_HOST -N &"
    echo $COMMAND_STRING
    eval $COMMAND_STRING
end
