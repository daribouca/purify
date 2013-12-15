function align()
  print("aligning turtle")
  turtle.select(1)
  p = peripheral.wrap("front")
  while p == nil or p.getMaxMJReceived("front") ~= 200 do
    turtle.turnRight()
    p = peripheral.wrap("front")
  end
  print("alignment complete")
  return p
 end
 
 function purify(p)
  while 1 do
    print("checking synthesizer")
    t = p.getStackInSlot(3)
	if t == nil then
	  print("nothing in the synthesizer, waiting 5 seconds")
	  sleep(5)
	  return
	end
	dmg = t["dmg"]
    print("something is in the synthesizer, waiting for dmg value to drop to 0")
	while dmg ~= 0 do
	  t = p.getStackInSlot(3)
	  dmg = t["dmg"]
      print("current dmg value: "..dmg)	 
	  sleep(5) 
	end
	break
  end
  print("serum is synthesized, dropping it into the purifier")
  turtle.select(1)
  turtle.suck()
  turtle.turnRight()
  turtle.turnRight()
  turtle.select(1)
  turtle.drop()
  print("waiting 2:30 minutes for purification")
  sleep(150)
  print("serum is purified, dropping it into the chest")
  turtle.select(1)
  turtle.suck()
  turtle.turnLeft()
  for i = 1, 16 do  
	turtle.select(i)
	turtle.drop()
  end
  turtle.select(1)
  turtle.turnLeft()
 end
 
 p = align()
 
 while 1 do
   purify(p)
end