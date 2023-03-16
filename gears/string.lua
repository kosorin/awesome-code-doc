---@meta gears.string

---Various string manipulation and introspection fuctions.
---@class _gears.string
local M

---Escape a string from XML char. Useful to set raw text in textbox.
---@param text string Text to escape.
---@return string # Escaped text.
function M.xml_escape(text) end

---Unescape a string from entities.
---@param text string # Text to unescape.
---@return string # Unescaped text.
function M.xml_unescape(text) end

---Count number of lines in a string.
---@param text string # Input string.
---@return integer count # Number of lines.
function M.linecount(text) end

---Split a string into multiple lines.
---@param text string # String to wrap.
---@param width number # Maximum length of each line. Default: `72`
---@param indent number # Number of spaces added before each wrapped line. Default: `0`
---@return string # The string with lines wrapped to width.
function M.linewrap(text, width, indent) end

---Escape all special pattern-matching characters so that lua interprets them literally instead of as a character class.
---
---Source: https://stackoverflow.com/a/20778724/15690
---@param s string # String to generate pattern for.
---@return string # string with escaped characters.
function M.quote_pattern(s) end

---Generate a pattern matching expression that ignores case.
---@param q string # Original pattern matching expression.
---@return string # The pattern.
function M.query_to_pattern(q) end

---Split separates a string containing a delimiter into the list of substrings between that delimiter.
---@param str string # String to be splitted.
---@param delimiter string # Character where the string will be splitted.
---@return table # list of the substrings.
function M.split(str, delimiter) end

---Check if a string starts with another string.
---@param str string # String to search.
---@return boolean # `true` if string starts with specified string.
---@param sub string String to check for.
function M.startswith(str, sub) end

---Check if a string ends with another string.
---@param str string # String to search.
---@param sub string # String to check for.
---@return boolean # `true` if string ends with specified string.
function M.endswith(str, sub) end

return M
