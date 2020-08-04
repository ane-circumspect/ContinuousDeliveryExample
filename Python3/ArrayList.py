

#!/usr/bin/env python

fruit = ['apple', 'strawberry', 'pear', 'papaya', 'orange']
print(fruit)

toppings = []
print ("toppings are an open bracket the result is")
print(toppings)

times = ['morning', 'noon', 'evening', 'night']
print ("A list of times")
print (times)
print ("What is in the 1 space")
print(times[1])
print ("What is in the 0 space")
print(times[0])
print()
print()


print ("Original Pet_List, Later changing Pet 1 from Dog to Ferret")
pet1 = 'Dog'
pet2 = 'Cat'
pet3 = 'Bird'
pet4 = 'Fish'

print ("Original Pet_List")
pet_list=[pet1, pet2, pet3, pet4]
print()

print (pet_list)
print ("Replacing Dog with Ferret")
pet1 = 'Ferret'
pet_list = [pet1, pet2, pet3, pet4]
print ("Changed Dog with Ferret, Ferret is now Pet1")
print (pet1)
print ("New Pet List")
print (pet_list)
print()
print()


print("Using the len function")
numbers = [1, 2, 3, 4, 7, 6, 8]
print (numbers)
print ("Now using len to count the number or numbers")
print(len(numbers))
print()
print()
#Indexing Lists
print ("Using Count and Index")
colors = ['red', 'white', 'blue', 'magnenta', 'red', 'yellow']
print ("How many times does red appear in the list")
print(colors.count('red'))
print ("How many times does Yellow appear in the list")
print(colors.count('yellow'))
print ("Indexing Blue")
print(colors.index('blue'))
print()
print(colors[2])
print()
#Using .appendx
print ("Appending a blank topping [] with Pepperoni and Mushrooms.")
toppings.append('pepperoni')
toppings.append('mushrooms')
print()
print ("List of Toppings")
print(toppings)
print()
print ("Doing one more append to add Extra Cheese")
toppings.append('extra cheese')
print()
print ("New toppings list")
print(toppings)
print()
#Using .extend
print ("Extending a list to a second list. This is an order ")
order1 = ['pizza', 'fries', 'Pepsi']
order2 = ['Pepsi', 'Lasagna']
print ("Items in Order 1")
print (order1)
print ("Items in Order 2")
print (order2)
order1.extend(order2)
print ("New Extended Order 1")
print(order1)
print()
#Simple Math in Lists
print ("Math in Lists Example")
a = [1, 2, 3]
b = [5, 7, 10]
print ("List A")
print (a)
print ("List B")
print (b)
print ("Adding two lists together")
print(a + b)  # The output is 1,2,3,4,5,6
print ("Multiplying list a * 3")
print(a * 3)  # The output is 1,2,3,1,2,3,1,2,3
print ()

#Now we will use a list in an example of Inventory

inventory = ['butter', 'tomato sauce', 'green beans', 'pepporoni', 'mozzarella','chicken','oregano','garlic','flour']

print ("A list of what is currently in our inventory")
print (inventory)
print("\n")
print("\n")
print("Welcome to the Inventory Program")
print("\n")
item = input("What item do you want to check  ?")
if item in inventory:
    print ("Yes We Have that")
else:
    print ("No, We don't have that")

shopping_list = input("What item would you like to add to the shopping list? ")
print ("Current shopping list")
print (shopping_list)



   
