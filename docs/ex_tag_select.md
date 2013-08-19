---
layout: page
title: exTagSelect
permalink: /docs/ex_tag_select/
---

## Intro

The exTagSelect is responsible for showing the possible tags you gived, list them in select-window.

If you choose a tag from select-window, it will jump to the position in edit-window, and record the jump. 

You can browse your jump history in exJumpStack, and if necessary you can jump back to read that code.

The exTagSelect loads data from tags file created by [cTags](http://ctags.sourceforge.net) The recommend command is:

{% highlight bash %}
ctags -o./_tags -R --c++-kinds=+p --fields=+iaS --extra=+q \
    --languages=c,c++,c#,python,vim,html,lua,javascript,uc,math \
    --langmap=c++:+.inl,c:+.fx,c:+.fxh,c:+.hlsl,c:+.vsh,c:+.psh,c:+.cg,c:+.shd,javascript:+.as ..
{% endhighlight %}

But you really don't need to worry about the tag generation and setting the path of the tag. In exVim the process will be done automatcially in quick_gen_project_xxx.(bat\|sh) and ".vimentry" file

## Variables

### exTS_window_height

Set the height of the window. This variable only effect when the g:exTS_use_vertical_window = 0

{% highlight vim %}
let g:exTS_window_height = 20
{% endhighlight %}

### exTS_window_width

Set the width of the window. This variable only effect when the g:exTS_use_vertical_window = 1

{% highlight vim %}
let g:exTS_window_width = 30
{% endhighlight %}

### exTS_window_height_increment

Set the height increase value of window. This variable only effect when the g:exTS_use_vertical_window = 0

{% highlight vim %}
let g:exTS_window_height_increment = 30
{% endhighlight %}

### exTS_window_width_increment

Set the width increase value of window. This variable only effect when the g:exTS_use_vertical_window = 1

{% highlight vim %}
let g:exTS_window_width_increment = 100
{% endhighlight %}

### exTS_window_direction

* topleft
* botright
* belowright

Set the window direction. This variable will be affect by g:exTS_use_vertical_window.  When the vertical is true. it picked left, right direction, when the vertical is false, it picked top, bot direction.

{% highlight vim %}
let g:exTS_window_direction = 'topleft'
{% endhighlight %}

### exTS_use_vertical_window

Use the vertical window or the horizontal window

{% highlight vim %}
let g:exTS_use_vertical_window = 1
{% endhighlight %}

### exTS_backto_editbuf

If the value is 1, after choosing a item from explugin-window, the cursor will jump into the edit-window. Otherwise the cursor will jump back to the explugin-window. 

{% highlight vim %}
let g:exTS_backto_editbuf = 1
{% endhighlight %}

### exTS_close_when_selected

If the value is 1, after choosing a item from explugin-select/quickview-window, the script will close the explugin-select/quickview-window immediatelly.

{% highlight vim %}
let g:exTS_close_when_selected = 0
{% endhighlight %}

## Commands

### :ExtsGoDirectly

Search word under current cursor (<cword>) as tag name, and list the possible results in select-window. Recommended mapping:

{% highlight vim %}
nnoremap <unique> <silent> <Leader>] :ExtsGoDirectly<CR>
{% endhighlight %}

### :TS {tag-name}

Search a tag by {tag-name}, list the possible results in select-window. You can use <tab> to get matched tags when inputing tag names.

### :ExtsSelectToggle

Open the exTagSelect select-window. Recommended mapping:

{% highlight vim %}
nnoremap <unique> <silent> <Leader>ts :ExtsSelectToggle<CR>
{% endhighlight %}

### :TSigc

Set ignore case for tag search. 

### :TSnoigc

Set no-ignore case for tag search. 

## Key Mappings

### \<return\>

### \<2-leftmouse\>

Jump to the select item in edit-window.

### \<space\>

Resize the project window by exTS_window_height_increment or exTS_window_width_increment

### \<esc\>

Close the exTagSelect plugin window.
