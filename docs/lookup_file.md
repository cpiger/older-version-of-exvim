---
layout: page
title: LookupFile
permalink: /docs/lookup_file/
---

## Intro

LookupFile is a plugin for looking up files in specific file-tags. It's a nice plugin to list matched files for easy selecting. Also it can apply its search method in only opened buffers. The picture below shows how it works:

![lookup_file.png](../images/lookup_file.png)

## What I changed

**Add \<ESC\> key mapping for closing window**

When you start lookup file, a mini window opened for inputing filename, but you can only use :q to close it which make its close behavior not consist with other window in exVim.  I add a local key mapping -- `<ESC>` for closing the lookup file window.

**Opened only above the edit-window**

I add codes to garantee the lookup file only opened above the edit-window. This can avoid problems when you start search a file in plugin-window, but after searching and selecting, it open the file in that window, but you expect to open it in edit-window.

**Add command LUCurWord**

The command will lookup file in the word the cursor exists, as known as `<c-word>`. Also I map it as `<leader>lg` in my vimrc. 

**Create filenametags after update project file**

For efficiency, we use tag in lookup file, this can be done by specify tag file path to  g:LookupFile_TagExpr, and I add it to default exEnvironment template.

Also we create special tag file which only contained file name. This will be done after createing or refreshing project file in exProject. You would find "filenametags" in .vimfiles if success. 

## My settings in vimrc

Here is my settings of LookupFile in my vimrc file:

{% highlight vim %}
let g:ex_plugin_registered_bufnames = ["-MiniBufExplorer-","__Tag_List__","\[Lookup File\]", "\[BufExplorer\]"] 

" ------------------------------------------------------------------ 
" Desc: LookupFile 
" ------------------------------------------------------------------ 

nnoremap <unique> <A-S-i> :LUTags<CR>
nnoremap <unique> <leader>lf :LUTags<CR>
nnoremap <unique> <leader>lb :LUBufs<CR>
nnoremap <unique> <silent> <Leader>lg :LUCurWord<CR>
let g:LookupFile_TagExpr = ''
let g:LookupFile_MinPatLength = 3
let g:LookupFile_PreservePatternHistory = 0
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_AllowNewFiles = 0
let g:LookupFile_smartcase = 1
let g:LookupFile_EscCancelsPopup = 1

" exEnvironmentSetting post update
" NOTE: this is a post update environment function used for any custom environment update 
function g:exES_PostUpdate()

    " set lookup file plugin variables
    if exists( 'g:exES_LookupFileTag' )
        let g:LookupFile_TagExpr='"'.g:exES_LookupFileTag.'"'
    endif

endfunction
{% endhighlight %}

For details of `g:exUT_plugin_list`, check section [exUtility](../ex_utility)

For details of `g:exES_PostUpdate`, check section [exEnvironment](../ex_environment)

## Links

* [Original version](http://www.vim.org/scripts/script.php?script_id=1581)
  * [genutils](http://www.vim.org/scripts/script.php?script_id=197)

