local M = {}


M.setup = function()
  vim.keymap.set("n", "<leader>tb", ":lua require('bongocat').toogle()<Cr>", {})
end

local bongo_up = {
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣶⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣄⣀⡀⣠⣾⡇⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀",
  "⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⡇⠀⠀⠀⠀",
  "⠀⣶⣿⣦⣜⣿⣿⣿⠛⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⡏⣴⣺⣦⣙⣿⣷⣄⠀⠀⠀",
  "⠀⣯⡇⣻⣿⣿⣿⣿⣶⣿⣿⣬⣥⣭⣽⣿⣿⣧⣼⡇⣯⣇⣹⣿⣿⣿⣿⣧⠀⠀",
  "⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠸⣿⣿⣿⣿⣿⣿⣿⣷⠀",
  "  ⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉  ",
}
local bongo_down = {
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣶⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣄⣀⡀⣠⣾⡇⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀",
  "⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀",
  "⠀  ⣰⣿⣿⣿⣿⠛⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀",
  "⠀ ⣾⣿⣿⣿⣿⣿⣶⣿⣿⣬⣥⣭⣽⣿⣿⣧⣼⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀",
  "⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷ ",
  "⢸⣿⣿⣿⣿⠟⠋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⣿⣿⣿⣿⡿⠛⠉⠉⠉⠉ ",
  "⠘⠛⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠛⠃⠀⠀⠀⠀⠀  ",
}
local bongo_left = {
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣶⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣄⣀⡀⣠⣾⡇⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀",
  "⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⡇⠀⠀⠀⠀",
  "⠀⠀⠀⣰⣿⣿⣿⣿⠛⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⡏⣴⣺⣦⣙⣿⣷⣄⠀⠀⠀",
  "⠀⠀⣾⣿⣿⣿⣿⣿⣶⣿⣿⣬⣥⣭⣽⣿⣿⣧⣼⡇⣯⣇⣹⣿⣿⣿⣿⣧⠀⠀",
  "⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠸⣿⣿⣿⣿⣿⣿⣿⣷⠀",
  "⢸⣿⣿⣿⣿⠟⠋⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉ ",
  "⠘⠛⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀    ⠀⠀⠀⠀⠀  ",
}
local bongo_right = {
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣶⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣄⣀⡀⣠⣾⡇⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀",
  "⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀",
  "⠀⣶⣿⣦⣜⣿⣿⣿⠛⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀",
  "⠀⣯⡇⣻⣿⣿⣿⣿⣶⣿⣿⣬⣥⣭⣽⣿⣿⣧⣼⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀",
  "⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷ ",
  "  ⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⣿⣿⣿⣿⡿⠛⠉⠉⠉⠉  ",
  "                  ⠛⠛⠛⠃⠀⠀⠀⠀⠀  ⠀",
}

local frames = {
  bongo_up,
  bongo_left,
  bongo_down,
  bongo_right
}

local current_frame_index = 1


local opts = {
  width = 30,
  height = 9,
  relative = "editor",
  row = 0,
  col = vim.o.columns - 30 - 1,
  anchor = "NW",
  border = "rounded",
  style = "minimal",
}

M.create = function()
  local buf_id = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf_id, 0, -1, true, frames[current_frame_index])
  local win_id = vim.api.nvim_open_win(buf_id, false, opts)
  return win_id
end

M.update_frame = function()
  local buf_id = vim.api.nvim_win_get_buf(M.win_id)
  vim.api.nvim_buf_set_lines(buf_id, 0, -1, true, frames[current_frame_index])
end


M.show = function()
  if not M.win_id then
    M.win_id = M.create()
  end
end

M.hide = function()
  if M.win_id then
    vim.api.nvim_win_close(M.win_id, true)
    M.win_id = nil
  end
end

M.toogle = function()
  if M.win_id then
    M.hide()
  else
    M.show()
  end
end

return M
