function setprompt
    set FUNCTIONS  ~/.config/fish/functions
    set PROMPTS $FUNCTIONS/prompts

    cp $PROMPTS/git_prompt.fish $FUNCTIONS/fish_prompt.fish
end
