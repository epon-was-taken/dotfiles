return {

  {
    "pearofducks/ansible-vim",
  },

  -- Use coc with coc-ansible extension for integrated linting support
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function ()
      -- filetype mapping needed for coc-ansible
      vim.g.coc_filetype_map = {
        ['yaml.ansible'] = 'ansible',
      }
    end,
  },

}
