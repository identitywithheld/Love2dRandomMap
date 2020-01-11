--[[
U̷̥͎̜̹͆̇͊̏̋̓̍͜ͅͅs̵̡̠͙͇̯̤̠̹͕̥̰͈͍̙̎͛͐̕͘ë̶́͛̑́̽̈́̄̓̄̃͘r̶̨̛͉̒͊̀͆̇̆̿̀̕n̴̢̛͇̟͚͚̘͚̫̖̼͈͕̩̭̐̐̈́͂̾͝a̴̢̨̜̥̖̲̭̤͗̓̓̿̐̇́̌̕ͅm̴̡͎̹̖͕̮̖̦̣̥͉͑̀̂̌̀̉͘̚͜ę̴̭͖̦͙̳̮̮̼͇̂͆͐͌̆̒̈́͌̐̎̄̏̈́͜W̵̛̩̥̫̣̣̑̒͗͑͆̕͝͝i̶̡̹̘̣̗̖̼̇̉͛̆̄̊̓̏͊͗͆̄͠t̷̡̛̰̫͕̠̪̪͋̎͗̐̄̄͘h̵̨̠̩͉̹̉́̅͐̈̃̆ę̷̦̤̟̩̠̤̮̟̼̻̿͑̋̓͠l̷̫̀̈́̓̓͂̔͂d̸̡̥͈̖̠̰͖̤̬͂̿̂̄͒̈́̀̏̎̉̐̀͑̾͜ͅ
12-7-2019
  This code generates a random map when given a cell size
  feel free to use anything from this


]]
local movespeed=7
local xpos=100
local ypos=100
local jumping=false
local falling=false


map={}

function love.keypressed(k)
if k=="b" then
love.graphics.setColor( 0,132, 132, 255 )
else if k=="r" then
love.graphics.setColor( 255,0, 0, 255 )
elseif k=="y" then
love.graphics.setColor( 255,255, 0, 255 )
elseif k=="g" then
love.graphics.setColor( 0,255, 0, 255 )
elseif k=="p" then
love.graphics.setColor( 255,0, 255, 255 )
elseif k=="o" then
love.graphics.setColor( 253,106,2, 255 )
elseif k=="w" or k=="up" then ypos=ypos-movespeed
elseif k=="a" or k=="left" then xpos=xpos-movespeed
elseif k=="s" or k=="down" then ypos=ypos+movespeed
elseif k=="d" or k=="right" then xpos=xpos+movespeed
else
end

end
end

local read
print("please enter a cell size. The maximum is 40.")
repeat
 read=io.read() read=tonumber(read)
 if not read then print("Oops, looks like the input you entered was not a number!")
 end
 until read~=nil and read<40
 local difficulty

 print("How far apart should the blocks be?")
repeat
 difficulty=io.read() difficulty=tonumber(difficulty)
 if not read then print("Oops, looks like the input you entered was not a number!")
 end
 until read~=nil and read<30
local CELLSIZE=read
local hello=1
local bool=false
function sleep (a) 
    local sec = tonumber(os.clock() + a); 
    while (os.clock() < sec) do 
    end 
end

local lmao=1
function start()
if bool==true then
for i,v in pairs(map) do
if i%20==0 then
hello=hello+1
lmao=1
else

  lmao=lmao+1
  if v==1 then
  love.graphics.rectangle( "fill", hello*10, lmao*15, CELLSIZE, CELLSIZE )

  else 

  end
  local lol=1
  love.graphics.rectangle( "fill",0, 300, 1000, read )
 
end
end
hello=0
else
bool=true
print("working...")
local it=10
love.graphics.setColor( 0,132, 132, 255 )
local a=0

while a<50 do
local b=0
while b < 30 do
local random=math.random(0,difficulty)
if random==1 then
  love.graphics.rectangle( "fill", a*15, b*15, CELLSIZE, CELLSIZE )
  table.insert(map,1)
  else
  table.insert(map,0)
  end
b=b+1

end
a=a+1

end

print("Completed!")
end
end
function love.draw()
 love.graphics.setColor(255,0,0,128)
  love.graphics.rectangle("fill",xpos,ypos,CELLSIZE, CELLSIZE)
  if true then
    love.graphics.setColor(0,255,0)
   
  end
start()
--sleep(10)
end



