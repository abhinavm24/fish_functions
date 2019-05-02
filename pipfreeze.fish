function pipfreeze
 pipdeptree --freeze --warn silence | grep --only-matching --perl-regexp '^[\w\-]+' | grep --invert-match '\-e\|pkg-resources\|pipdeptree\|pip-tools'
end
