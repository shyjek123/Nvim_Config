return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    -- basic telescope configuration
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end

    vim.keymap.set("n", "<leader>th", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open harpoon window" })
    vim.keymap.set("n", "<leader>ta", function()
      harpoon:list():add()
    end, { desc = "Append Buffer to Harpoon" })
    vim.keymap.set("n", "<leader>td", function()
      harpoon:list():remove()
    end, { desc = "Delete Buffer from Harpoon" })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<leader>tp", function()
      harpoon:list():prev()
    end)
    vim.keymap.set("n", "<leader>tn", function()
      harpoon:list():next()
    end)

    vim.keymap.set("n", "<leader>tef", function()
      A = tonumber(vim.fn.input("Enter a number: "))
      harpoon:list():select(A)
    end)
    -- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
    -- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
    -- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
  end,
}
