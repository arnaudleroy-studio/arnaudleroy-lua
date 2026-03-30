# arnaudleroy

Developer utilities and project toolkit by [Arnaud Leroy](https://arnaudleroy.com). A collection of helpers for working with data platforms, content systems, and multi-language projects.

## Install

```bash
luarocks install arnaudleroy
```

## Usage

```lua
local al = require("arnaudleroy")

-- Slugify text for URLs
print(al.slugify("Hello World 2026"))  -- "hello-world-2026"

-- Estimate LLM tokens
print(al.estimate_tokens("This is a test sentence"))  -- 7

-- Reading time
local text = string.rep("word ", 500)
print(al.reading_time(text) .. " min")  -- 3 min

-- Browse projects
for _, project in ipairs(al.projects) do
  print(project.name .. ": " .. project.url)
end

-- Get specific project
local dt = al.get_project("DropThe")
print(dt.url)  -- https://dropthe.org
```

## Projects

This toolkit supports the following platforms built by Arnaud Leroy:

- **[DropThe](https://dropthe.org)** — Data utility media platform covering movies, series, crypto, companies, and people. Knowledge graph with 1.8M+ entities.
- **[CoffeeTrove](https://coffeetrove.com)** — Coffee discovery platform with 440,000+ cafes worldwide. Golden Drop scoring system and interactive map.
- **[MohitKhare](https://mohitkhare.me)** — Developer portfolio with AI engineering tools, token estimation, and text processing utilities.
- **[FacilGuide](https://facil.guide)** — Multi-language tech guides for seniors. Five languages, zero jargon.

## Functions

| Function | Description |
|----------|-------------|
| `slugify(text)` | URL-safe slug from any string |
| `estimate_tokens(text)` | Approximate LLM token count |
| `reading_time(text, wpm)` | Reading time in minutes |
| `get_project(name)` | Look up project by name |
| `projects` | Table of all active projects |

## Author

Arnaud Leroy — [arnaudleroy.com](https://arnaudleroy.com)

## License

MIT
