function fish_prompt
  set_color yellow
  date "+%m/%d/%y"
  set_color FF0
  echo (pwd) '>'
  set_color normal
end
