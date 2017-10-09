
au BufNewFile,BufRead *.gxml set filetype=go
au BufNewFile,BufRead *.tmpl set filetype=HTML
:echom "Thank you for using vim-gos."

:command GotoMain :/main>

:command Import :%s@/error>@/error><RETURN><TAB><import src=<args> />

:command Build :! gos --run --buildcheck

:command Run :! nohup gos --run > vim.log &

:command Stop :! gos --kill

:command Log :! cat vim.log

:command LiveLog :! tail -f vim.log

:command AddPipeline :%s@</methods>@<TAB><method name=<args> var="" return=""><RETURN><TAB>//Golang code here<RETURN><TAB></method><RETURN></methods>

:command AddService :%s@</endpoints>@<end path=<args> type="" ><RETURN><TAB>//Golang code here<RETURN><TAB></end><RETURN><TAB></endpoints>

:command AddStruct :%s@</header>@<struct name=<args> ><RETURN><TAB>//interface fields here<RETURN><TAB></struct><RETURN><TAB></header>

:command AddTemplate :%s@</templates>@<template name=<args> tmpl="" struct="" /><RETURN><TAB></templates>


