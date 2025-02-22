<h1 style="color:#FF6347;">🔐 Decryption App with NotificationCenter</h1>

Welcome to the **Decryption App**, a Swift-based project that simulates a decryption process with a 15-second countdown and message notification system. This app uses **NotificationCenter** to handle inter-view communication, updating the decryption message across screens after verification.

---

<h2 style="color:#4682B4;">🔍 Table of Contents</h2>

1. <a href="#project-overview" style="color:#4682B4;">Project Overview</a>
2. <a href="#features" style="color:#4682B4;">Features</a>
3. <a href="#classes-and-structures" style="color:#4682B4;">Classes and Structures</a>
4. <a href="#functions" style="color:#4682B4;">Functions</a>
5. <a href="#usage-example" style="color:#4682B4;">Usage Example</a>

---

<h2 id="project-overview" style="color:#FF6347;">📖 Project Overview</h2>

The **Decryption App** allows a user to enter a secret code, triggering a countdown and decryption message display. The code is verified in **ViewController**, and upon success, the app navigates to **SecondViewController** where a 15-second countdown initiates. A decryption message is then broadcasted via **NotificationCenter** to display the decoded message.

---

<h2 id="features" style="color:#4682B4;">✨ Features</h2>

This application includes the following features:

- **Code Verification**: Ensures the entered code matches the expected value.
- **Countdown Timer**: Shows the remaining time until decryption is complete.
- **Message Notification**: Uses **NotificationCenter** to update the message on the second screen upon decryption completion.
- **Auto-clear**: Clears the decryption message after displaying for a few seconds.

---

<h2 id="classes-and-structures" style="color:#FF6347;">🏗️ Classes and Structures</h2>

The app includes two main classes:

1. **ViewController**: Manages the code entry and verification process.
2. **SecondViewController**: Handles the countdown and displays the decryption message using **NotificationCenter**.

---

<h2 id="functions" style="color:#4682B4;">⚙️ Functions</h2>

Key functions in this project include:

1. **decryptButtonTapped(_ sender: UIButton)**: Checks the entered code, starts the decryption process, and navigates to **SecondViewController** upon verification.
2. **startCountdown()**: Initiates a 15-second countdown in **SecondViewController**.
3. **updateCountdown()**: Updates the countdown label every second until reaching zero.
4. **handleDecryptionComplete(_ notification: Notification)**: Listens for the "DecryptionComplete" notification, updating the label with the decoded message.

---

<h2 id="usage-example" style="color:#FF6347;">💡 Usage Example</h2>

Here’s how the **Decryption App** flows:

```swift
// User enters code "1234" in ViewController
// Upon pressing "Decrypt", the app verifies the code

@IBAction func decryptButtonTapped(_ sender: UIButton) {
    // Code is correct, initiate decryption process
    // Notification posts "Decoded Secret Message" after 15 seconds
}

// In SecondViewController, countdown begins, displaying "Decryption in progress... X seconds left"

@objc func handleDecryptionComplete(_ notification: Notification) {
    // Displays "Decoded Secret Message" after countdown finishes
}

// Auto-clears the message after 3 seconds for a seamless UX
