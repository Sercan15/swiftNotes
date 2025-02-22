<h1 style="color:#FF6347;">🤠 Wild West Action Interface</h1>

Welcome to the **Wild West Action Interface**, an engaging iOS application that combines unique action buttons and animations with sound effects for a western-themed experience. Developed with **UIKit** and **AVFoundation** for sound integration, this app lets users interact with various roles from the Wild West, including the Sheriff, Blacksmith, Saloon, and Robber, with dynamic button styles and actions.

---

<h2 style="color:#4682B4;">🔍 Table of Contents</h2>

1. <a href="#project-overview" style="color:#4682B4;">Project Overview</a>
2. <a href="#features" style="color:#4682B4;">Features</a>
3. <a href="#classes-and-structures" style="color:#4682B4;">Classes and Structures</a>
4. <a href="#functions" style="color:#4682B4;">Functions</a>

---

<h2 id="project-overview" style="color:#FF6347;">📖 Project Overview</h2>

The **Wild West Action Interface** brings Wild West character actions to life through interactive buttons with sound and animations. Each character has a unique button to trigger actions, sounds, or animations like the Sheriff’s backup call, the Saloon’s specials display, and the Robber’s bank heist animation. Using **UIKit** for the interface and **AVFoundation** for audio effects, this app is structured to deliver a responsive, thematic experience.

---

<h2 id="features" style="color:#4682B4;">✨ Features</h2>

Key features of **Wild West Action Interface** include:

- **Unique Action Buttons**: Each button performs a different action, including sound and visual feedback.
- **Interactive UI with AVFoundation**: Includes sound effects to enhance immersion.
- **Character-Specific Animations**: Robber's button shakes, the Sheriff’s dropdown offers multiple options, and other buttons display themed content.

---

<h2 id="classes-and-structures" style="color:#FF6347;">🏗️ Classes and Structures</h2>

The primary class in the **Wild West Action Interface** project is:

- **ViewController**: Manages the main user interface, including button actions, sound playback, and animations. 

---

<h2 id="functions" style="color:#4682B4;">⚙️ Functions</h2>

1. **viewDidLoad()**: Initializes all UI components and sets up their constraints.
2. **playSound()**: Plays a specific sound file to enhance actions.
3. **setupSheriffButton()**: Configures the Sheriff's button, which includes a dropdown menu for additional options.
4. **setupSaloonButton()**: Displays daily specials in a message label when tapped.
5. **setupVigilanteButton()**: Changes color while pressed, providing visual feedback for vigilante actions.
6. **setupBlacksmithButton()**: Toggles an additional button state and color for a crafted tool.
7. **setupRobberButton()**: Triggers a "shake" animation with sound for the Robber's bank heist.
8. **robTheBank()**: Plays a sound and shakes the button to simulate a bank robbery.
9. **toggleButtonState()**: Activates or deactivates the Blacksmith’s secondary button.
10. **toggleDropdownMenu()**: Shows or hides the dropdown menu for the Sheriff’s actions.
11. **callBackup()**: Displays a message indicating that backup has been called.
12. **issueWarning()**: Updates the message label to warn townspeople.
13. **showDailySpecials()**: Shows daily specials in the message label.

--- 

Enjoy an interactive and thematic Wild West experience!
