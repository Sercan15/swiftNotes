<h1 style="color:#FF6347;">🌟 Neon Academy Membership Management</h1>

Welcome to the **Neon Academy Membership Management** project! This Swift-based application helps manage and display information for members of Neon Academy, allowing for tracking of member details and motivational levels. The project includes functionalities for viewing and adjusting motivation levels, making it easy to monitor and encourage members’ progress.

---

<h2 style="color:#4682B4;">📜 Table of Contents</h2>

1. <a href="#project-overview" style="color:#4682B4;">Project Overview</a>
2. <a href="#features" style="color:#4682B4;">Features</a>
3. <a href="#structs-and-enums" style="color:#4682B4;">Structs and Enums</a>
4. <a href="#functions" style="color:#4682B4;">Functions</a>
5. <a href="#usage-example" style="color:#4682B4;">Usage Example</a>

---

<h2 id="project-overview" style="color:#FF6347;">📖 Project Overview</h2>

The **Neon Academy Membership Management** project is a straightforward tool for organizing and displaying essential data about academy members. Each member is associated with a specific team and motivation level. The project offers functions to modify, display, and assess motivational levels, which are crucial for tracking members' engagement and progress.

---

<h2 id="features" style="color:#4682B4;">✨ Features</h2>

This project includes several key features:

- **Member Information Tracking**: Manage members' basic information, including name, age, team, and contact details.
- **Motivation Level Management**: Increase and display members’ motivation levels to encourage engagement.
- **Motivational Status Display**: Shows motivation level messages based on pre-defined thresholds.
- **Target Motivation Check**: Evaluate if members have met a specified motivation target.

---

<h2 id="structs-and-enums" style="color:#FF6347;">🏗️ Structs and Enums</h2>

The core data structure of the project includes:

- **Team (Enum)**: Defines the team each member belongs to.
  - `.iOSdevelopment`
  - `.androiddevelopment`
  - `.UIuXdesign`
- **NeonAcademyMember (Struct)**: Holds member details such as `firstName`, `lastName`, `age`, `contactInfo`, `team`, and `motivationLevel`.

Each member attribute includes:
- **First Name**
- **Last Name**
- **Age**
- **Contact Information**
- **Team**
- **Motivation Level**

---

<h2 id="functions" style="color:#4682B4;">⚙️ Functions</h2>

This project comes with key functions for managing and displaying member data:

1. **increaseMotivation(by amount: Int)** - Increases the member’s motivation level by a specified amount.
2. **printMotivationMessage(for member: NeonAcademyMember)** - Displays a message based on the member's current motivation level.
3. **motivationStatus(for level: Int?) -> String** - Returns a motivational status string based on the level.
4. **getMotivationLevel(for member: NeonAcademyMember) -> Int** - Retrieves the member’s motivation level or a default value if none is set.
5. **meetsMotivationTarget(for member: NeonAcademyMember, targetLevel: Int) -> Bool** - Checks if the member’s motivation level meets or exceeds the specified target.

These functions provide a clean, efficient way to manage and display member motivation, ensuring the project remains easy to use and expand.

---

<h2 id="usage-example" style="color:#FF6347;">💡 Usage Example</h2>

Here’s an example usage of the Neon Academy Membership Management project:

```swift
// Define members
var members: [NeonAcademyMember] = [
    NeonAcademyMember(firstName: "Sercan", lastName: "Yeşilyurt", age: 26, contactInfo: "+90 543 123 456", team: .iOSdevelopment, motivationLevel: 0),
    NeonAcademyMember(firstName: "Kerem", lastName: "Akpınar", age: 28, contactInfo: "123456", team: .androiddevelopment, motivationLevel: 2)
]

// Increase motivation and display results
members[0].increaseMotivation(by: 1)
printMotivationMessage(for: members[0])
print(motivationStatus(for: members[0].motivationLevel))
print("Motivation level is: \(getMotivationLevel(for: members[0]))")
print(meetsMotivationTarget(for: members[0], targetLevel: 2))
