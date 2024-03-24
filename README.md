# NeoVimConfig

## Structure:

    ├─lua
    │  ├─Appearance
    │  ├─Behavior
    │  ├─Common
    │  ├─Extension
    │  │  ├─lazy
    │  │  ├─lualine
    │  │  ├─neodev
    │  │  ├─nvim-tree
    │  │  ├─nvim-web-devicons
    │  │  └─tokyonight
    │  ├─File
    │  ├─Key
    │  └─Preset
    └─temp

### Explain:

#### Directoris(Under lua):
Preset: Set the environment before loading formally.

Common: Define some common functionalities.

Behaviour: How NeoVim behaves: Tab stop at *, shift to how long , search incrementally , ... 
File: How to recognize , parse , explain files
Key: Define some operations related with key: map , ...

Appearance: Graphic User Interface , Theme , Font , Icon , ...

Extension: A space to set for various extensions.

#### How:
How I created these structure?

    Based on:
        1. Functional Area
        2. Developing Facility
        3. Semantic Description

    Now the base dirs are limited by NeoVim's Pre-defined structure.
