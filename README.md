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

## Character Controller

The player character uses the Knight model from the Quaternius character pack:
- **Movement**: WASD keys
  - W: Move forward
  - S: Move backward
  - A: Move left
  - D: Move right
- Character automatically rotates to face movement direction
- Smooth camera follows the player with a third-person perspective
- Physics-based movement with acceleration and friction

## Getting Started

1. Open the project in Godot 4.3 or later
2. The main scene is set to `scenes/starting_room.tscn`
3. Press F5 or click the Play button to run the project
4. Use WASD keys to move the knight character around the dungeon

## Next Steps

- Add animations to the character (idle, walk, run)
- Add interactive elements (doors, chests, levers)
- Create additional rooms and corridors
- Add combat mechanics
- Add enemy NPCs
- Implement inventory system
