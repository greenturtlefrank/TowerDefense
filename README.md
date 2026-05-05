# Tower Defense (2022 IP2 Project 2)

A classic **Tower Defense** game built using the **Allegro 5** game engine. Strategy is key as you build defenses to stop waves of enemies from reaching your base.

## Controls

### Menu 
* **Start Game**: Click **Start** on the main menu.
* **Unit Selection**: Choose **Soldiers** based on the available space.
* **Settings**: Click the **Settings** icon to adjust volume. 
* **Reset**: Press **Reset** to reset the current level or game state.
* **Final Step**: Press **ENTER** to officially begin the game.



<!-- ## Battle Units & Arsenal

Every unit in the game is designed with specific tactical trade-offs involving **Space Cost**, mobility, and environmental interaction. Manage your deployment strategy to maximize the efficiency of your siege.


### 1. Soldier (Viking)
*   **Space Cost**: 1
*   **Role**: Basic Infantry
*   **Ability**: The backbone of your offensive force. Their low space cost allows for high-density swarming. While individually weak, they provide consistent pressure against standard defenses.

### 2. The Heavy (Fat Man)
*   **Space Cost**: 3
*   **Role**: Stationary Tank
*   **Ability**: Possesses an **immense HP pool** but remains **stationary** once deployed. Use him as a permanent meat-shield to soak up turret fire, creating a safe zone for higher-damage units to operate.

### 3. Wall Breaker (Bomb)
*   **Space Cost**: 10
*   **Role**: Demolition Specialist
*   **Ability**: Specifically engineered for **structural destruction**. These units target and destroy enemy walls, opening new lanes of attack and rendering the opponent's maze-building strategies obsolete.

### 4. Fighter Plane
*   **Space Cost**: 30
*   **Role**: Aerial Superiority
*   **Ability**: The ultimate tactical asset. It **ignores all wall collisions**, flying directly over obstacles to strike core objectives. Its high cost reflects its ability to bypass complex ground-based defense systems entirely. -->




## Technical Setup

* **Language**: C++
* **Game Engine**: Allegro 5.2.6.0 (Automatically handled via Makefile)
* **Compiler**: MinGW-w64 / g++



## Project Structure

* `src/`: Core game logic and object implementations.
    * `main.cpp`: Entry point of the application.
    * `GameEngine.cpp`: Handles the main event loop and engine initialization.
    * `PlayScene.cpp`: Manages level logic, spawning, and collision detection.
    * `Army.cpp` / `Defense.cpp`: Base classes for enemies and towers.
* `resources/`: Contains all game assets (images, audios, fonts).
* `allegro/`: Streamlined Allegro 5 library components (install throught makefile).



## How to Build & Run
   ```powershell
   make setup

   make

   ./TowerDefense.exe
   ```
