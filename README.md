# Module Project - NOC List Objective-C

Greetings agent. Your mission is a top priority for the agency. Please read below for further info.

Our undercover agents in Eastern Europe are in trouble. The NOC list (Non-official cover) has been leaked and we need our directors to have quick access to the information so we can try to mitigate the damage. Some of the agents on the list have an access level that makes them privy to very sensitive information. We need an application that will present the NOC list's information in a quickly digestible format. Our top agents have been working on it, but we need this done ASAP and you've proven yourself to be quite capable of a quick turnaround.

The Director herself has given you access to all the agency's resources to complete this mission. We're counting on you agent.

Here is the complete NOC List. This information is classified at the highest levels, so guard it very carefully.

---
 * coverName: "Ethan Hunt", realName: "Tom Cruise", accessLevel: 8, compromised: false
 * coverName: "Jim Phelps", realName: "Jon Voight", accessLevel: 9, compromised: true
 * coverName: "Claire Phelps", realName: "Emmanuelle Beart", accessLevel: 5, compromised: false
 * coverName: "Eugene Kittridge", realName: "Henry Czerny", accessLevel: 10, compromised: true
 * coverName: "Franz Krieger", realName: "Jean Reno", accessLevel: 4, compromised: false
 * coverName: "Luther Stickell", realName: "Ving Rhames", accessLevel: 4, compromised: false
 * coverName: "Sarah Davies", realName: "Kristin Scott Thomas", accessLevel: 5, compromised: true
 * coverName: "Max RotGrab", realName: "Vanessa Redgrave", accessLevel: 4, compromised: false
 * coverName: "Hannah Williams", realName: "Ingeborga Dapkūnaitė", accessLevel: 5, compromised: true
 * coverName: "Jack Harmon", realName: "Emilio Estevez", accessLevel: 6, compromised: true
 * coverName: "Frank Barnes", realName: "Dale Dye", accessLevel: 9, compromised: false
---

This message will self destruct in 5 seconds.

# Step 0

* Create a macOS command line Xcode project. Name it `NOCList-ObjC`. Be sure to choose `Objective-C` for the language.

# Step 1

* Create a model class called `LSIAgent` and declare properties in the header for each attribute from the records above. For integer and boolean values, model the property as an `NSNumber`.
* Declare an Obj-C initializer method in the header that passes in all of the above attributes so you can initialize an agent object in one step. For `accessLevel`, pass the value in as an `int` primitive. For `compromised` pass the value in as a `BOOL`.
* Implement the custom `init` method in the implementation file of the class. Be sure to convert the `int` and `BOOL` arguments passed in to `NSNumber` objects.

# Step 2

* Use the custom `init` method in `main.m` to create agent objects for each record above.
* Once created, declare an `NSArray` variable and place all agent objects within it.

# Step 3

* Create a for loop to iterate over each agent and determine the total amount of compromised agents (can use a traditional for loop or a for-in fast enumeration).
* Print a message revealing the total number of compromised agents.

# Step 4

* Create a for loop to iterate over each agent and determine the total amount of clean agents. Additionally, if the agent is clean, print a console message saying "Agent is clean: [agent's cover name]."
* Print a message revealing the total number of clean agents.

# Step 5

* Create a loop that finds high risk agents. It should print out the real names and access levels of agents with level 8 or higher. If that agent is also currently compromised, add **WARNING** **COMPROMISED** to the end of the string that includes their name and access level.
>Jon Voight, level: 9 \*\*WARNING** \*\*COMPROMISED**

# Step 6

* Create a loop that finds totals for low, mid, and high level agents. Low level agents are 4 or lower, mid are 5-7, and high level agents are 8 or above. After the loop, print a statement like the following:
>3 low level agents, 4 mid level agents, and 4 high level agents

# Step 7 (Optional)

* Create a loop that prints the cover names and access levels of all agents, but the list should be sorted by access level, in ascending order.
