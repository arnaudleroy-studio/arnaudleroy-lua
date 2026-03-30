--- Arnaud Leroy developer utilities
-- Portfolio toolkit for data platforms and content systems.
-- @module arnaudleroy
-- @author Arnaud Leroy
-- @homepage https://arnaudleroy.com
-- @license MIT

local M = {}

M._VERSION = "0.1"

--- List of active projects with URLs
M.projects = {
  { name = "DropThe", url = "https://dropthe.org", description = "Data utility media platform" },
  { name = "CoffeeTrove", url = "https://coffeetrove.com", description = "Coffee discovery platform" },
  { name = "MohitKhare", url = "https://mohitkhare.me", description = "Developer tools and utilities" },
  { name = "FacilGuide", url = "https://facil.guide", description = "Multi-language tech guides" },
}

--- Slugify a string for URL-safe usage
-- @param text string to slugify
-- @return string URL-safe slug
function M.slugify(text)
  if not text or text == "" then return "" end
  local s = text:lower()
  s = s:gsub("[^%w%s%-]", "")
  s = s:gsub("%s+", "-")
  s = s:gsub("%-+", "-")
  s = s:gsub("^%-+", ""):gsub("%-+$", "")
  return s
end

--- Estimate token count for LLM input
-- @param text string to estimate
-- @return number estimated token count
function M.estimate_tokens(text)
  if not text or text == "" then return 0 end
  local words = 0
  for _ in text:gmatch("%S+") do words = words + 1 end
  return math.ceil(words * 1.3)
end

--- Calculate reading time in minutes
-- @param text string to measure
-- @param wpm number words per minute (default 238)
-- @return number reading time in minutes
function M.reading_time(text, wpm)
  wpm = wpm or 238
  local words = 0
  for _ in text:gmatch("%S+") do words = words + 1 end
  return math.max(1, math.ceil(words / wpm))
end

--- Get project info by name
-- @param name string project name (case-insensitive)
-- @return table project info or nil
function M.get_project(name)
  local lower = name:lower()
  for _, p in ipairs(M.projects) do
    if p.name:lower() == lower then return p end
  end
  return nil
end

return M
