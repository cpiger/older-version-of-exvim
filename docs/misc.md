---
layout: page
title: Misc
permalink: /docs/misc/
---

## Install List

* toolkit
  * cTags language parser 
  * gawk scripts ( for exVim-exSymbolTable plugin )
  * idutils default language map
  * source highlight settings
  * makefile
    * msvc default project ( for quickly creating vc project )
    * gcc general makefiles
  * quickgen project shell programme ( help exVim create and update project files )
* third-part plugins (plugins not created by me, and not have any modification on them)
  * [AlternateFiles](http://www.vim.org/scripts/script.php?script_id=31)
  * [cmdline-complete](http://www.vim.org/scripts/script.php?script_id=2222)
  * [EnhancedCommentify](http://www.vim.org/scripts/script.php?script_id=23)
  * [NERD_tree](http://www.vim.org/scripts/script.php?script_id=1658)
  * [OmniCppComplete](http://www.vim.org/scripts/script.php?script_id=1520)
  * [genutils](http://www.vim.org/scripts/script.php?script_id=197)
  * [surround](http://www.vim.org/scripts/script.php?script_id=1697)
  * [Visincr](http://www.vim.org/scripts/script.php?script_id=670)
  * [vimwiki](http://www.vim.org/scripts/script.php?script_id=2226)
* patched third-part plugins (plugins not created by me, and I modified them to fit exVim)
  * [echofunc](http://www.vim.org/scripts/script.php?script_id=1735)
    * add <leader>ef to echo function that current cursor in.
    * disable ( trigger echo function automatically, cause this have performance issue. 
  * [CRefVim](http://www.vim.org/scripts/script.php?script_id=614)
    * change the map <leader>cc to <leader>cg, cause <leader>cc been used by exCscope.
  * [MiniBufExpl](http://www.vim.org/scripts/script.php?script_id=159)
    * let the selected buffer always in the half of the screen.
    * let the buffer list only in one line. (this can fix buffer list in multi-line can't show the selected buffer if the window line less than the buffer line)
  * [lookupfile](http://www.vim.org/scripts/script.php?script_id=1581)
    * add LUCurWord command which can look up files by words in current cursor.
    * let the lookupfile window work with ex-plugin window. (always open the lookupfile window in edit window)
    * add <ESC> key-mapping to close lookupfile window.
    * let the lookupfile window open at the top of the edit window instead of at the bottom.
  * [ShowMarks](http://www.vim.org/scripts/script.php?script_id=152)
    * fix uppercase marks will shows in everyfile bug. (use the patch in [here](http://easwy.com/blog/archives/advanced-vim-skills-advanced-move-method/)
    * add toggle marks method. (when you add a mark in one line, and press that mark in the same line again, the mark will be deleted)
    * add unique mark method. (when you add a mark in one line, then add another mark in the same line, the new mark will delete the old one)
    * disable marks update when cursor hold. (this feature cause too many performance problem)
  * [TagList](http://www.vim.org/scripts/script.php?script_id=273) 
    * let the taglist window work with ex-plugin window.
    * add <space> key-mapping to resize window.
    * add <ESC> key-mapping to close taglist window.
    * add object line highlight.
  * [visual_studio](http://www.vim.org/scripts/script.php?script_id=864)
    * fix list project bug.
    * use exQuickFix open the compile error information.
    * add <leader>vk to set break point directly
* exVim plugins
  * ex color scheme
  * ex syntax
  * exUtility
  * exEnvironmentSetting
  * exProject
  * exTagSelect
  * exSymbolTable
  * exGlobalSearch
  * exQuickFix
  * exMacroHighlight
  * exCscope
  * exMarksBrowser
  * exSearchComplete

## install part of exVim

Though it is not recommended to install only some parts of exVim, but still some people
have the demand. You can download the ex-plugins-only packages in download page, and
extract the files, copy the specific files as show as below to obtain the partial feature
in exVim. Here are the list: 

### install exUtility

* request
  * vimfiles/autoload/exUtility.vim
  * vimfiles/plugin/exUtility.vim
* optional
  * toolkit/quickgen/*

### install exEnvironment

* request
  * vimfiles/autoload/exUtility.vim
  * vimfiles/plugin/exUtility.vim
  * vimfiles/plugin/exEnvironmentSetting.vim

### install exProject

* request
  * vimfiles/autoload/exUtility.vim
  * vimfiles/plugin/exUtility.vim
  * vimfiles/plugin/exProject.vim
* optional
  * vimfiles/plugin/exEnvironmentSetting.vim
  * vimfiles/plugin/exQuickFix.vim

### install exGlobalSearch

* request
  * vimfiles/autoload/exUtility.vim
  * vimfiles/plugin/exUtility.vim
  * vimfiles/plugin/exGlobalSearch.vim
  * vimfiles/plugin/exJumpStack.vim
  * toolkit/idutils/\*
* optional
  * toolkit/quickgen/\*
  * vimfiles/plugin/exEnvironmentSetting.vim

### install exMacroHighlight

* request
  * vimfiles/autoload/exUtility.vim
  * vimfiles/plugin/exUtility.vim
  * vimfiles/plugin/exMacroHighlight.vim
  * vimfiles/after/syntax/\*.vim
* optional
  * vimfiles/plugin/exEnvironmentSetting.vim

### install exTagSelect

* request
  * vimfiles/autoload/exUtility.vim
  * vimfiles/plugin/exUtility.vim
  * vimfiles/plugin/exTagSelect.vim
  * vimfiles/plugin/exJumpStack.vim
* optional
  * toolkit/quickgen/\*
  * vimfiles/plugin/exEnvironmentSetting.vim

### install exSymbolTable

* request
  * vimfiles/autoload/exUtility.vim
  * vimfiles/plugin/exUtility.vim
  * vimfiles/plugin/exSymbolTable.vim
  * vimfiles/plugin/exJumpStack.vim
  * toolkit/gawk/\*
  * toolkit/quickgen/\*
* optional
  * vimfiles/plugin/exEnvironmentSetting.vim
  * vimfiles/plugin/exTagSelect.vim

### install exQuickFix

* request
  * vimfiles/autoload/exUtility.vim
  * vimfiles/plugin/exUtility.vim
  * vimfiles/plugin/exQuickFix.vim
  * vimfiles/after/compiler/*.vim
* optional
  * vimfiles/plugin/exProject.vim

### install exCscope

* request
  * vimfiles/autoload/exUtility.vim
  * vimfiles/plugin/exUtility.vim
  * vimfiles/plugin/exCscope.vim
* optional
  * toolkit/quickgen/\*

### install exMarksBrowser

* request
  * vimfiles/autoload/exUtility.vim
  * vimfiles/plugin/exUtility.vim
  * vimfiles/plugin/exMarksBrowser.vim

### install exSearchComplete

* request
  * vimfiles/plugin/exSearchComplete.vim

