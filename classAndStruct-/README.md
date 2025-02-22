<h1 style="color:#FF6347;">🌟 Neon Academy Member - Class and Struct </h1>

Welcome to the **Neon Academy Member Directory** project! This Swift-based application helps manage and display information for members of Neon Academy, providing an organized approach to track details such as names, roles, horoscopes, and contact information.

---

<h2 style="color:#4682B4;">📜 Table of Contents</h2>

1. <a href="#project-overview" style="color:#4682B4;">Project Overview</a>
2. <a href="#features" style="color:#4682B4;">Features</a>
3. <a href="#structs-and-classes" style="color:#4682B4;">Structs and Classes</a>
4. <a href="#functions" style="color:#4682B4;">Functions</a>
5. <a href="#usage-example" style="color:#4682B4;">Usage Example</a>

---

<h2 id="project-overview" style="color:#FF6347;">📖 Project Overview</h2>

The **Neon Academy Member Directory** project is designed to organize and display essential data about members in the Neon Academy. It utilizes Swift protocols, structs, and classes to create a flexible and extensible structure for storing and retrieving member information.

---

<h2 id="features" style="color:#4682B4;">✨ Features</h2>

This project includes several key features:

- **Member Information Management**: Stores each member’s name, title, horoscope, membership level, home town, age, and contact details.
- **Information Display**: Allows displaying of detailed member information through a unified interface.

---

<h2 id="structs-and-classes" style="color:#FF6347;">🏗️ Structs and Classes</h2>

The core data structures in the project include:

- **ContactInfo (Struct)**: Stores the contact information of a member, including phone and email.
- **NeonAcademyMemberStruct (Struct)**: A struct-based implementation of a member that conforms to `MemberInfoDisplayable`, storing details such as `name`, `title`, `horoscope`, `memberLevel`, `homeTown`, `age`, and `contactInfo`.
- **ContactInformation (Class)**: Stores the contact information (phone number and email) in a reference-type class.
- **NeonAcademyMember (Class)**: A class-based implementation of a member that conforms to `MemberInfoDisplayable`, storing the same details as `NeonAcademyMemberStruct` but as a reference type.

Each member attribute includes:
- **Name**
- **Title**
- **Horoscope**
- **Membership Level**
- **Home Town**
- **Age**
- **Contact Information**

---

<h2 id="functions" style="color:#4682B4;">⚙️ Functions</h2>

This project includes several functions for managing and displaying member data:

1. **displayInfo()** - Defined in `MemberInfoDisplayable` protocol and implemented in both `NeonAcademyMemberStruct` and `NeonAcademyMember`, it prints detailed information about each member.
2. **displayAllMembersInfo(members: [MemberInfoDisplayable])** - A function that iterates through all members in the given list and calls `displayInfo()` for each one, providing a full display of all members' information.

These functions ensure that the project remains easy to use and allows for quick data retrieval and display.

---

<h2 id="usage-example" style="color:#FF6347;">💡 Usage Example</h2>

Here’s an example usage of the Neon Academy Member Directory project:

```swift
// Define members
let newMemberContact = ContactInfo(phone: "1233445", email: "example@gmail.com")
let newMember = NeonAcademyMemberStruct(name: "Jane Doe", title: "Developer", horoscope: "Gemini", memberLevel: "A1", homeTown: "NYC", age: 29, contactInfo: newMemberContact)

let memberContact = ContactInformation(phoneNumber: "0537 565 1304", email: "john.doe@gmail.com")
let member = NeonAcademyMember(fullName: "John Doe", title: "iOS Developer", horoscope: "Scorpio", memberLevel: "A2", homeTown: "San Francisco", age: 32, contactInformation: memberContact)

// Add members to a list and display information
var allMembers: [MemberInfoDisplayable] = [newMember, member]
displayAllMembersInfo(members: allMembers)
