print ("Practice Python- Teach Yourself Python in 24 hours review")

print (" ----------------")
name = "Doug"
if name == 'Doug':
  print ("Hello, D-man")
print ("How are you today?")

print (" ----------------")
print ()

num = 6
if num > 5:
    print (num)
print ("Good-bye")

print (" ----------------")
print ()

a = 6
if a > 5:
   print ("Greater than five")
else:
    print ("Five or Less")

print (" ----------------")
print ()

print ("Else and Elif - Shipping exercise")

total = 30.29
if total > 50:
  print ("You get free shipping")
elif total > 40:
  print ("Spend a bit more to get free shipping.")
else:
  print ("Spend $50 to get free shipping")

print (" ----------------")
print ()

print ("ZeroDivisionError Handling Exercise")

print ("Try / Except Exercises")
a = 5
try:
   a = a + 1
   a = a / 0
except ZeroDivisionError:
   print ("Don't do that")

print (" ----------------")
print ()

print ("Exercise Tip Added Dinner Reciept")
total = 19 + 9.99 + 13.97 + 20 + 15.97 + 9.97 + 10 * 2
party = 8
print ("Reciept for your meal")
if party >= 8:
    total = total + total * .2
    print ("We've added the tip automatically, since your party was 8 or larger.")

print ("Total: ", "%.2f" % total)
print ("Thanks for dining with us today!!")


print (" ----------------")
print ()

total = 13 + 14.02 + 22.35
party = 3
print ("Reciept for your meal")
if party >= 8:
    total = total + total * .2
    print ("We've added the tip automatically, since your party was 8 or larger.")

print ("Total: ", "%.2f" % total)
print ("Thanks for dining with us today!!")
print (" ----------------")
print ()


