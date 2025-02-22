<h1 style="color:#FF6347;">🤖 SnapKitt Robot Control Interface</h1>

Welcome to the **SnapKitt** app, a simple Swift application that showcases a modern robot control interface using **SnapKit** for UI layout management. This app includes toggling buttons for activating and deactivating two robots, displayed in a visually organized layout.

---

<h2 style="color:#4682B4;">🔍 Table of Contents</h2>

1. <a href="#project-overview" style="color:#4682B4;">Project Overview</a>
2. <a href="#features" style="color:#4682B4;">Features</a>
3. <a href="#classes-and-structures" style="color:#4682B4;">Classes and Structures</a>
4. <a href="#functions" style="color:#4682B4;">Functions</a>

---

<h2 id="project-overview" style="color:#FF6347;">📖 Project Overview</h2>

The **SnapKitt** app provides a minimalistic control interface for two robots, each with its own control button, label, and image view. Using **SnapKit** for Auto Layout makes the UI flexible and responsive. The main screen displays robot information in structured views with labels, images, and control buttons to switch each robot's status between "Turn On" and "Turn Off".

---

<h2 id="features" style="color:#4682B4;">✨ Features</h2>

Key features of **SnapKitt** include:

- **Dynamic UI Elements**: Each robot has an individual view, label, image, and button.
- **Toggle Button for Each Robot**: Activates or deactivates each robot independently, changing both title and color.
- **Modern Layout with SnapKit**: All elements are laid out using **SnapKit** constraints for consistency and maintainability.

---

<h2 id="classes-and-structures" style="color:#FF6347;">🏗️ Classes and Structures</h2>

The **SnapKitt** project contains one primary class:

- **ViewController**: Manages the UI for displaying and controlling two robots, each with independent labels, images, and toggle buttons.

---

<h2 id="functions" style="color:#4682B4;">⚙️ Functions</h2>

1. **viewDidLoad()**: Sets up the views, labels, images, and buttons, configuring SnapKit constraints and appearance.
2. **robotButtonTapped()**: Toggles the title and background color of the button associated with Robot 1.
3. **robotButton2Tapped()**: Toggles the title and background color of the button associated with Robot 2.

---
