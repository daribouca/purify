function align()
  p = peripheral.wrap("front")
  while p.getMaxMJReceived("front") ~= 200 do
    turtle.turnRight()
    p.peripheral.prap("front")
  end
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