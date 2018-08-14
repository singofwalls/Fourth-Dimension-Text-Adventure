--Random
math.randomseed(os.time())
quit = 20
repeat
math.random(1,2)
quit = quit - 1
until quit < 1

--<<Functions>>

--Start Menu

function StartMenu()
print("The Fourth Dimension")
print("")
print("Language set to Earth; English 1")
print("Thank you for your purchase of a brand new Automatic ID Card.")
print("Your Money Card has 0 credit(s) left on it.")
print("Your identity has been registered. Please remind family and friends that they are required to register.")
print("Press \"Enter\" to view statistics showing health and status updates.")
io.read()
os.execute("cls")
end

--Generators

function ConstanentGenerator()
number = math.random(1,20)
if number == 1 then
constanent = "b"
elseif number == 2 then
constanent = "c"
elseif number == 3 then
constanent = "d"
elseif number == 4 then
constanent = "f"
elseif number == 5 then
constanent = "g"
elseif number == 6 then
constanent = "h"
elseif number == 7 then
constanent = "j"
elseif number == 8 then
constanent = "k"
elseif number == 9 then
constanent = "l"
elseif number == 10 then
constanent = "m"
elseif number == 11 then
constanent = "n"
elseif number == 12 then
constanent = "p"
elseif number == 13 then
constanent = "q"
elseif number == 14 then
constanent = "r"
elseif number == 15 then
constanent = "s"
elseif number == 16 then
constanent = "t"
elseif number == 17 then
constanent = "v"
elseif number == 18 then
constanent = "w"
elseif number == 19 then
constanent = "x"
elseif number == 20 then
constanent = "z"
end
end

function VowelGenerator()
number = math.random(1,6)
if number == 1 then
vowel = "a"
elseif number == 2 then
vowel = "e"
elseif number == 3 then
vowel = "i"
elseif number == 4 then
vowel = "o"
elseif number == 5 then
vowel = "u"
elseif number == 6 then
vowel = "y"
end
end

--Makers

function RaceMaker()
rarerace = math.random(1,70)

ConstanentGenerator()
letter1 = string.upper(constanent)
VowelGenerator()
letter2 = vowel
ConstanentGenerator()
letter3 = constanent
VowelGenerator()
letter4 = vowel
ConstanentGenerator()
letter5 = constanent
race1 = letter1..letter2..letter3..letter4..letter5
end

function PlanetMaker()
ConstanentGenerator()
letter1 = string.upper(constanent)
VowelGenerator()
letter2 = vowel
VowelGenerator()
letter3 = vowel
ConstanentGenerator()
letter4 = constanent
VowelGenerator()
letter5 = vowel
ConstanentGenerator()
letter6 = constanent
letter7 = math.random(1,9)
ConstanentGenerator()
letter8 = string.upper(constanent)
planet = letter1..letter2..letter3..letter4..letter5..letter6.." "..letter7..letter8
end

function StatsMaker()
RaceMaker()
DescriptionMaker()
PlanetMaker()

eyes = math.random(0,4)--accuracy
legs = math.random(1,4)--speed
if legs == 1 then
arms = math.random(1,4)--weapon amount
else
arms = math.random(0,4)--weapon amount
end
headsa = math.random(1,200)
height = math.random(1,10)
weight = height * math.random(5,20)
maxhealth = math.random(8000,15000)
if headsa == 1 then
heads = math.random(1,4)
else
heads = 1
end
if arms == 0 then
fingers = 0
else
fingers = math.random(2,8)--accuracy
end
gendera = math.random(1,6)
if gendera == 6 then
gender = "Asexual"
else
gendera = math.random(1,2)
if gendera == 1 then
gender = "Male"
else
gender = "Female"
end
end
race = {race1, description, planet, eyes, arms, fingers, legs, heads, height, weight, maxhealth, gender}
end

function VillageMaker()
ConstanentGenerator()
letter1 = string.upper(constanent)
VowelGenerator()
letter2 = vowel
ConstanentGenerator()
letter3 = constanent
ConstanentGenerator()
letter4 = constanent
VowelGenerator()
letter5 = vowel
village = letter1..letter2..letter3..letter4..letter5
end

function NameMaker()
ConstanentGenerator()
letter1 = string.upper(constanent)
VowelGenerator()
letter2 = vowel
VowelGenerator()
letter3 = vowel
ConstanentGenerator()
letter4 = constanent
Name = letter1..letter2..letter3..letter4
end

function WordMaker()
ConstanentGenerator()
letter1 = string.upper(constanent)
ConstanentGenerator()
letter2 = constanent
ConstanentGenerator()
letter3 = constanent
ConstanentGenerator()
letter4 = constanent
VowelGenerator()
letter5 = vowel
ConstanentGenerator()
letter6 = constanent
genword = letter1..letter2..letter3..letter4..letter5..letter6
end

function RaceChooser()
NameMaker()
VillageMaker()

options = 1
while racelist[options + 1] ~= nil do
options = options + 1
end
done = false
repeat
choice = math.random(1,options + rareracerarity)--from 1 to amount of rare races + rareracerarity
if choice <= options then
rare = math.random(1,racelist[choice][racerare])--chooses from 1 the chosen races rarity
if rare == racelist[choice][itemrare] then -- if it chooses the race's rarity
race = racelist[choice]--You get that race
gendera = math.random(1,race[genders])
if gendera == 3 then
gender = "Asexual"
else
gendera = math.random(1,2)
if gendera == 1 then
gender = "Male"
else
gender = "Female"
end
end
done = true
end
else
StatsMaker()
done = true
end
until done--otherwise, it chooses a new race and tries agian
done = false
end

function DescriptionMaker()
options = 1
while desclist[options + 1] ~= nil do
options = options + 1
end
choice = math.random(1, options)
description = desclist[choice]
end

--Stats

function Stats()
target = "Automatic ID Card"
UniversalCheck()
if targetfound then
print("	Automatic ID Card")
print("")
print("Your registered name is "..Name)
print("You are a "..race[racename])
print(gender)
print("")
print("You have")
print(race[raceheads].." head(s)")
print(race[raceeyes].." eye(s)")
print(race[racearms].." arm(s)")
print(race[racelegs].." leg(s)")
print(race[racefingers].." finger(s) on each hand")
print("")
print("You are on")
print("The planet "..currentplanet)
print("Age "..age)
print("In "..currentvillage.." Village")
print("")
print("Stats")
print("You can hold "..race[racemaxhealth].." blood")
print("You have "..health.." blood")
print("")
print("You are")
print(race[raceweight].." lbs")
print(race[raceheight].." ft tall")
print("")
print(race[racedescription])
print("")
print("Do you want to register a new name using your personal AID?")
print("Leave blank to continue.")
want = io.read()
if want == "yes" then
os.execute("cls")
print("Please enter a new name now.")
Name = io.read()
os.execute("cls")
print("Your new name is "..Name..". All items have been updated to this name.")
print("Press \"enter\" to continue.")
io.read()
end
os.execute("cls")
else
print("You do not have an Automatic ID Card.")
io.read()
os.execute("cls")
end
end

function Inventory()
repeat
num = 1
print("Hands")
print("-----")
repeat
if type(Hands[num]) == "table" then
print(num..". "..Hands[num][itemname])
else
print(num..". "..Hands[num])
end
num = num + 1
until num > arms
num = 1
print("")
print("Pockets")
print("-------")
repeat
if type(Pocket[num]) == "table" then
print(num..". "..Pocket[num][itemname])
else
print(num..". "..Pocket[num])
end
num = num + 1
until num > pockets
num = 1
BackpackCheck()
if backpack then
print("")
print("Backpack")
print("--------")
repeat
if type(Bag[num]) == "table" then
print(num..". "..Bag[num][itemname])
else
print(num..". "..Bag[num])
end
num = num + 1
until num > backslot[itemslots]
end
print("")
if firinv then
print("Choose a section to move items.")
else
print("Choose a section to move items to.")
end
section = io.read()
if section == "Hands" then
if firinv then
section1 = Hands
else
section2 = Hands
end
print("Choose a number.")
want = io.read()
if want ~= "" then
want = tonumber(want)
if want <= arms then
if Hands[want] == "Empty" then
if firinv then
print("This hand is empty.")
io.read()
os.execute("cls")
else
want2 = want
done = true
end
else
if firinv == false then
print("This hand is full.")
io.read()
os.execute("cls")
else
want1 = want
done = true
Drop()
end
end
else
print("You do not have this hand.")
io.read()
os.execute("cls")
end
else
cancel = true
done = true
end
elseif section == "Pockets" then
if firinv then
section1 = Pocket
else
section2 = Pocket
end
print("Choose a number.")
want = io.read()
if want ~= "" then
want = tonumber(want)
if want <= pockets then
if Pocket[want] == "Empty" then
if firinv then
print("This pocket is empty.")
io.read()
os.execute("cls")
else
want2 = want
done = true
end
else
if firinv == false then
print("This pocket is full.")
io.read()
os.execute("cls")
else
want1 = want
done = true
Drop()
end
end
else
print("You do not have this pocket.")
io.read()
os.execute("cls")
end
else
cancel = true
done = true
end
elseif section == "Backpack" then
BackpackCheck()
if backpack then
if firinv then
section1 = Bag
else
section2 = Bag
end
print("Choose a number.")
want = io.read()
if want ~= "" then
want = tonumber(want)
if want <= backslot[itemslots] then
if Bag[want] == "Empty" then
if firinv then
print("This slot is empty.")
io.read()
os.execute("cls")
else
want2 = want
done = true
end
else
if firinv == false then
print("This slot is full.")
io.read()
os.execute("cls")
else
want1 = want
done = true
Drop()
end
end
else
print("You do not have this slot.")
io.read()
os.execute("cls")
end
else
cancel = true
done = true
end
else
print("You don't have a backpack.")
io.read()
os.execute("cls")
end
else
cancel = true
done = true
end
until done
if firinv == false then
if cancel == false then
section2[want2] = section1[want1]
section1[want1] = "Empty"
print("Moved")
io.read()
os.execute("cls")
end
end
cancel = false
done = false
end

function Finance()
target = "Money Card"
UniversalCheck()
if targetfound then
print("	Money Card")
print("")
print("Your name is "..Name)
print("")
print("You have")
print(credits.." Credits")
print("")
print("Would you like to open the online catalogue?")
want = io.read()
os.execute("cls")
if want == "yes" then
Catalogue()
end
else
print("You do not have a Money Card.")
io.read()
os.execute("cls")
end
end

function DescList()
desclist = {}
desclist[1] = "You are a silicon-based life form composed of metal. You are a red, \nself-aware machine. Your kind tends to enjoy solitude and fighting. You do not enjoy others unless they are no longer living. Your kind live alone."
desclist[2] = "You are a fleshy carbon-based life-form. Nothing about you is evil \nother than you being entirely purple, which some may find disturbing. You are somewhat obese for your kind and enjoy eating when the time arrives. You live in a family of 12 close relatives."
desclist[3] = "You are a large insect-type creature. You are hairy and murderous. \nOthers fear you. You have no family, you ate them. You are brown."
desclist[4] = "You are a florescent slug-like animal. At birth it is not uncommon \nfor your kind to grow leg that can retract into your body. You enjoy Suctioning onto things and creating squishy noises. Infact, there isn't much you don't enjoy."
desclist[5] = "You are a pink, scaly, delicious creature that many races consider \ndinner. You run from danger by climbing walls and running into holes."
desclist[6] = "You are fluffy and brown. You are a very round ball-like creature \nand are sought after as a pet throughout the galaxy."
desclist[7] = "You are a herd animal of the bovine type. you have spots of purple \non your body but the rest of you is green. You like eating, a lot."
desclist[8] = "You are completely black and feathery. Your kind are pirates. They \nnever obey the rules and take everything they find."
desclist[9] = "You are feathery, yellow, and have a beak. Your race enjoy the fine \narts. You are very polite and proper."
desclist[10] = "You are a peach-ish tan-coloured, feathery creature. You and the rest \nof your kind enjoy wearing suits. You enjoy fancy outings and are cunning, clever, and all the like."
desclist[11] = "You are hairy and brutish. You are grey and enjoy hitting things. \nYour race is not the smartest but they get the job done."
desclist[12] = "You are horse-like and orange. You clop around and are sometimes \nused as transportation."
desclist[13] = "You are a green plant. You have root-like legs and arms. You enjoy \nphotosynthesising. You have purple petals which some races find aggravating. "
desclist[14] = "You are brown and slimy. Your legs are like flippers and hard to move \non. When your race has eyes, they are small and almost useless. You dwell in caves and only recently discovered alien races."
desclist[15] = "You are lumpy and blue. You are covered in an exoskeleton of green \nbones. You are new to the galaxy. You just discovered intergalactic flight when a spacecraft landed on your planet. You are a curious and friendly kind."
desclist[16] = "Your race is brutal. You are covered in a grey and yellow metal casing \nthat spews black gases. Everything about your race is crude and make-shift."
desclist[17] = "You are a slippery, red, squid-like creature. You walk on tentacle-ish \nlegs and have very large eyes that cover your head. You don't have much of an opinion on anything. You just do things when the opportunity arises."
end

--Catalogue

function Catalogue()
repeat
os.execute("cls")
print("Today's Catalogue.")
print("")
if delivering then
print(minutes*60-(os.clock() - ordertime) .." second(s) until your order arrives.")
print("")
end
num = 1
repeat
num2 = 1
repeat
if num2 == itemname then
print(genstoreinv[num][num2])
elseif num2 == itemslot then
if catinv[num][itemslot] ~= "Anywhere" then
print("Can only be placed in/on "..catinv[num][num2])
end
elseif num2 == itemdesc then
print(genstoreinv[num][num2])
elseif num2 == itemcost then
print(catinv[num][num2].." credits")
elseif num2 == itemdel then
print(catinv[num][num2].." minutes to deliver")
end
num2 = num2 + 1
until catinv[num][num2] == nil
print("")
num = num + 1
until catinv[num] == nil
if delivering == false then
print("What would you like to buy?")
print("Type \"leave\" to exit the catalogue.")
buy = io.read()
num4 = 1
done = false
repeat
if buy == catinv[num4][itemname] then
if catinv[num4][itemname] ~= "Money Card" then
target = "Money Card"
UniversalCheck()
if targetfound then
if credits >= catinv[num4][itemcost]then
print("Ordered.")
io.read()
os.execute("cls")
credits = credits - catinv[num4][itemcost]
Order()
done = true
else
print("Not enough credits.")
io.read()
os.execute("cls")
end
else
print("You have no money card.")
io.read()
os.execute("cls")
end
else
print("Ordered.")
io.read()
os.execute("cls")
credits = credits - catinv[num4][2]
Order()
done = true
end
end
if done then
break
else
num4 = num4 + 1
end
until catinv[num4] == nil
else
print("You cannot order anything until your delivery arrives.")
buy = "leave"
io.read()
os.execute("cls")
end
done = false
until buy == "leave"
end

function Order()
os.execute("cls")
print("Warning")
print("You cannot make any catalogue purchases while waiting for delivery.")
print("You cannot leave the planet while waiting for a delivery.")
io.read()
os.execute("cls")
minutes = catinv[num4][itemdel]
ordertime = os.clock()
print("Your delivery will take "..minutes.." minute(s) to arrive.")
delivering = true
io.read()
os.execute("cls")
end

--Ground

function Drop()
print("Drop?")
drop = io.read()
if drop == "yes" then
num7 = 1
done = false
repeat
if groundinv[num7] == nil then
groundinv[num7] = section1[want1]
section1[want1] = "Empty"
done = true
cancel = true
break
end
num7 = num7 + 1
until done
end
end

function Ground()
repeat
os.execute("cls")
if groundinv[1] ~= nil then
num = 1
repeat
num2 = 1
repeat
if num2 == itemname then
print(groundinv[num][num2])
elseif num2 == itemslot then
if groundinv[num][itemslot] ~= "Anywhere" then
print("Can only be placed in/on "..groundinv[num][num2])
end
elseif num2 == itemdesc then
print(groundinv[num][num2])
end
num2 = num2 + 1
until groundinv[num][num2] == nil
print("")
num = num + 1
until groundinv[num] == nil
print("What would you like to take?")
print("Type \"leave\" to get back to business.")
buy = io.read()
num4 = 1
done = false
repeat
if buy == groundinv[num4][1] then
GroundRoom()
done = true
end
if done then
break
else
num4 = num4 + 1
end
until groundinv[num4] == nil
done = false
else
buy = "leave"
print("Nothing on ground.")
io.read()
os.execute("cls")
end
until buy == "leave"
end


--Structures

function Structures()
print("Structures")
print("")
if generalstore then
print("General Store")
print("")
end
if huts then
print("Huts")
print("")
end
if medtent then
print("Medical Tent")
end
print("Choose a structure.")
choice = io.read()
os.execute("cls")
if choice == "General Store" then
GroundItems()
GeneralStore()
elseif choice == "Medical Tent" then
GroundItems()
MedicalTent()
elseif choice == "Huts" then
GroundItems()
Huts()
else
print("There is not a "..choice.." here.")
io.read()
os.execute("cls")
end
end

function Huts()
print("You reach the huts in the village.")
print("Do you want to break in?")
breakin = io.read()
if breakin == "yes" then
target = "Rock"
UniversalCheck()
if targetfound then
print("You smash through a window.")
io.read()
os.execute("cls")
Hutinside()
else
print("You do not have a rock.")
io.read()
os.execute("cls")
end
else
print("You leave.")
io.read()
os.execute("cls")
end
hutitems = false
end

function Hutinside()
repeat
os.execute("cls")
if hutinv[1] ~= nil then
num = 1
repeat
num2 = 1
repeat
if num2 == itemname then
print(hutinv[num][num2])
elseif num2 == itemslot then
if hutinv[num][itemslot] ~= "Anywhere" then
print("Can only be placed in/on "..hutinv[num][num2])
end
elseif num2 == itemdesc then
print(hutinv[num][num2])
end
num2 = num2 + 1
until hutinv[num][num2] == nil
print("")
num = num + 1
until hutinv[num] == nil
print("What would you like to take?")
print("Type \"leave\" to leave the area.")
buy = io.read()
num4 = 1
done = false
repeat
if buy == hutinv[num4][itemname] then
HutRoom()
done = true
end
if done then
break
else
num4 = num4 + 1
end
until hutinv[num4] == nil
done = false
else
buy = "leave"
print("There is nothing inside worthwhile.")
io.read()
os.execute("cls")
end
until buy == "leave"
end

function GeneralStore()
repeat
os.execute("cls")
print("Welcome to the store.")
print("")
num = 1
repeat
num2 = 1
repeat
if num2 == itemname then
print(genstoreinv[num][num2])
elseif num2 == itemcost then
print(genstoreinv[num][num2].." credits")
elseif num2 == itemslot then
if genstoreinv[num][itemslot] ~= "Anywhere" then
print("Can only be placed in/on "..genstoreinv[num][num2])
end
elseif num2 == itemdesc then
print(genstoreinv[num][num2])
end
num2 = num2 + 1
until genstoreinv[num][num2] == nil
print("")
num = num + 1
until genstoreinv[num] == nil
print("What would you like to buy? (Type \"sell\" to sell items.)")
print("Type \"leave\" to leave the store.")
buy = io.read()
num4 = 1
done = false
if buy == "sell" then
done = true
Sell()
end
repeat
if done then
break
end
if buy == genstoreinv[num4][itemname] then
if genstoreinv[num4][itemname] ~= "Money Card" then
target = "Money Card"
UniversalCheck()
if targetfound then
if credits >= genstoreinv[num4][itemcost]then
EnoughRoom()
done = true
else
print("Not enough credits.")
io.read()
os.execute("cls")
end
else
print("You have no money card.")
io.read()
os.execute("cls")
end
else
EnoughRoom()
done = true
end
end
if done then
break
else
num4 = num4 + 1
end
until genstoreinv[num4] == nil
done = false
until buy == "leave"
end

--Selling

function Sell()
repeat
os.execute("cls")
num = 1
print("Hands")
print("-----")
repeat
if type(Hands[num]) == "table" then
print(Hands[num][itemname])
else
print(Hands[num])
end
num = num + 1
until num > arms
num = 1
print("")
print("Pockets")
print("-------")
repeat
if type(Pocket[num]) == "table" then
print(Pocket[num][itemname])
else
print(Pocket[num])
end
num = num + 1
until num > pockets
num = 1
BackpackCheck()
if backpack then
print("")
print("Backpack")
print("--------")
repeat
if type(Bag[num]) == "table" then
print(Bag[num][itemname])
else
print(Bag[num])
end
num = num + 1
until num > backslot[itemslots]
end
print("")
print("What would you like to sell?")
print("Type \"buy\" to get back to buying.")
print("")
target = io.read()
UniversalCheck()
if targetfound then
sellprice = locationfound[num][itemcost] - genstorereduction
if sellprice > 0 then
print("Sold for "..sellprice.." credits.")
io.read()
os.execute("cls")
credits = credits + sellprice
num2 = 1
while genstoreinv[num2 + 1] ~= nil do
num2 = num2 + 1
end
genstoreinv[num2] = locationfound[num]
locationfound[num] = "Empty"
else
print("I'm not going to waste my money on that.")
io.read()
os.execute("cls")
end
else
if target ~= "buy" then
print("You do not own a/an "..target..".")
io.read()
os.execute("cls")
end
end
until target == "buy"
done = false
end

--Items

function HutItems()
amount = math.random(1,hutmost)--set before running function
hutoptions = 1
while hutlist[hutoptions + 1] ~= nil do
hutoptions = hutoptions + 1
end
num = 1
while num <= amount do
done = false
repeat
choice = math.random(1,hutoptions)
rare = math.random(1, hutlist[choice][itemrare] + hutrarity)
if rare == hutlist[choice][itemrare] then
hutinv[num] = hutlist[choice]
num = num + 1
done = true
end
until done
end
end

function GroundItems()
amount = math.random(1,groundmost)--set before running function
groundoptions = 1
while groundlist[groundoptions + 1] ~= nil do
groundoptions = groundoptions + 1
end
num = 1
while num <= amount do
done = false
repeat
choice = math.random(1,groundoptions)
rare = math.random(1,groundlist[choice][itemrare] + groundrarity)
if rare == groundlist[choice][itemrare] then
groundinv[num] = groundlist[choice]
num = num + 1
done = true
end
until done
end
end

--Checks

function GroundRoom()
num5 = 1
done = false
if groundinv[num4][itemslot] == "Anywhere" then
repeat
if Hands[num5] == "Empty" then
Hands[num5] = groundinv[num4]
table.remove(groundinv, num4)
print("Taken.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > arms
if done == false then
num5 = 1
repeat
if Pocket[num5] == "Empty" then
Pocket[num5] = groundinv[num4]
table.remove(groundinv, num4)
print("Taken.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > pockets
end
if done == false then
num5 = 1
repeat
if Bag[num5] == "Empty" then
Bag[num5] = groundinv[num4]
table.remove(groundinv, num4)
print("Taken.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > backslot[itemslots]
if done == false then
print("Not enough room.")
io.read()
os.execute("cls")
end
end
elseif groundinv[num4][itemslot] == "Back" then
BackpackCheck()
if backslot == "Empty" then
backslot = groundinv[num4]
BackpackCheck()
if backpack then
backslot[itemslots] = groundinv[num4][itemslots]
num = backslot[itemslots]
repeat
Bag[num] = "Empty"
num = num - 1
until num == 0
end
print("Taken.")
io.read()
os.execute("cls")
done = true
BackpackCheck()
elseif backpack then
if groundinv[num4][itemslots] > backslot[itemslots] then
backslot[itemslots] = groundinv[num4][itemslots]
num = backslot[itemslots]
repeat
if Bag[num] == "None" then
Bag[num] = "Empty"
end
num = num - 1
until num == 0
print("Taken.")
io.read()
os.execute("cls")
done = true
else
print("Your backpack is larger.")
io.read()
os.execute("cls")
end
else
print("You have something on your back.")
io.read()
os.execute("cls")
end
else
print("Program into GroundRoom()")
io.read()
os.execute("cls")
end
end

function CatRoom()
num5 = 1
done = false
if catinv[num4][itemslot] == "Anywhere" then
repeat
if Hands[num5] == "Empty" then
Hands[num5] = catinv[num4]
print("Taken.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > arms
if done == false then
num5 = 1
repeat
if Pocket[num5] == "Empty" then
Pocket[num5] = catinv[num4]
print("Taken.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > pockets
if done == false then
print("Not enough room.")
print("Dropping delivery on ground.")
num7 = 1
done = false
repeat
if groundinv[num7] == nil then
groundinv[num7] = catinv[num4]
done = true
cancel = true
break
end
num7 = num7 + 1
until done
io.read()
os.execute("cls")
end
end
if done == false then
num5 = 1
repeat
if Bag[num5] == "Empty" then
Bag[num5] = catinv[num4]
print("Taken.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > size
if done == false then
print("Not enough room.")
print("Dropping delivery on ground.")
num7 = 1
done = false
repeat
if groundinv[num7] == nil then
groundinv[num7] = catinv[num4]
done = true
cancel = true
break
end
num7 = num7 + 1
until done
io.read()
os.execute("cls")
end
end
elseif catinv[num4][itemslot] == "Back" then
BackpackCheck()
if backslot == "Empty" then
backslot = catinv[num4]
BackpackCheck()
if backpack then
size = catinv[num4][itemslots]
num = size
repeat
Bag[num] = "Empty"
num = num - 1
until num == 0
end
print("Taken.")
io.read()
os.execute("cls")
done = true
BackpackCheck()
elseif backpack then
if catinv[num4][itemslots] > backslot[itemslots] then
num = backslot[itemslots]
repeat
if Bag[num] == "None" then
Bag[num] = "Empty"
end
num = num - 1
until num == 0
print("Taken.")
io.read()
os.execute("cls")
done = true
else
print("Your backpack is larger.")
print("Dropping delivery on ground.")
num7 = 1
done = false
repeat
if groundinv[num7] == nil then
groundinv[num7] = catinv[num4]
done = true
cancel = true
break
end
num7 = num7 + 1
until done
io.read()
os.execute("cls")
end
else
print("You have something on your back.")
print("Dropping delivery on ground.")
num7 = 1
done = false
repeat
if groundinv[num7] == nil then
groundinv[num7] = catinv[num4]
done = true
cancel = true
break
end
num7 = num7 + 1
until done
io.read()
os.execute("cls")
end
else
print("Program into EnoughRoom()")
io.read()
os.execute("cls")
end
end

function HutRoom()
num5 = 1
done = false
if hutinv[num4][itemslot] == "Anywhere" then
repeat
if Hands[num5] == "Empty" then
Hands[num5] = hutinv[num4]
table.remove(hutinv, num4)
print("Taken.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > arms
if done == false then
num5 = 1
repeat
if Pocket[num5] == "Empty" then
Pocket[num5] = hutinv[num4]
table.remove(hutinv, num4)
print("Taken.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > pockets
end
if done == false then
num5 = 1
repeat
if Bag[num5] == "Empty" then
Bag[num5] = hutinv[num4]
table.remove(hutinv, num4)
print("Taken.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > backslot[itemslots]
if done == false then
print("Not enough room.")
io.read()
os.execute("cls")
end
end
elseif hutinv[num4][itemslot] == "Back" then
BackpackCheck()
if backslot == "Empty" then
backslot = hutinv[num4]
BackpackCheck()
if backpack then
backslot[itemslots] = hutinv[num4][itemslots]
num = backslot[itemslots]
repeat
Bag[num] = "Empty"
num = num - 1
until num == 0
end
print("Taken.")
io.read()
os.execute("cls")
done = true
BackpackCheck()
elseif backpack then
if hutinv[num4][itemslots] > backslot[itemslots] then
backslot[itemslots] = hutinv[num4][itemslots]
num = backslot[itemslots]
repeat
if Bag[num] == "None" then
Bag[num] = "Empty"
end
num = num - 1
until num == 0
print("Taken.")
io.read()
os.execute("cls")
done = true
else
print("Your backpack is larger.")
io.read()
os.execute("cls")
end
else
print("You have something on your back.")
io.read()
os.execute("cls")
end
else
print("Program into GroundRoom()")
io.read()
os.execute("cls")
end
end

function EnoughRoom()
num5 = 1
done = false
if genstoreinv[num4][itemslot] == "Anywhere" then
repeat
if Hands[num5] == "Empty" then
Hands[num5] = genstoreinv[num4]
credits = credits - genstoreinv[num4][itemcost]
print("Bought.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > arms
if done == false then
num5 = 1
repeat
if Pocket[num5] == "Empty" then
Pocket[num5] = genstoreinv[num4]
credits = credits - genstoreinv[num4][itemcost]
print("Bought.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > pockets
if done == false then
print("Not enough room.")
io.read()
os.execute("cls")
end
end
if done == false then
num5 = 1
repeat
if Bag[num5] == "Empty" then
Bag[num5] = genstoreinv[num4]
credits = credits - genstoreinv[num4][itemcost]
print("Bought.")
io.read()
os.execute("cls")
done = true
break
end
num5 = num5 + 1
until num5 > size
if done == false then
print("Not enough room.")
io.read()
os.execute("cls")
end
end
elseif genstoreinv[num4][itemslot] == "Back" then
BackpackCheck()
if backslot == "Empty" then
backslot = genstoreinv[num4]
credits = credits - genstoreinv[num4][itemcost]
BackpackCheck()
if backpack then
size = genstoreinv[num4][itemdel]
num = size
repeat
Bag[num] = "Empty"
num = num - 1
until num == 0
end
print("Bought.")
io.read()
os.execute("cls")
done = true
BackpackCheck()
elseif backpack then
if genstoreinv[num4][itemslots] > backslot[itemslots] then
num = backslot[itemslots]
credits = credits - genstoreinv[num4][itemcost]
repeat
if Bag[num] == "None" then
Bag[num] = "Empty"
end
num = num - 1
until num == 0
print("Bought.")
io.read()
os.execute("cls")
done = true
else
print("Your backpack is larger.")
io.read()
os.execute("cls")
end
else
print("You have something on your back.")
io.read()
os.execute("cls")
end
else
print("Program into EnoughRoom()")
io.read()
os.execute("cls")
end
end

function BackpackCheck()
backpack = false
if type(backslot) == "table" then
if string.find(backslot[itemname], "Backpack") then
backpack = true
end
else
if string.find(backslot, "Backpack") then
backpack = true
end
end
end

function UniversalCheck()
num = 1
targetfound = false
repeat
if Hands[num][itemname] == target then--set target before starting function
targetfound = true
locationfound = Hands
break
end
num = num + 1
until num > arms
num = 1
if targetfound == false then
repeat
if Pocket[num][itemname] == target then
targetfound = true
locationfound = Pocket
break
end
num = num + 1
until num > pockets
end
if targetfound == false then
num = 1
repeat
if Bag[num][itemname] == target then
targetfound = true
locationfound = Bag
break
end
num = num + 1
until num > size
end
end

--Quick Money Card

function QuickMoney()
target = "Quick Money Card"
UniversalCheck()
if targetfound then
if (lastuse - os.clock())*-1 > 60 then
if stop1 then
print("Type the letters as fast as possible.")
print("Press \"enter\" to start or type \"leave\" to quit.")
quit = io.read()
if quit ~= "leave" then
command = "Start"
length1 = 0
up = true
Timer()
WordMaker()
stop1 = false
lastuse = os.clock()
print(genword)
typing = io.read()
if typing == genword then
howlong = (seconds1 - os.clock())*-1
creditpay = 70 - howlong*10
if creditpay > 0 then
print("")
print("You will receive "..creditpay.." credits.")
print("You took "..howlong.." seconds to finish.")
stop1 = true
io.read()
os.execute("cls")
credits = credits + creditpay
else
print("")
print("You took "..howlong.." seconds to finish.")
print("Too slow.")
stop1 = true
io.read()
os.execute("cls")
end
else
print("")
print("Incorrect.")
io.read()
os.execute("cls")
end
end
else
print("")
print("Timer in use.")
io.read()
os.execute("cls")
end
else
print("")
print("Busy, try again later.")
io.read()
os.execute("cls")
end
else
print("You do not own a Quick Money Card.")
stop1 = true
io.read()
os.execute("cls")
end
end

--Time

function Timer()
if command == "Start" then
seconds1 = os.clock()
timeover = false
stop1 = false
elseif command == "Check" then
if up then
timeover = false
else
if seconds1-(os.clock() - length1) < 1 then
if pause == false then
timeover = true
up = false
end
end
end
elseif command == "Read" then
if up then
print(seconds1-os.clock().." seconds.")
io.read()
else
print(seconds1-(os.clock() - length1).." seconds left.")
io.read()
end
elseif command == "Pause" then
if up then
remaining1 = seconds1-os.clock()
else
remaining1 = seconds1-(os.clock() - length1)
end
pause = true
elseif command == "Resume" then
length1 = remaining1
command = "Start"
pause = false
Timer()
elseif command == "Stop" then
stop1 = true
else
print("Missing Command.")
end
end

--Fighting

function Enemy()
end

--<<Setup>>

DescList()

--Races
rareracerarity = 50

racename = 			1--The name of the race
racedescription = 	2--The race's description
raceplanet = 		3--The planet the race comes from
raceeyes = 			4--How many eye the race has
racearms = 			5--How many arms the race has
racefingers = 		6--How many fingers the race has
racelegs = 			7--How many legs the race has
raceheads = 		8--How many heads the race has
raceheight =		9--How tall the race is (in ft)
raceweight = 		10--How heavy the race is (in lbs)
racemaxhealth = 	11--The most health the race will start with
racegenders = 		12-- 1:Male Only 2: Male or Female 3: Male, Female, or Asexual 4+: the higher the number, the less likely you are to be asexual
racerare = 			14--How rare the race is (1 out of racerare)

Human = {"Human", "You are a large race of creatures descended from apes. You are eventually known throughout the galaxy as greedy and unstoppable.", "Earth", 2, 2, 5, 2, 1, 6, 200, 12000, 2, 20}
Hearlberg = {"Hearlberg", "You are a great and powerful race that will stop at nothing to destroy all life. You yourself have been abandoned and left to die for your weakness.", "Berl", 3, 4, 5, 2, 1, 7, 400, 16000, 2, 30}

racelist = {}
racelist[1] = Human

--Set up Functions

RaceChooser()
DescriptionMaker()

--Setting Variables

currentplanet = planet
currentvillage = village
pockets = legs
cancel = false
done = false
generalstore = true
huts = true
medtent = false
hutitems = false
grounditems = false
health = maxhealth
delivering = false
up = false
stop1 = true
lastuse = -60
size = 0
backslot = "Empty"
credits = 0
groundrarity = 10
hutrarity = 2
genstorereduction = 10
age = 1
groundmost = age*2
hutmost = age*3

itemname =	1--The name
itemcost =	2--How much it costs to buy/ sell
itemdesc =	3--The description
itemslot =	4--Where it can be placed
itemdel =	5--The delivery time
itemslots =	6--How many slots it gives
itemrare =	7--1 in itemrare chance of being chosen after having a 1 in choices chance of being tried

--Items Properties

MoneyCard = {"Money Card", 0, "Used to buy items.","Anywhere",1,0,2}
AutomaticIDCard = {"Automatic ID Card", 100, "Used to check stats with.","Anywhere",1,0,3}
SmallBackpack = {"Small Backpack", 200, "Provides 5 extra slots.", "Back",2,5,4}
MediumBackpack = {"Medium Backpack", 400, "Provides 7 extra slots.", "Back",3,7,5}
Squid = {"Squid Backpack", 100, "Slimy", "Back",4, 10,6}--huh, wat?
Rock = {"Rock",0, "Grey and rough.","Anywhere",1,0,1}
Stick = {"Stick",0, "Brown and flaky.","Anywhere",1,0,1}
QuickMoneyCard = {"Quick Money Card", 100, "Do you need money fast? This is the perfect solution!", "Anywhere", 1,0,6}
UniversalTaxiServices = {"Universal Taxi Services",1000,"A way out of a bad situation.","Anywhere",3,0,10}

--Inventories

groundinv = {}
hutinv = {}

genstoreinv = {}
genstoreinv[1] = MoneyCard
genstoreinv[2] = AutomaticIDCard
genstoreinv[3] = SmallBackpack
genstoreinv[4] = MediumBackpack

groundlist = {}
groundlist[1] = Rock
groundlist[2] = Stick
groundlist[3] = SmallBackpack
groundlist[4] = MediumBackpack

hutlist = {}
hutlist[1] = Rock
hutlist[2] = Stick
hutlist[3] = SmallBackpack
hutlist[4] = MediumBackpack

catinv = {}
catinv[1] = QuickMoneyCard
catinv[2] = UniversalTaxiServices

--Containers

Bag = {}
Bag[1] = "None"
Bag[2] = "None"
Bag[3] = "None"
Bag[4] = "None"
Bag[5] = "None"
Bag[6] = "None"
Bag[7] = "None"
Bag[8] = "None"
Bag[9] = "None"
Bag[10] = "None"

Hands = {}
Hands[1] = "None"
Hands[2] = "None"
Hands[3] = "None"
Hands[4] = "None"
Hands[5] = "None"
Hands[6] = "None"
num = arms
repeat
Hands[num] = "Empty"
num = num - 1
until num < 1

Pocket = {}
Pocket[1] = "None"
Pocket[2] = "None"
Pocket[3] = "None"
Pocket[4] = "None"
Pocket[5] = "None"
Pocket[6] = "None"
num = pockets
repeat
Pocket[num] = "Empty"
num = num - 1
until num < 1
Pocket[1] = MoneyCard
if Pocket[2] == "Empty" then
Pocket[2] = AutomaticIDCard
else
Hands[1] = AutomaticIDCard
end

--<<Run>>

--Running Functions

HutItems()
GroundItems()
StartMenu()
Stats()

--<<Start>>

repeat

--dynamic variables

if delivering then
if minutes*60-(os.clock() - ordertime) < 1 then
delivering = false
os.execute("cls")
print("Your delivery has arrived.")
CatRoom()
end
end

--Begin

done = false
os.execute("cls")
print("What do you want to do?")
print("Type \"list\" for a list of actions.")
action = io.read()
os.execute("cls")
if action == "list" then
print("List")
print("")
print("\"structures\"")
print("After looking for structures, type a structure's name to interact with it.")
print("")
print("\"ground\"")
print("After looking on the ground, type an item's name to interact with it.")
print("")
print("\"stats\"")
print("Shows your stats using your personal AID.")
print("")
print("\"inv\"")
print("Opens your inventory to move and drop items.")
print("")
print("\"finance\"")
print("Show your credits and an online catalogue using your money card.")
target = "Quick Money Card"
UniversalCheck()
if targetfound then
print("")
print("\"money\"")
print("Opens your Quick Money Card.")
end
print("")
print("Press \"enter\" to continue.")
io.read()
os.execute("cls")
elseif action == "stats" then
Stats()
elseif action == "structures" then
Structures()
elseif action == "finance" then
Finance()
elseif action == "ground" then
Ground()
elseif action == "money" then
QuickMoney()
elseif action == "inv" then
firinv = true
Inventory()
done = false
if cancel == false then
firinv = false
Inventory()
end
section1 = ""
section2 = ""
want1 = ""
want2 = ""
done  = false
cancel = false
end
until 1 + 1 == 3
