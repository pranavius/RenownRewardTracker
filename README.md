# Renown Reward Tracker

_Easily view renown rewards and track which are available per character_

[![Discord](https://img.shields.io/badge/join-5865F2?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/rqXW2cenWg)
[![Patreon](https://img.shields.io/badge/support-F96854?style=for-the-badge&logo=patreon)](https://patreon.com/cw/Pranavius)

**Renown Reward Tracker** gives you a scrollable, filterable list of every renown reward across all major factions, showing only the ones your current character hasn't collected yet. No more opening each faction's renown panel one by one to figure out what's left.

Currently provides information on the renown-based factions from the following expansions:
- Midnight

Non-renown based factions are not currently supported, but may be in a future update.

## Highlights

- Lists all renown rewards for every major faction by expansion, organized by faction with collapsible headers
- Automatically hides items you've already collected
- Only shows Gear rewards when they are an item level upgrade over what is currently equipped for your character (useful for quickly gearing alts)
- Profession-specific rewards are hidden when a character does not know that profession
- Filter by reward type to focus on exactly what you're looking for
- Hover over the currency cost to see a tooltip with each currency's icon, name, and how much you have vs. what's needed
- DataBroker integration for quick access via minimap button or any DataBroker display AddOn
- AddOn Compartment integration so you can open the AddOn when the minimap button is hidden

## Summary

**Renown Reward Tracker** is designed to cut down the time spent hunting for uncollected renown rewards. When you open the window, it scans your character and builds a list of everything that is still available — items you own are automatically excluded, gear that isn't an upgrade is skipped, and rewards gated behind professions you haven't learned won't clutter the list.

Rewards are grouped under their faction's header. Each header has a **Show/Hide** button so you can collapse factions you've finished or aren't interested in at the moment. A **Show All** checkbox is also available if you want to see every reward regardless of what you've already collected.

Currently supported factions:
- **Midnight**
  - Silvermoon Court
  - Amani Tribe
  - Hara'ti
  - The Singularity
  - Ritual Sites

## Usage

Open the AddOn window with the slash command `/rrt` or `/renownrewardtracker`. Running the same command again will close it. The window can also be opened from the minimap button or AddOn Compartment.

### Filters

The AddOn provides a number of filter selectors for each reward type. Click any filter to toggle it on or off.

Currently available filters:
- **Mounts**
- **Recipes**
- **Professions**
- **Cosmetics**
- **Toys**
- **Pets**
- **Quests**
- **Decor**
- **Gear**

The **Show All** checkbox bypasses all active filters and displays every reward regardless of ownership or filter state.

### Slash Commands

- `/rrt` — Open or close the AddOn window
- `/rrt debug` — Toggle debug mode on or off
- `/rrt minimap` — Toggle the minimap button
- `/rrt help` — List available slash commands

## Connect

Feedback on this AddOn or any others that I develop/maintain is always welcome. If you enjoy using any of my AddOns and would like to support future development, it is greatly appreciated.

[![GitHub](https://img.shields.io/badge/github-000000?style=for-the-badge&logo=github)](https://github.com/pranavius)
[![X](https://img.shields.io/badge/@PranaviusWoW-000000?style=for-the-badge&logo=x)](https://x.com/PranaviusWoW)
[![Email](https://img.shields.io/badge/email-ffffff?style=for-the-badge&logo=gmail)](mailto:pranavius1@gmail.com)
