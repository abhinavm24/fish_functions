function pipfreeze
 pipdeptree -f --warn silence | grep -P '^[\w0-9\-=.]+' | grep -oP '^[\w0-9\-.]+[^=]'
end
