---
layout: page
title: MiniBufExpl
permalink: /docs/mini_buf_expl/
---

## Intro

MiniBufExpl is a vim script that can list buffers in a small window at the top of vim.  Like the picture shows below, It provides mouse operation, shows the unsaved buffers, also shows the current edit buffer by the difference of highlight. All these features make it like the function of tab in other gui application.

![minibufexpl.png](../images/minibufexpl.png)

## What I changed

**fix current edit buffer can't be shown problem**

When the number of buffers is more than one line in mini-buffer window, and you set g:miniBufExplMaxSize = 1. You may not see your current edit buffer if the buffer listed in mini buffer window is in the line greater than one.

## My settings in vimrc

Here is my settings of MiniBufExpl in my vimrc file:

{% highlight vim %}
let g:ex_plugin_registered_bufnames = ["-MiniBufExplorer-","__Tag_List__","\[Lookup File\]", "\[BufExplorer\]"] 

" ------------------------------------------------------------------ 
" Desc: MiniBufExpl
" ------------------------------------------------------------------ 

let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines) 
let g:miniBufExplModSelTarget = 1 " If you use other explorers like TagList you can (As of 6.2.8) set it at 1:
let g:miniBufExplUseSingleClick = 1 " If you would like to single click on tabs rather than double clicking on them to goto the selected buffer. 
let g:miniBufExplMaxSize = 1 " <max lines: defualt 0> setting this to 0 will mean the window gets as big as needed to fit all your buffers. 

" update custom highlights
function g:ex_CustomHighlight()
    " ======================================================== 
    " MiniBufExplorer
    " ======================================================== 

    " for buffers that have NOT CHANGED and are NOT VISIBLE.
    hi MBENormal ctermbg=LightGray ctermfg=DarkGray guibg=LightGray guifg=DarkGray
    " for buffers that HAVE CHANGED and are NOT VISIBLE
    hi MBEChanged ctermbg=Red ctermfg=DarkRed guibg=Red guifg=DarkRed
    " buffers that have NOT CHANGED and are VISIBLE
    hi MBEVisibleNormal term=bold cterm=bold ctermbg=Gray ctermfg=Black gui=bold guibg=Gray guifg=Black
    " buffers that have CHANGED and are VISIBLE
    hi MBEVisibleChanged term=bold cterm=bold ctermbg=DarkRed ctermfg=Black gui=bold guibg=DarkRed guifg=Black
endfunction
{% endhighlight %}

For details of g:exUT_plugin_list and g:ex_CustomHighlight, check [exUtility](../ex_utility)

## Links

* [Original version](http://www.vim.org/scripts/script.php?script_id=159)

