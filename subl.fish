# SYNOPSIS
#   subl [options] [file ...]        edit the given files
#   subl [options] [directory ...]   open the given directories
#   subl [options]                   edit stdin
#

function subl -d "Open Sublime Text"
  if begin; which subl > /dev/null; and test -x (which subl); end
    command subl $argv
  else if test -d "/Applications/Sublime Text.app"
    "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "/Applications/Sublime Text 2.app"
    "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "/Applications/Sublime Text 3.app"
    "/Applications/Sublime Text 3.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "$HOME/Applications/Sublime Text.app"
    eval "$HOME/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "$HOME/Applications/Sublime Text 2.app"
    eval "$HOME/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl" $argv
  else if test -d "$HOME/Applications/Sublime Text 3.app"
    eval "$HOME/Applications/Sublime\ Text\ 3.app/Contents/SharedSupport/bin/subl" $argv
  else if test -x "/opt/sublime_text/sublime_text"
    "/opt/sublime_text/sublime_text" $argv
  else if test -x "/opt/sublime_text_3/sublime_text"
    "/opt/sublime_text_3/sublime_text" $argv
  else
    echo "No Sublime Text installation found" >&2
    return 1
  end
end
