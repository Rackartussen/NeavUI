# Neav UI (fan update)

## Changes and additions

**oUF_Neav:**

- Different short value formatting for player, target, pet and party frames is different (e.g. 1.1m instead of 1M 100K).
- Added Blizzards holy power, eclipse and soulshard bars, they fit the UI very nicely.

**Raid frames:**

- Now using the built-in heal prediction from oUF (kind of like healcomm).
- Healing indicators for all classes (I hope), as well as soulstone, focus magic and dark intent.
- Healing indicators now have a "cooldown spiral" for duration.
- Mouse-over indicator (darkening the color when hovering over a frame).
- Disabled smooth updates for healing classes (can be enabled via `oUF_NeavConfig.lua`).
- Mana bars (enabled in `oUF_NeavConfig.lua`)

**nMainbar:**

- Option to have a vertical petbar (see `nMainbar_Config.lua`).

**Misc:**

- Healthbar on tooltips now have a textual representation on it as well.
- Fixed position and font size for player/cursor coordinates on world map.
- Added a copy chat function to nChat, use it by right-clicking on the chat tab. Also added a URL copy function.

## Known issues

- The quest blob on the map is still a cause for taint, not really sure what's causing it and if it really needs fixing.
- Changing glyphs sometimes doesn't work because of taint from somewhere.

## Installation

## Bugs?

## Credits
Anton 'Neav' Ickert for creating this wonderful UI.

## Screenshots
