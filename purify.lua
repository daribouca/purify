function align()
  print("aligning turtle")
  p = peripheral.wrap("front")
  while p.getMaxMJReceived("front") ~= 200 do
    turtle.turnRight()
    p.peripheral.prap("front")
  end
  print("alignment complete")
  return p
 end
 
 function purify(p)
  while 1 do
    print("checking synthesizer")
    t = p.getStackInSlot(3)
	if t == nil then
	  print("nothing in the synthesizer, waiting 30 seconds")
	  sleep(30)
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
  turtle.suck()
  turtle.turnRight()
  turtle.turnRight()
  turtle.drop()
  print("waiting 2:30 minutes for purification")
  sleep(150)
  print("serum is purified, dropping it into the chest")
  turtle.suck()
  turtle.turnLeft()
  turtle.drop()
  turtle.turnLeft()
 end
 
 p = align()
 
 while 1 do
   purify(p)
end