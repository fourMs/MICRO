function [segments] = segments(songorder,participant)


start = zeros(size(13,1));
segments(1) = mctrim(participant,0,30);
start(1) = 0;
start(2) = 30;
song = 1;

while song <= length(songorder) 
    for inicio = 2:2:12
    
   if songorder(song) == 1
       segments(inicio)=mctrim(participant,start(inicio),start(inicio)+49); %song1, 49s
       segments(inicio+1)=mctrim(participant,start(inicio)+49,start(inicio)+49+30); %silence
       start(inicio+2) = start(inicio)+49+30;
       song = song+1;
  
  
   elseif songorder(song) == 2
       segments(inicio)=mctrim(participant,start(inicio),start(inicio)+48); %song2, 48s
       segments(inicio+1)=mctrim(participant,start(inicio)+48,start(inicio)+48+30); %silence
       start(inicio+2) = start(inicio)+48+30;
       song = song+1;
        
   elseif songorder(song) == 3
       segments(inicio)=mctrim(participant,start(inicio),start(inicio)+47); %song3, 47s
       segments(inicio+1)=mctrim(participant,start(inicio)+47,start(inicio)+47+30); %silence
       start(inicio+2) = start(inicio)+47+30;
       song = song+1;
                
   elseif songorder(song) == 4
       segments(inicio)=mctrim(participant,start(inicio),start(inicio)+48); %song4, 48s
       segments(inicio+1)=mctrim(participant,start(inicio)+48,start(inicio)+48+30); %silence
       start(inicio+2) = start(inicio)+48+30;
       song = song+1;
   
   elseif songorder(song) == 5
       segments(inicio)=mctrim(participant,start(inicio),start(inicio)+48); %song5, 48s
       segments(inicio+1)=mctrim(participant,start(inicio)+48,start(inicio)+48+30); %silence
       start(inicio+2) = start(inicio)+48+30;
       song = song+1;
                          
   elseif songorder(song) == 6
       segments(inicio)=mctrim(participant,start(inicio),start(inicio)+48); %song6, 48s
       segments(inicio+1)=mctrim(participant,start(inicio)+48,start(inicio)+48+30); %silence
       start(inicio+2) = start(inicio)+48+30;
       song = song+1;
                       end
                       
               
    end
end
               
    



                   
               
                   
