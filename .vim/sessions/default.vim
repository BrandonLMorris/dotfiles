" ~/git/dotfiles/.vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 10 May 2016 at 12:08:18.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'seoul256' | colorscheme seoul256 | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let NERDTreeMapPreviewSplit = "gi"
let NERDTreeMapOpenVSplit = "s"
let NERDTreeHijackNetrw = "1"
let NERDTreeShowHidden = "0"
let NERDTreeMapOpenInTabSilent = "T"
let NERDTreeMapCloseDir = "x"
let EasyMotion_move_highlight =  1 
let NERDTreeMinimalUI = "0"
let NERDTreeShowLineNumbers = "0"
let NERDTreeRespectWildIgnore = "0"
let NERDTreeMapJumpRoot = "P"
let EasyMotion_smartcase =  0 
let NERDTreeBookmarksFile = "/Users/bmorris/.NERDTreeBookmarks"
let NERDTreeMapToggleHidden = "I"
let NERDTreeWinSize = "31"
let EasyMotion_enter_jump_first =  0 
let NERDTreeMapJumpParent = "p"
let EasyMotion_use_upper =  0 
let EasyMotion_off_screen_search =  1 
let EasyMotion_do_mapping =  1 
let NERDTreeDirArrowCollapsible = "▾"
let NERDTreeMapPreview = "go"
let Taboo_tabs = "1	org\n3	auacm\n4	cli\n5	interview\n6	kattis\n7	go\n"
let NERDTreeMapActivateNode = "o"
let NERDTreeMapCloseChildren = "X"
let NERDTreeAutoCenter = "1"
let NERDTreeDirArrowExpandable = "▸"
let EasyMotion_disable_two_key_combo =  0 
let EasyMotion_space_jump_first =  0 
let EasyMotion_prompt = "Search for {n} character(s): "
let EasyMotion_use_regexp =  1 
let NERDTreeMapHelp = "?"
let NERDTreeSortHiddenFirst = "1"
let NERDTreeMouseMode = "1"
let NERDTreeMapToggleFilters = "f"
let NERDTreeCascadeOpenSingleChildDir = "1"
let NERDTreeMapJumpPrevSibling = "<C-k>"
let NERDTreeShowBookmarks = "0"
let NERDTreeRemoveDirCmd = "rm -rf "
let NERDTreeMapOpenInTab = "t"
let EasyMotion_show_prompt =  1 
let EasyMotion_add_search_history =  1 
let NERDTreeChDirMode = "0"
let EasyMotion_do_shade =  1 
let EasyMotion_grouping =  1 
let NERDTreeShowFiles = "1"
let NERDTreeMapOpenSplit = "i"
let EasyMotion_skipfoldedline =  1 
let NERDTreeCaseSensitiveSort = "0"
let NERDTreeMapRefresh = "r"
let NERDTreeBookmarksSort = "1"
let EasyMotion_use_migemo =  0 
let NERDTreeHighlightCursorline = "1"
let NERDTreeMapCWD = "CD"
let NERDTreeMapOpenRecursively = "O"
let NERDTreeMapPreviewVSplit = "gs"
let NERDTreeMapToggleBookmarks = "B"
let NERDTreeNotificationThreshold = "100"
let NERDTreeMapChdir = "cd"
let NERDTreeAutoDeleteBuffer =  0 
let NetrwMenuPriority =  80 
let NERDTreeMapRefreshRoot = "R"
let EasyMotion_cursor_highlight =  1 
let NERDTreeMapToggleFiles = "F"
let NERDTreeMapUpdir = "u"
let NERDTreeMapToggleZoom = "A"
let NERDTreeMapJumpLastChild = "J"
let NERDTreeWinPos = "left"
let NERDTreeMapDeleteBookmark = "D"
let EasyMotion_startofline =  1 
let NERDTreeMapJumpNextSibling = "<C-j>"
let EasyMotion_landing_highlight =  0 
let EasyMotion_inc_highlight =  1 
let NERDTreeCopyCmd = "cp -r "
let NERDTreeMapQuit = "q"
let NERDTreeMapChangeRoot = "C"
let NERDTreeSortDirs = "1"
let EasyMotion_keys = "asdghklqwertyuiopzxcvbnmfj;"
let EasyMotion_force_csapprox =  0 
let EasyMotion_loaded =  1 
let NERDTreeMapOpenExpl = "e"
let NERDTreeMapJumpFirstChild = "K"
let NetrwTopLvlMenu = "Netrw."
let NERDTreeMapMenu = "m"
let NERDTreeMapUpdirKeepOpen = "U"
let NERDTreeQuitOnOpen = "0"
let NERDTreeAutoCenterThreshold = "3"
let NERDTreeStatusline = "%{exists('b:NERDTree')?b:NERDTree.root.path.str():''}"
silent only
cd ~/Google_Drive/Programming/Go/TheGoProgrammingLanguage/ch1
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Google_Drive/vimwiki/index.md
badd +1 ~/Google_Drive/vimwiki/diary/diary.md
badd +332 ~/.vimrc
badd +1 ~/Google_Drive/vimwiki/Running.md.md
badd +1 ~/Google_Drive/vimwiki/Running.md
badd +1 ~/misaka_md2html.py
badd +1 ~/vimwikiRunning.md
badd +33 ~/Google_Drive/vimwiki/index.wiki
badd +1 ~/Google_Drive/vimwiki/auacm-cli.wiki
badd +11 ~/Google_Drive/vimwiki/Running.wiki
badd +2 ~/Google_Drive/vimwiki/diary/diary.wiki
badd +74 ~/Google_Drive/Programming/auacm-cli/src/auacm/user.py
badd +11 ~/Google_Drive/Programming/auacm-cli/src/auacm/common.py
badd +33 ~/Google_Drive/vimwiki/diary/2016-04-01.wiki
badd +1 ~/Google_Drive/vimwiki/diary/2016-04-03.wiki
badd +1 ~/Google_Drive/Programming/auacm-cli/src/auacm/exceptions.py
badd +1 ~/Google_Drive/Programming/auacm-cli/task\ next\ report
badd +6 ~/Google_Drive/Programming/auacm/auacm/app/database.py
badd +15 ~/Google_Drive/Programming/auacm/auacm/app/views.py
badd +14 ~/Google_Drive/Programming/auacm/auacm/Dockerfile
badd +39 ~/Google_Drive/vimwiki/diary/2016-04-05.wiki
badd +9 ~/Google_Drive/Programming/auacm/auacm/docker-compose.yml
badd +3 ~/Google_Drive/Programming/auacm/auacm/docker-data/Dockerfile
badd +1 ~/Google_Drive/Programming/auacm-cli/README.md
badd +25 ~/Google_Drive/vimwiki/diary/2016-04-06.wiki
badd +32 ~/Google_Drive/Programming/InterviewPrep/CrackingTheCodingInterview/Python/Chapter1/q7.py
badd +5 ~/Google_Drive/Programming/InterviewPrep/CrackingTheCodingInterview/Python/Chapter1/q8.py
badd +31 ~/Google_Drive/vimwiki/auacm.wiki
badd +8 ~/Google_Drive/Programming/auacm/auacm/app/__init__.py
badd +4 ~/Google_Drive/Programming/auacm/auacm/requirements.txt
badd +12 ~/Google_Drive/Programming/InterviewPrep/CrackingTheCodingInterview/Python/Chapter2/q1.py
badd +21 ~/Google_Drive/Programming/InterviewPrep/CrackingTheCodingInterview/Python/Chapter2/llist.py
badd +27 ~/Google_Drive/Programming/InterviewPrep/CrackingTheCodingInterview/Python/Chapter2/q2.py
badd +4 ~/Google_Drive/Programming/auacm/auacm/docker-data/startup.sh
badd +1 \'/Users/bmorris/gd/Programming/InterviewPrep/CrackingTheCodingInterview/Python/Chapter2/q3.py\'
badd +14 ~/Google_Drive/Programming/InterviewPrep/CrackingTheCodingInterview/Python/Chapter2/q3.py
badd +38 ~/Google_Drive/Programming/InterviewPrep/CrackingTheCodingInterview/Python/Chapter2/q4.py
badd +33 ~/Google_Drive/vimwiki/diary/2016-04-07.wiki
badd +1 ~/Google_Drive/Work/serenity/src/serenity/__init__.py
badd +286 ~/Google_Drive/Work/serenity/src/serenity/FireflyResource.py
badd +1 ~/Google_Drive/Programming/InterviewPrep/CrackingTheCodingInterview/Python/Chapter2/q5.py
badd +15 ~/Google_Drive/Programming/auacm/auacm/run.py
badd +1 ~/Google_Drive/Programming/auacm/auacm/app/modules/blog_manager/__init__.py
badd +141 ~/Google_Drive/Programming/auacm/auacm/app/modules/blog_manager/blog_test.py
badd +63 ~/Google_Drive/Programming/auacm/auacm/app/modules/problem_manager/problem_test.py
badd +17 ~/Google_Drive/Programming/auacm/auacm/app/util.py
badd +3 ~/Google_Drive/Programming/auacm/auacm/app/modules/user_manager/models.py
badd +27 ~/Google_Drive/Programming/auacm/auacm/test.py
badd +8 ~/Google_Drive/vimwiki/python/python.wiki
badd +4 ~/Google_Drive/vimwiki/python/flask/Flask.wiki
badd +14 ~/Google_Drive/vimwiki/python/flask/testing.wiki
badd +65 ~/Google_Drive/Work/tbaas/clients/python/tbaas.py
badd +82 ~/Google_Drive/Work/tbaas/documentation/userguide/source/howto.rst
badd +14 ~/Google_Drive/Programming/auacm/auacm/app/modules/blog_manager/views.py
badd +9 ~/Google_Drive/Programming/auacm/docs/api.md
badd +13 ~/Google_Drive/Programming/auacm/auacm/app/modules/blog_manager/models.py
badd +242 ~/Google_Drive/Programming/auacm/auacm/app/modules/problem_manager/views.py
badd +1 ~/Google_Drive/Programming/auacm/auacm/flask/lib/python3.4/site-packages/flask/config.py
badd +4 ~/Google_Drive/Programming/auacm/auacm/app/config.py
badd +47 ~/Google_Drive/Programming/auacm/auacm/app/modules/problem_manager/models.py
badd +5 ~/Google_Drive/Programming/auacm/auacm/dockerfiles/Dockerfile
badd +5 ~/Google_Drive/Programming/auacm/setup/initialize_database.sh
badd +7 ~/Google_Drive/Programming/auacm/setup/backup_database.sh
badd +2 ~/Google_Drive/Programming/auacm/auacm/bower.json
badd +10 ~/Google_Drive/Programming/auacm/README.md
badd +1 ~/Google_Drive/vimwiki/diary/2016-04-11.wiki
badd +106 ~/Google_Drive/Work/osa-admin/node-admin/README.md
badd +13 ~/Google_Drive/vimwiki/work/elk-onos.wiki
badd +1 ~/Google_Drive/Work/osa-admin/node-admin/requirements.lock
badd +62 ~/Google_Drive/Work/osa-admin/node-admin/src/node_admin/node_admin.py
badd +1 ~/Google_Drive/Work/osa-admin/node-admin/requirements.txt
badd +1 ~/Google_Drive/Work/osa-admin/node-admin/src/node_admin/node-admin.service
badd +62 ~/Google_Drive/Work/osa-admin/node-admin/src/node_admin/parse_container_config.py
badd +13 ~/Google_Drive/Work/firefly-dockhand/src/dockhand/elk.py
badd +2 ~/Google_Drive/Work/firefly-dockhand/src/dockhand/util.py
badd +55 ~/Google_Drive/Work/firefly-dockhand/src/dockhand/service.py
badd +114 ~/Google_Drive/Work/tbaas/src/tbaas/resources/nms/nms_resource.py
badd +64 ~/Google_Drive/Work/tbaas/src/tbaas/rest/views.py
badd +46 ~/Google_Drive/Work/tbaas/src/tbaas/rest/controller.py
badd +1 ~/Google_Drive/Work/serenity/deploy-me.py
badd +1 ~/Google_Drive/Work/serenity/distribute.sh
badd +1 ~/Google_Drive/Work/serenity/MANIFEST.in
badd +1 ~/Google_Drive/Work/serenity/README.rst
badd +1 ~/Google_Drive/Work/serenity/setup.py
badd +14 ~/Google_Drive/Work/osa-admin/node-admin/scripts/gre_setup.sh
badd +33 ~/Google_Drive/Work/firefly-dockhand/src/dockhand/zookeeper.py
badd +22 ~/Google_Drive/Work/firefly-dockhand/src/dockhand/firefly.py
badd +130 ~/Google_Drive/Work/firefly-dockhand/src/dockhand/cassandradb.py
badd +440 ~/Google_Drive/Work/tbaas/src/tbaas/resources/nms/tests.py
badd +26 ~/Google_Drive/Programming/auacm/auacm/app/modules/competition_manager/models.py
badd +6 ~/Google_Drive/Work/firefly-dockhand/src/dockhand/dnsmasq.py
badd +3 ~/Google_Drive/vimwiki/diary/2016-04-12.wiki
badd +3 ~/Google_Drive/Work/osa-admin/node-admin/Dockerfile-nodeadmin
badd +48 ~/Google_Drive/Work/osa-admin/node-admin/Makefile
badd +2 ~/Google_Drive/Work/osa-admin/README.md
badd +1 ~/Google_Drive/Work/osa-admin/node-admin/src/node_admin/backup_restore.py
badd +1 ~/Google_Drive/Work/osa-admin/node-admin/src/rpm/afterinstall.sh
badd +230 ~/Google_Drive/Programming/auacm/auacm/app/modules/competition_manager/views.py
badd +1 ~/Google_Drive/vimwiki/Reading.wiki
badd +3 ~/Google_Drive/Work/firefly-dockhand/src/dockhand/nms_onos.py
badd +2 ~/Google_Drive/vimwiki/Food.wiki
badd +1 ~/Google_Drive/Work/firefly-dockhand/src/__init__.py
badd +9 ~/Google_Drive/Work/firefly-dockhand/src/dockhand/__init__.py
badd +3 ~/Google_Drive/vimwiki/work/tbaas.wiki
badd +36 ~/Google_Drive/Work/serenity/src/serenity/MockDeviceResource.py
badd +10 ~/Google_Drive/Programming/Competitive/Kattis/Pot/pot.py
badd +1 ~/Google_Drive/Work/tbaas/\[calendar]
badd +27 ~/Google_Drive/Programming/Competitive/Kattis/Trik/trik.py
badd +1 ~/Google_Drive/vimwiki/diary/2016-04-18.wiki
badd +193 ~/Google_Drive/Work/tbaas/src/tbaas/orchestration/tasks.py
badd +113 ~/Google_Drive/Work/tbaas/src/tbaas/resources/firefly/firefly_resource.py
badd +207 ~/Google_Drive/Work/tbaas/src/tbaas/settings.py
badd +21 ~/Google_Drive/Work/tbaas/src/tbaas/settings_prod.py
badd +19 ~/Google_Drive/vimwiki/diary/2016-04-19.wiki
badd +9 ~/Google_Drive/Work/tbaas/src/tbaas/resources/firefly/test_firefly_resource.py
badd +28 ~/Google_Drive/vimwiki/work/eot-presentation.wiki
badd +2 ~/Google_Drive/Programming/auacm/COPYRIGHT
badd +14 ~/Google_Drive/Programming/Competitive/Kattis/PizzaCrust/pizza2.py
badd +27 ~/Google_Drive/Programming/auacm/auacm/app/modules/user_manager/views.py
badd +23 ~/Google_Drive/Programming/Competitive/Kattis/DetailedDifferences/detaileddifferences.py
badd +9 ~/sphinx-test/source/tutorial.rst
badd +3 ~/Google_Drive/vimwiki/to-cook.wiki
badd +1 ~/Google_Drive/vimwiki/diary/2016-04-24.wiki
badd +9 ~/Google_Drive/Programming/Competitive/Kattis/Cetvrta/cetvrta.py
badd +6 helloworld.go
badd +3 echo1.go
badd +1 ~/Google_Drive/Work/tbaas/task\ next\ report
badd +1 ~/Google_Drive/Work/tbaas/\[calendar\ 1]
badd +8 echo2.go
badd +12 ~/Google_Drive/Work/tbaas/echo3.go
badd +17 ~/Google_Drive/Work/tbaas/dup1.go
badd +14 ~/Google_Drive/Work/tbaas/dup2.go
badd +20 ~/Google_Drive/Work/tbaas/dup3.go
badd +51 ~/Google_Drive/Work/tbaas/lissajous.go
badd +6 lissajous.go
badd +1 fetch.go
badd +11 ~/Google_Drive/Programming/Competitive/Kattis/Modulo/modulo.py
badd +20 ~/Google_Drive/vimwiki/diary/2016-04-26.wiki
badd +1 ~/Google_Drive/Work/tbaas/src/tbaas/resources/testbed_resource.py
badd +9 ~/Google_Drive/Programming/Competitive/ProjectEuler/SumSquareDifference/SumSquareDiff.scala
badd +3 ~/Google_Drive/Programming/Competitive/ProjectEuler/MultiplesOf3And5/Multiples.scala
badd +7 ~/Google_Drive/Programming/Competitive/ProjectEuler/10001stPrime/Primes.scala
badd +1 ~/Google_Drive/Programming/Competitive/ProjectEuler/LargestProductInASeries/LargestProduct.scala
badd +1 ~/Google_Drive/vimwiki/diary/2016-05-05.wiki
badd +1 task\ next\ report
badd +0 \[calendar]
argglobal
silent! argdel *
set stal=2
edit ~/Google_Drive/vimwiki/Reading.wiki
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 89) / 178)
exe '2resize ' . ((&lines * 26 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 88 + 89) / 178)
exe '3resize ' . ((&lines * 25 + 27) / 55)
exe 'vert 3resize ' . ((&columns * 88 + 89) / 178)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 037|
wincmd w
argglobal
edit task\ next\ report
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ~/Google_Drive/vimwiki/diary/2016-05-05.wiki
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 89) / 178)
exe '2resize ' . ((&lines * 26 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 88 + 89) / 178)
exe '3resize ' . ((&lines * 25 + 27) / 55)
exe 'vert 3resize ' . ((&columns * 88 + 89) / 178)
tabedit \[calendar]
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit ~/Google_Drive/Programming/auacm/auacm/app/modules/competition_manager/views.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=7
setlocal fml=1
setlocal fdn=20
setlocal fen
203
silent! normal! zo
let s:l = 1 - ((0 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 025|
tabedit ~/Google_Drive/Programming/auacm-cli/src/auacm/exceptions.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
26
silent! normal! zo
26
normal! zc
let s:l = 35 - ((34 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 0
tabedit ~/Google_Drive/Programming/InterviewPrep/CrackingTheCodingInterview/Python/Chapter2/q5.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 29 + 89) / 178)
exe '2resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 148 + 89) / 178)
argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
6
silent! normal! zo
9
silent! normal! zo
let s:l = 10 - ((9 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
wincmd w
exe '1resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 29 + 89) / 178)
exe '2resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 148 + 89) / 178)
tabedit ~/Google_Drive/Programming/Competitive/ProjectEuler/LargestProductInASeries/LargestProduct.scala
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 24 + 89) / 178)
exe '2resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 153 + 89) / 178)
argglobal
enew
" file NERD_tree_2
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
9
silent! normal! zo
12
silent! normal! zo
17
silent! normal! zo
let s:l = 3 - ((2 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 02|
wincmd w
exe '1resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 24 + 89) / 178)
exe '2resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 153 + 89) / 178)
tabedit fetch.go
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 1 + 89) / 178)
exe '2resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 176 + 89) / 178)
argglobal
enew
" file NERD_tree_3
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 7 - ((6 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 0
lcd ~/Google_Drive/Programming/Go/TheGoProgrammingLanguage/ch1
wincmd w
exe '1resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 1 + 89) / 178)
exe '2resize ' . ((&lines * 33 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 176 + 89) / 178)
tabnext 1
set stal=1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 5
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Google_Drive/Programming/auacm
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 33|vert 1resize 29|2resize 33|vert 2resize 148|
1wincmd w
tabnext 6
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Google_Drive/Work/tbaas
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 33|vert 1resize 24|2resize 33|vert 2resize 153|
1wincmd w
tabnext 7
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Google_Drive/Work/tbaas
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 33|vert 1resize 1|2resize 33|vert 2resize 176|
1wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
