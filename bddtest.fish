function bddtest
  pytest --exitfirst --failed-first --color yes --gherkin-terminal-reporter --looponfail $argv
end
