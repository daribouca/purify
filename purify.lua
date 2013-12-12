function align()
  p = peripheral.wrap("front")
  if p.getMaxMJReceived("front") == 200 then
    return p
  end
  do
    p.peripheral.prap("front")
    turtle.turnRight()
  until p.getMaxMJReceived("front") == 200
  return p
 end
 
 function purify(p)
  while 1 do
    t = p.getStackInSlot(3)
	if t == nil then
	  sleep(30)
	  return
	end
	dmg = t["dmg"]
	while dmg ~= 0 do
	  sleep(5)
	  t = p.getStackInSlot(3)
	  dmg = t["dmg"]	  
	end
  end
  turtle.suck()
  turtle.turnRight()
  turtle.turnRight()
  turtle.drop()
  sleep(300)
  turtle.suck()
  turtle.turnLeft()
  turtle.drop()
  turtle.turnLeft()
 end
 
 p = align()
 
 while 1 do
   purify(p)
end