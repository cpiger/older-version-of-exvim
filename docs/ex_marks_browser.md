---
layout: page
title: exMarksBrowser
permalink: /docs/ex_marks_browser/
---

## Intro

exMarksBrowser will browse available marks in the plugin window. You can select a mark and jump to its position in edit window.

There are several kinds of marks in vim, the lowercase mark and uppercase mark are the most useful two marks. As we know lowercase mark used in buffer scope otherwise the uppercase used in global scope. When you use exMarkBrowser, it will shows all marks including the lower and upper case mark. And if your current edit file changes, the lowercase mark changes, so it is said in exMarkBrowser when you jump from a uppercase mark, it will refresh marks in exMarkBrowser.

## Variables

### exMB_window_height

Set the height of the window. This variable only effect when the g:exMB_use_vertical_window = 0

{% highlight vim %}
let g:exMB_window_height = 20
{% endhighlight %}

### exMB_window_width

Set the width of the window. This variable only effect when the g:exMB_use_vertical_window = 1

{% highlight vim %}
let g:exMB_window_width = 30
{% endhighlight %}

### exMB_window_height_increment

Set the height increase value of window. This variable only effect when the g:exMB_use_vertical_window = 0

{% highlight vim %}
let g:exMB_window_height_increment = 30
{% endhighlight %}

### exMB_window_width_increment

Set the width increase value of window. This variable only effect when the g:exMB_use_vertical_window = 1

{% highlight vim %}
let g:exMB_window_width_increment = 100
{% endhighlight %}

### exMB_window_direction

* topleft
* botright
* belowright

Set the window direction. This variable will be affect by g:exMB_use_vertical_window.  When the vertical is true. it picked left, right direction, when the vertical is false, it picked top, bot direction.

{% highlight vim %}
let g:exMB_window_direction = 'belowright'
{% endhighlight %}

### exMB_use_vertical_window

Use the vertical window or the horizontal window

{% highlight vim %}
let g:exMB_use_vertical_window = 1
{% endhighlight %}

### exMB_backto_editbuf

If the value is 1, after choosing a item from explugin-window, the cursor will jump into 
the edit-window. Otherwise the cursor will jump back to the explugin-window. 

{% highlight vim %}
let g:exMB_backto_editbuf = 1
{% endhighlight %}

### exMB_close_when_selected

If the value is 1, after choosing a item from explugin-select/quickview-window, the script 
will close the explugin-select/quickview-window immediatelly.

{% highlight vim %}
let g:exMB_close_when_selected = 0
{% endhighlight %}

## Commands

### :ExmbToggle

Open/Close exMarksBrowser plugin window. Recommend mapping:

{% highlight vim %}
nnoremap <unique> <leader>ms :ExmbToggle<CR>
{% endhighlight %}

## Key Mappings

### \<return\>

Enable/Disable macro highlight or group highlight

### \<space\>

Resize the exMarksBrowser plugin window by exMH_window_height_increment or exMH_window_width_increment

### \<esc\>

Close the exMarksBrowser plugin window.
