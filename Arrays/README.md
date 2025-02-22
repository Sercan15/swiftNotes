<h1 style="color:#FF6347;">📚 Arrays Project</h1>

Welcome to the **Arrays Project**, a Swift application for managing and performing various operations on members of the Neon Academy! This application allows you to classify, sort, filter, and group members based on attributes, including support for different member types like mentors.

---

<h2 style="color:#4682B4;">🔍 Table of Contents</h2>

1. <a href="#project-overview" style="color:#4682B4;">Project Overview</a>
2. <a href="#features" style="color:#4682B4;">Features</a>
3. <a href="#classes-and-structures" style="color:#4682B4;">Classes and Structures</a>
4. <a href="#functions" style="color:#4682B4;">Functions</a>
5. <a href="#usage-example" style="color:#4682B4;">Usage Example</a>

---

<h2 id="project-overview" style="color:#FF6347;">📖 Project Overview</h2>

The **myArray Project** is a sample membership management system designed for Neon Academy members, where data can be structured as classes or structs in Swift. Members have attributes like **name**, **age**, **title**, **zodiac sign**, **contact information**, and **membership level**. The project supports operations to manage, analyze, and organize member data flexibly.

---

<h2 id="features" style="color:#4682B4;">✨ Features</h2>

This application includes a variety of functionalities:

- **Sort** members by age or name
- **Filter** members by age
- **Group** members by zodiac sign
- **Calculate** the average age of members
- **List** phone numbers of members with the same title
- **Delete** members with a specific level
- **Identify** the oldest member and the member with the longest name
- **Display** all email addresses of members
- **Find** the most common hometown among members

---

<h2 id="classes-and-structures" style="color:#FF6347;">🏗️ Classes and Structures</h2>

The project organizes data using Swift classes and structures to represent **Member** and **Mentor** types. Here’s a quick breakdown:

- **Member (Struct)**: Defines basic properties and methods for general members.
- **Mentor (Class)**: Inherits from Member with additional attributes for mentors, making it possible to assign mentors specific properties.

Each member is defined with:
- **Name**
- **Age**
- **Title**
- **Zodiac Sign**
- **Contact Details** (Phone, Email)
- **Membership Level**

---

<h2 id="functions" style="color:#4682B4;">⚙️ Functions</h2>

Here’s a detailed look at the main functions in the project, making it a versatile tool for managing member data:

1. **sortByAge()** - Sorts members by their age.
2. **sortByName()** - Sorts members alphabetically by name.
3. **filterByAge(minAge: Int)** - Filters and returns members older than a specified age.
4. **filterByTitle(title: String)** - Filters members with a specific title.
5. **groupByZodiac()** - Groups members by their zodiac sign for easy categorization.
6. **averageAge()** - Calculates and returns the average age of all members.
7. **deleteByLevel(level: String)** - Deletes members who match a specified membership level.
8. **findOldestMember()** - Finds and returns the oldest member in the list.
9. **findLongestName()** - Identifies the member with the longest name.
10. **listPhoneNumbersByTitle(title: String)** - Lists phone numbers of all members with a specific title.
11. **displayAllEmails()** - Returns a list of all members’ email addresses.
12. **commonHometown()** - Determines the most common hometown among members.
13. **calculateMedianAge()** - Calculates the median age for the member list.
14. **listUniqueTitles()** - Lists all unique titles held by members.
15. **sortByMembershipLevel()** - Sorts members by membership level.
16. **filterByZodiacSign(zodiacSign: String)** - Filters and returns members with a specified zodiac sign.

This set of functions offers flexible and powerful ways to interact with, analyze, and manage member data for different scenarios and requirements.

---

<h2 id="usage-example" style="color:#FF6347;">💡 Usage Example</h2>

To demonstrate the functionality, consider the following code example:

```swift
// Initialize members
var members = [Member(name: "Alice", age: 25, title: "Developer", zodiacSign: "Leo", contact: "alice@example.com", level: "Gold"),
               Member(name: "Bob", age: 30, title: "Designer", zodiacSign: "Aries", contact: "bob@example.com", level: "Silver")]

// Sort members by age
let sortedMembers = sortByAge(members)

// Filter members by minimum age
let adultMembers = filterByAge(members, minAge: 21)

// Calculate average age
let avgAge = averageAge(members)

print("Sorted Members: \(sortedMembers)")
print("Adult Members: \(adultMembers)")
print("Average Age: \(avgAge)")
