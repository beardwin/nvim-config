local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local extras = require("luasnip.extras")
local rep = extras.rep

-- Helper to check if StyleSheet is already imported
local function needs_stylesheet_import()
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  for _, line in ipairs(lines) do
    if line:match("StyleSheet") and line:match("react%-native") then
      return false
    end
  end
  return true
end

-- Function to conditionally add import
local function maybe_import_stylesheet()
  if needs_stylesheet_import() then
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    -- Find existing react-native import to augment, or add new import at top
    for idx, line in ipairs(lines) do
      local match = line:match("^import%s*{([^}]+)}%s*from%s*['\"]react%-native['\"]")
      if match then
        -- Add StyleSheet to existing import
        local new_imports = match:gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")
        if not new_imports:match("StyleSheet") then
          new_imports = "StyleSheet, " .. new_imports
          local new_line = "import { " .. new_imports .. " } from 'react-native'"
          vim.api.nvim_buf_set_lines(0, idx - 1, idx, false, { new_line })
        end
        return ""
      end
    end
    -- No existing react-native import, add at top (after any existing imports)
    local insert_line = 0
    for idx, line in ipairs(lines) do
      if line:match("^import") then
        insert_line = idx
      end
    end
    vim.api.nvim_buf_set_lines(0, insert_line, insert_line, false, { "import { StyleSheet } from 'react-native'" })
  end
  return ""
end

return {
  s("sep", {
    t("/*=========="),
    t({ "", " *" }),
    i(1, "label"),
    t({ "", " *==========", " */" }),
  }),

  s("style", {
    f(maybe_import_stylesheet, {}),
    t({ "const styles = StyleSheet.create({", "  " }),
    i(1, "container"),
    t(": {"),
    t({ "", "    " }),
    i(2),
    t({ "", "  }," }),
    t({ "", "})" }),
    i(0),
  }),

  -- TypeScript React component with destructured props
  s("cmp", {
    t("interface Props {"),
    i(1, "props"),
    t("}"),
    t({ "", "" }),
    t({ "", "" }),
    t("export const "),
    i(2, "ComponentName"),
    t(" = ("),
    i(3, "props"),
    t(": Props) => {"),
    t({ "", "  " }),
    i(0),
    t({ "", "", "}" }),
  }),
}
