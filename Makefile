# Makefile for Windows
CXX = g++

ALLEGRO_DIR = allegro
ALLEGRO_URL = "https://github.com/liballeg/allegro5/releases/download/5.2.6.0/allegro-x86_64-w64-mingw32-gcc-9.2.0-posix-seh-static-5.2.6.0.zip"

CXXFLAGS = -std=c++11 -O2 -I./src -I./$(ALLEGRO_DIR)/include
LDFLAGS = -lm -Wall -Wextra
LDLIBS = -L./$(ALLEGRO_DIR)/lib -lallegro_monolith.dll

FILES = Allegro5Exception ArcherArmy ArcherBullet Army ArmyBullet \
        ArmyButton ArmySelectScene AudioHelper BombArmy Bullet \
        CannonBullet CannonDefense Collider Defense DirtyEffect \
        DisappearCannon ExplosionEffect FrozenEffect GameEngine \
        Group Hide HideEffect Ice IControl Image ImageButton \
        InvisibleBombBullet InvisibleBombDefense IObject IScene \
        Label LOG LoseScene main MineBomb NurseArmy \
        NurseBullet Plane PlayScene Point Resources Role \
        Setting_Scene Slider Sprite StageSelectScene \
        Start_Scene StrongArmy StrongCannonBullet \
        StrongCannonDefense WallDefense WinScene

exe = TowerDefense.exe
obj = $(addprefix src/, $(addsuffix .o, $(FILES)))

.PHONY: all clean setup

all: $(exe)
	@echo "Copying DLLs..."
	@if exist "$(ALLEGRO_DIR)\bin" copy /y "$(ALLEGRO_DIR)\bin\*.dll" "."

$(exe): $(obj)
	$(CXX) -o $@ $(obj) $(LDFLAGS) $(LDLIBS)

src/%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

setup:
	@echo "Cleaning old files..."
	@if exist "temp_setup" rmdir /s /q temp_setup
	@if exist "allegro.zip" del allegro.zip
	@echo "Downloading Allegro..."
	@powershell -Command "Invoke-WebRequest -Uri $(ALLEGRO_URL) -OutFile allegro.zip"
	@echo "Extracting..."
	@powershell -Command "Expand-Archive -Path allegro.zip -DestinationPath temp_setup"
	@echo "Moving files to ./$(ALLEGRO_DIR)..."
	@if exist "$(ALLEGRO_DIR)" rmdir /s /q $(ALLEGRO_DIR)
	@move temp_setup\allegro $(ALLEGRO_DIR)
	@rmdir /s /q temp_setup
	@del allegro.zip
	@echo "Setup complete!"

clean:
	del $(exe) src\*.o