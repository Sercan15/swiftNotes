<h1 style="color:#FF6347;">🌟 EnumAndSwitch Project</h1>

Welcome to the **EnumAndSwitch** project! This Swift-based application is designed to manage and organize information for members of Neon Academy, focusing on team associations and member details. The project includes various functions to filter, describe, and manipulate member data based on their team and attributes.

---

<h2 style="color:#4682B4;">📜 Table of Contents</h2>

1. <a href="#project-overview" style="color:#4682B4;">Project Overview</a>
2. <a href="#features" style="color:#4682B4;">Features</a>
3. <a href="#structs-and-enums" style="color:#4682B4;">Structs and Enums</a>
4. <a href="#functions" style="color:#4682B4;">Functions</a>
5. <a href="#usage-example" style="color:#4682B4;">Usage Example</a>

---

<h2 id="project-overview" style="color:#FF6347;">📖 Project Overview</h2>

The **EnumAndSwitch** project utilizes Swift enums and switches to manage Neon Academy members across different teams, such as iOS development, Android development, and UI/UX design. The project includes methods to describe members, filter by team, and compute statistics such as average age, making it easy to monitor member details effectively.

---

<h2 id="features" style="color:#4682B4;">✨ Features</h2>

This project includes the following key features:

- **Team-based Member Filtering**: Filter members by team and perform various operations.
- **Role Descriptions**: Describe members' roles based on their team.
- **Promotions**: Provide promotion messages based on members' teams.
- **Average Age Calculation**: Calculate the average age for each team.
- **Contact Information Management**: Retrieve contact details by team.
- **Custom Messages**: Display team-specific messages and age-based descriptors.

---

<h2 id="structs-and-enums" style="color:#FF6347;">🏗️ Structs and Enums</h2>

The project’s core data structures are:

- **Team (Enum)**: Defines teams within the academy:
  - `.iOSdevelopment`
  - `.androiddevelopment`
  - `.UIuXdesign`
- **NeonAcademyMember (Struct)**: Stores each member's `firstName`, `lastName`, `age`, `contactInfo`, and `team`.

---

<h2 id="functions" style="color:#4682B4;">⚙️ Functions</h2>

Here’s a list of functions included in the project:

1. **printMembers(of team: Team)** - Prints members' names in the specified team.
2. **describeMember(member: NeonAcademyMember)** - Describes the role of a member based on their team.
3. **printOlderMembers(in team: Team, olderThan age: Int)** - Prints members in a team older than a certain age.
4. **promoteMember(_ member: NeonAcademyMember)** - Promotes a member with a custom message based on their team.
5. **averageAge(of team: Team) -> Double** - Calculates the average age of members in a team.
6. **teamMessage(for team: Team)** - Displays a motivational message for each team.
7. **contactInfo(for team: Team) -> [String]** - Retrieves contact information for members in a specific team.
8. **teamAgeMessage(for member: NeonAcademyMember)** - Provides custom age-based team messages.

---

<h2 id="usage-example" style="color:#FF6347;">💡 Usage Example</h2>

Below is an example usage of the EnumAndSwitch project:

```swift
let members: [NeonAcademyMember] = [
    NeonAcademyMember(firstName: "Sercan", lastName: "Yeşilyurt", age: 26, contactInfo: "+90 543 123 456", team: .iOSdevelopment),
    NeonAcademyMember(firstName: "Kerem", lastName: "Akpınar", age: 28, contactInfo: "123456", team: .androiddevelopment),
    NeonAcademyMember(firstName: "Zafer", lastName: "Çevik", age: 35, contactInfo: "25134356", team: .UIuXdesign)
]

// List iOS team members
printMembers(of: .iOSdevelopment)

// Describe each member
members.forEach { describeMember(member: $0) }

// Promote all members
members.forEach { promoteMember($0) }

// Display the average age of the iOS Development team
print("Average age of iOS Development Team: \(averageAge(of: .iOSdevelopment))")

// Show contact information for Android Development Team
print("Contact info for Android Development Team: \(contactInfo(for: .androiddevelopment))")

// Display age-based messages for each member
members.forEach { teamAgeMessage(for: $0) }
