# 
# Functions for fish shell
#  - fish does not have aliases, so use functions.
#

functions gst --description 'git status'
  git status --ignore-submodules
end

