#include "raylib.h"

const char WIN_TITLE[] = "Pandastat 0.0.1v";
const Color COLOR_BG = BLACK;
const int WIN_RES[][2] = {
    {1920, 1080},
    {1366, 768},
    {1280, 720},
    {800, 600},
    {640, 480},
    {320, 240}
};

int main(void) {
  // Create the window --------------------------------------------------
  const int WIN_W = WIN_RES[2][0]; // Changes window resolution
  const int WIN_H = WIN_RES[2][1];

  InitWindow(WIN_W, WIN_H, WIN_TITLE);
  SetTargetFPS(30);

  while (!WindowShouldClose()) {
  BeginDrawing();
    ClearBackground(COLOR_BG);

  EndDrawing();

  CloseWindow();
  return 0;
}