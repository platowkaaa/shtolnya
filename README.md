# The Adit

A short first-person horror game set in an abandoned Cornish tin mine, 1897.
Made solo in Godot 4 as a portfolio project.

## About

Wheal Hendra, March 1897. The mine surveyor W. H. Pascoe went down to finish
his survey and never came back up. His survey sheets are still down there.

You go down after him with a lantern. Light the wall lamps to mark your way
back, find the surveyor's notes, and restore power to reach the cage.
Once the power is on, something else knows you are there.

## Controls

| Key     | Action               |
|---------|----------------------|
| W A S D | Move                 |
| Mouse   | Look                 |
| Shift   | Walk faster          |
| E       | Interact / next page |
| Esc     | Pause / close note   |

## Running the project

1. Install Godot 4.6.
2. Clone this repository.
3. Open `project.godot` in Godot and press F5.

## Status

- [x] Core loop on blockout (v0.1-loop)
- [x] Full playthrough, start to ending (v0.2-slice)
- [ ] Art pass: models and textures (in progress)
- [ ] Shaders, light and sound
- [ ] Release on itch.io

## Tech

- Godot 4.6, Compatibility renderer, GDScript
- Blender for all 3D models
- Custom triplanar shader that blends rock and dirt with a vertex-colour mask painted in Blender

## Credits

Made by Platon.
Third-party assets are listed in [CREDITS.md](CREDITS.md).
Built with help from an AI assistant (Claude) code help, placeholder textures and text drafts.