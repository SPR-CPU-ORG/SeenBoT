 #!/bin/bash 
while true ; do 
  for entr in S-* ; do 
    entry="${entr/}" 
    tmux kill-session -t $entry 
     rm -rf ~/.telegram-cli/$entry/data/animation/* 
     rm -rf ~/.telegram-cli/$entry/data/audio/* 
     rm -rf ~/.telegram-cli/$entry/data/document/* 
     rm -rf ~/.telegram-cli/$entry/data/photo/* 
     rm -rf ~/.telegram-cli/$entry/data/sticker/* 
     rm -rf ~/.telegram-cli/$entry/data/temp/* 
     rm -rf ~/.telegram-cli/$entry/data/video/* 
     rm -rf ~/.telegram-cli/$entry/data/voice/* 
     rm -rf ~/.telegram-cli/$entry/data/profile_photo/* 
     tmux new-session -d -s $entry "./$entr" 
     tmux detach -s $entry 
   done 
   echo -e "All Bots Runned it Tmux Mode ;)" 
   sleep 1800 
 done 
