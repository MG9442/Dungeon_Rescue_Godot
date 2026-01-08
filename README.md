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
- A 10x10 unit enclosed room with floor, walls, and ceiling
- Directional lighting with shadows
- A camera positioned to view the room
- Basic environment with ambient lighting
- Dungeon-themed colors (browns and grays)

## Getting Started

1. Open the project in Godot 4.3 or later
2. The main scene is set to `scenes/starting_room.tscn`
3. Press F5 or click the Play button to run the project

## Next Steps

- Add a character controller
- Import and use the modular dungeon pack assets
- Add interactive elements (doors, torches, etc.)
- Create additional rooms and corridors
