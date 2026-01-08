# Dungeon Rescue

A dungeon exploration game built with Godot 4.

## Project Structure

- `scenes/` - Game scenes
  - `starting_room.tscn` - The initial starting room
- `scripts/` - GDScript files
- `assets/` - Game assets
- `Updated Modular Dungeon Pack/` - 3D dungeon models (FBX)
- `Knight Character Animated by Quaternius/` - Character assets
- `RPG Characters/` - Additional character assets

## Starting Room

The starting room (`scenes/starting_room.tscn`) includes:
- A 25' x 12' x 10' enclosed room (matching sketch dimensions)
- Floor, walls, and ceiling built with CSG primitives
- Four corner torches with glowing flames and warm point lights
- Directional lighting with shadows for overall illumination
- Camera positioned to view the entire room
- Enhanced environment with SSAO and tonemapping
- Dungeon-themed colors and atmospheric lighting

## Getting Started

1. Open the project in Godot 4.3 or later
2. The main scene is set to `scenes/starting_room.tscn`
3. Press F5 or click the Play button to run the project

## Next Steps

- Add a character controller
- Replace CSG primitives with modular dungeon pack assets from `Updated Modular Dungeon Pack/FBX/`
  - The FBX files will auto-import when you open the project in Godot
  - You can drag and drop the imported models into the scene
- Add interactive elements (doors, chests, etc.)
- Create additional rooms and corridors
