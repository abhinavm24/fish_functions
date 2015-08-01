function unsetprompt
    set FUNCTIONS  ~/.config/fish/functions
    set PROMPTS $FUNCTIONS/prompts
    
    cp $PROMPTS/default_prompt.fish $FUNCTIONS/fish_prompt.fish
end
