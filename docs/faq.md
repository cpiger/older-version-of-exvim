---
layout: page
title: FAQ
permalink: /docs/faq/
---

## Concept

(g)lobal search:

(q)uick view, (s)elect window

1. The character in Bracket is name of window. "g" is global search's name.
1. `<leader>gs` to open global search window, the main window is the select window. Shortcut: `ctrl-<up>`
1. `<leader>gq` to open quick view of global search window.  Shortcut: `ctrl-<left>`
1. `Ctrl-R u` to navigate in history select window

(t)ag search:

(s)elect window

1. the character in bracket is name of window. "t" is tag search's name.
1. `<leader>ts` to open the tag search window. Shortcut: `ctrl-<left>`
1. `ctrl-R u` to navigate in history select window

(s)ymbol list:

(q)uick view, (s)elect window

1. the character in bracket is name of window. "s" is symbol list's name.
1. `<leader>ss` to open the tag search window. Shortcut: `ctrl-<right>`
1. `<leader>sq` to open the quick view of symbol list. Shortcut: `ctrl-<left>`

## Questions

### Q0: How to install and quick start?

A0: Refer to the install.txt. 

### Q1: How to search in project?

A1: 

1. `\gg`: Global search current word
1. `:GS`: Global search ( similar with "word" )
1. `:GSW`: Global search a word ( similar with \<"word"\> )
1. `:GSR`: Global search using regular expression ( seems the regular expression search in id-utils not so powerful, not recommend )
1. `:GSigc/`, `GSnoigc`: case setting, ignore/no ignore case for search

### Q2: How to filter in select window?

A2: Search Result Formation:

filepath:line:    pattern

1. search a "key"
1. use filter method
  1. `\r` to remove all lines that do not include the "key" in the part of pattern.
  1. `\fr` to remove all lines that do not include "key" in the part of file name.
  1. `\gr` to remove all lines that do not include "key".
  1. `\d` to remove all lines that include the "key" in the part of pattern.
  1. `\fd` to remove all lines that include the "key" in the part of file name.
  1. `\gd` to remove all lines that include the "key".

### Q3: How to use the Perforce?

A3: 

1. Login to perforce to create a ticket for you.
1. :Checkout, :Revert

### Q4: How to create id, symbol and tags file?

A4: 

1. Copy the quick_gen_project_general.bat to your root path. Or type `:QC` general in `V`
1. `:Up`, `:Up ID`, `:Up symbol`, `:Up tags`, `:Up inherits`, `:Up cscope`
 
### Q5: How to mark different colors on marks?

A5: 

1. Use the `alt + 1`, `alt + 2` and `alt + 3` to switch whether mark color or not.
1. Use the `alt + 4` to disable all mark's colors.
1. Use `\1`, `\2`, `\3` to remove specified mark color.

**Note**: when you use `alt + 1/2/3`, it will save the mark word into register q/w/e (you can see they are under key 1,2,3), and then you can use them for quick replace.

you mark word "foo" as `alt+1`, word "bar" as 	alt+2	, and now you want to change "foo" to "bar", type `:%s/<ctrl+R>q/<ctrl+R>w/g`

### Q6: How to jump?

A6: 

1. \ to jump to current tag and `\tb`, `\tf` to navigate.
1. `:TS` like `:GS`, you can type the symbol directly.
1. `\ss` to open the global symbol list and \
1. `gd` to jump to local symbol (this is the default command of vim)
1. `alt + shift + l` to open the symbol list window and start search (by automatic add "/" for you)

### Q7: How to build solution of msvc.

A7: 

1. Copy the gVim/Vim/toolKit/makfile/msvc/msvc_config.mk & gVim/Vim/toolKit/makfile/msvc/msvc_entry.mk to project folder. (only for msvc project)
1. `:VM`, `:VM all`, `:VM clean-all`, `:VM rebuild` for msvc
1. `:GM` for gcc (for gcc, you need to copy gcc_config.mk, gcc_entry_m.mk, gcc_rule.mk and project.mk, and distribute them properly )
1. `ctrl + up`, `ctrl + down` can quick jump to quick fix file in project-window.

### Q8: How to create a item in project?

A8: 

1. move cursor to a file line or folder line, type o to create a file.
1. move cursor to a exist folder line, type O to create a new folder under that folder. (there is a bug for create folder, you must create the folder manually in your system. can be fixed. )

### Q9: How to call back the project window?

A9: `alt + shift + p`

### Q10: How to create macro highlight?

A10: 

1. `\aa` to open the macro window.
1. syntax:

{% highlight bash %}
<group>:
    <macro1>
    <macro2>
{% endhighlight %}

### Q11: How to close a buffer?

A11: `\bd` (notice: can not use the :q)

### Q12: How to find out all defined of functions and class in one file?

A12: `F4`

### Q13: How to quick open a file?

A13: `alt + shift + o`

### Q14: How to exchange data with clipboard?

A14: `\y`, `\p`

### Q15: How to quick switch file in buffer?

A15: `ctrl + right`, `ctrl + left`

### Q16: How to quick switch window?

A16: 

1. `shift + direction`
1. `\TAB`: switch between last edit window. (failed if you close last edit window.) useful when you want to have frequency operation between GS/TS/SS/Project and Edit Window

### Q17: How to create a inherited class diagram?

A17: 

1. `\gv` to draw all inherited class diagram of current class
1. `:GVC` "class_name" to get derived class diagram (put in .vimfiles\.hierarchies\class_name.png)
1. `:GVP` "class_name" to get base class diagram (put in .vimfiles\.hierarchies\class_name.png)

### Q18: How to quick locate file in project.

A18: 

1. `\fc` can locate current file
1. `\ff` only locate file in project files tree.
1. `\fd` only locate folder in project files tree.

### Q19: How to list all files "#include" current edit file.

A19: `F2` if there have files include current edit file, it will list at the left of a new window.

### Q20: How to use bookmarks?

A20: 

1. `\mm` to place the next available bookmark on the current line.
1. `\mh` to clear the mark at the current line.
1. `\ma` to clear all bookmark in the current buffer.
1. `\mt` to toggles whether show the "ShowMarks zone" or not.
1. `\mo` to force show the "ShowMarks zone".
1. you can use `mA`... `mZ` to mark a global bookmark.
1. you can use `'` or `\\` to lead a name of bookmark to jump to the bookmark.

### Q21: How to show/hide project window

A21: 

* show: `alt+shift+p`
* hide: `:q`

### Q22: How to quick add surround symbol for something I select

A22: 

In visual mode, type s, then type the surround symbol you want, for example {,(,[, note: space need type twice, the direction of the surround represent to different result, {,(,[ will not add space when surround, otherwise },),] will.

### Q23: How to quick remove surround symbol

A23: 

In the surround symbol, type ds, then fill the symbol surrounded.

### Q24: How to quick close a plugin window.

A24: 

When you in edit window(and you have several plugin windows opened), you don't 
need to go to plugin window and press ESC to close it, press \ESC, it will close plugin 
windows by the time you visited them. And don't worry about any side effect, when you 
in press `\ESC` plugin window, the script is smart enough to judge all the situation.

### Q25: How to copy source code with format information?

A25: 

Use `:SHL` or `:range SHL`, the commands will convert your source code with highlight information into html file, and open it by a specific web-browser. You need to copy settings from %EX_DEV%\exVim\toolkit\src-highlight\ex\'''.''' to %EX_DEV%\tools\GnuWin32\share\source-highlight if you get a blank page.
