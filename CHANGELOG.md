
3
- Updated compatibility for Patch 12.1.0
- Added all known rewards for **Zul'jarra's Forces**
- Added the **Cappy** pet reward to Ritual Sites (Thank you *Wyldclaw* for pointing this out on CurseForge!)

2.1
- Added a map pin button to faction headers for factions with a known Quartermaster vendor location
- Updated Mount preview to open in a Dressing Room window instead of the Mount Journal
- Added Pet preview that opens in a Dressing Room window when the item's icon is control-clicked
- Updated compatibility for Patch 12.0.7

2
- Added support for Dragonflight renown rewards across all major factions
- Added ability to *Control-Click* on certain reward icons to see a preview
  - Cosmetic and Gear rewards open the Dressing Room
  - Decor rewards open the Housing Model viewer
  - Mount rewards open the Mount Journal
- Updated "Show Everything" checkbox to now respect type filter selections when enabled, bypassing only renown level and collection-based checks
- Hid the equipped item comparison tooltip when hovering over the icon for an equipment slot item
- *Bug Fix:* Corrected owned status detection for Decor rewards

1
- Added renown rewards for **Council of Dornogal**, **Assembly of the Deeps**, **Hallowfall Arathi**, **Cartels of Undermine**, **Flame's Radiance**, **Severed Threads**, and **Karesh Trust**
- Added a manual list refresh button to the main window
- Added a button to apply or remove all active filters at once
- Updated gear reward visibility to also show items when transmog appearance has not yet been learned, regardless of item level
- Improved quest name display to more consistently show the actual quest name in reward entries
- Removed *Dragonflight* and *Shadowlands* from expansions dropdown
- *Bug Fix:* Corrected item level display for certain gear rewards that return inaccurate values from the API
- *Bug Fix:* Corrected visibility of cloak rewards in the rewards list
- *Bug Fix:* Dynamically adjust Expand/Collapse button width for factions to avoid clipping text on lower resolutions

1-beta
- Added a minimap button that toggles the AddOn window, with a `/rrt minimap` slash command to show or hide it
- Added AddOn Compartment button support for opening the AddOn window and viewing usage info

0.6
- Updated visibility conditions for Gear rewards to hide when not an item level upgrade over currently equipped gear
- **Bug Fix:** Updated determination logic for learned Recipes to accurately show/hide them in the list

0.5
- Added a "Show All" checkbox that bypasses filters selections to display every reward
- *Bug Fix:* Updated Gear item tooltips to reflect the item level available at each vendor
- *Bug Fix:* Corrected item ID for **Silvermoon Sanctum Focus**

0.4
- Added renown rewards for both **The Singularity** and **Ritual Sites**
- Added visibility toggle to faction headers
- Increased default window width and adjusted filter positioning

0.3
- Added renown rewards for **Hara'ti**
- *Bug Fix:* Standardized display logic for gear rewards to consistently appear based on preferred armor type

0.2
- Updated list building logic so owned/previously collected rewards are hidden
- Added tooltip for a reward's currency cost with each currency's icon, name, and quantity owned vs. quantity required
- *Bug Fix:* Corrected currency ID for **Artisan Blacksmither's Moxie**
- *Bug Fix:* Corrected visibility for some profession-gated rewards

0.1
- Listed renown rewards for **Silvermoon Court** and **Amani Tribe**
- Added filters for renown rewards by type (Mounts, Recipes, Toys, Pets, Cosmetics, Decor, Quests, Professions)
- Adjusted reward visibility so that Profession-specific rewards are only shown when a character know the relevant profession