# Define the executable file
EXEC = -o out/main.exe

# Define the source files
SRC = src/pandastat.c

# Define any compile-time flags
FLAGS_H = -g -Wall -Wextra -pedantic  # Hard flags
FLAGS_E = -g -Wall                    # Easy flags

# RayLib
RAYLIB = -I src/raylib/include -L src/raylib/lib -lraylib -lopengl32 -lgdi32 -lwinmm


make:
	gcc $(SRC) $(EXEC) $(FLAGS_E) $(RAYLIB)


