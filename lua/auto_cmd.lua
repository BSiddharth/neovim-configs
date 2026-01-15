--[[

 set custom auto_cmd here

                            o                                                                o
                           <|>                                                              <|>
                           < >                                                              < \
    o__ __o/   o       o    |        o__ __o                 __o__  \o__ __o__ __o     o__ __o/
   /v     |   <|>     <|>   o__/_   /v     v\               />  \    |     |     |>   /v     |
  />     / \  < >     < >   |      />       <\            o/        / \   / \   / \  />     / \
  \      \o/   |       |    |      \         /           <|         \o/   \o/   \o/  \      \o/
   o      |    o       o    o       o       o             \\         |     |     |    o      |
   <\__  / \   <\__ __/>    <\__    <\__ __/>   ____o__    _\o__</  / \   / \   / \   <\__  / \
                                                 /   \

]]

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
