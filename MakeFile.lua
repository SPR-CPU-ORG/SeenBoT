--Creator--
redis_server = require('redis')
redis = redis_server.connect('127.0.0.1', 6379)

function Sns() 
     local i, t, popen = 0, {}, io.popen 
     local pfile = popen('ls') 
 	local x = 0 
     for filename in pfile:lines() do 
        if filename:match('S%-(%d+)%.lua') and tonumber(filename:match('S%-(%d+)%.lua')) >= x then 
 			x = tonumber(filename:match('S%-(%d+)%.lua')) + 1 
 		end		 
     end 
     return x 
end 


 local x = Sns() 
 io.write("\n Sudo ID ..... : ") 
 local sudo = io.read() 
 print('\n > > > Creating A New Bot ....\n')
 local text,ok = io.open("SeenBase.lua",'r'):read('*a'):gsub("TCHID",x) 
 io.open("N-"..x..".lua",'w'):write(text):close() 
 io.open("S-"..x,'w'):write("while true; do\n./TGL -p Seen-"..x.." -s N-"..x..".lua\ndone"):close() 
 io.popen("chmod 777 S-"..x) 
 redis:set('Seen:' .. x .. ':SudoM', sudo) 
 redis:sadd('Seen:' .. x .. ':Sudo', sudo) 
 print(' > > > Created \n! ')
 io.write('You Wish To Run It or no ?! [Y-N]... :')
 if io.read() == 'Y' then
 	io.popen('screen -d -m bash S-'..x)
 	print('Runnnnned !!!!!!!')
 else
 	print('Run it your self ;)')
 end
