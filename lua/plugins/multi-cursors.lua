return{
  "mg979/vim-visual-multi",
  config = function()
    vim.cmd [[
      nmap   <M-C-j>         <Plug>(VM-Add-Cursor-Down)
      nmap   <M-C-k>         <Plug>(VM-Add-Cursor-Up)
      nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
      nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)
      nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)
      ]]
  end
}
