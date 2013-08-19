---
layout: page
title: Edit Code Quickly
permalink: /docs/edit_code/
---

## Intro

When you working in a big project, there always dozens of classes, functions and variables.  The chapter before shows how to search these things in a project, but once you locate the things, you would start working in it.  In this chapter, we will show you how to use exVim to read and write your detail codes.

## Highlight Words

### Word Highlight

When we reading a block of codes, the nice thing is we can temporarily highlight those words/variables we care about, that will increase our code reading speed, and decrease mismatching the wrong text. To highlight a word, you just need to move your cursor to the word and press `<alt> + 1/2/3/4`. We provide 4 kinds of color let you highlight 4 different words at the same time. When you press same number of hot-key in highlighted words, it will clear the highlight, like a switch.

### Highlight Clear

The `<alt> + 0` will clear all highlighted words. Also you can use `<leader>1/2/3/4` to erase a specific highlight. When you highlight a word, and use another number to hgihlight the same word, The color of the larger number highlight will overwrite the smaller one. 

### Visual Highlight

You can use `<alt> + 1/2/3/4` in visual mode, it will highlight those selected line even you just select several column in a line. This is helpful when you want to known hwo many codes in a block.

### Highlight Commands

The exVim word highlight also provide a way to let you input pattern for highlighting. Just by the commands HL1/2/3/4 {pattern}. The pattern could be a regular expression or just a simple word.

### Auto Highlight

When set `g:ex_auto_hl_cursor_word` to 1 in .vimrc, exVim will use exSynHLTemp syntax highlight color to highlight the word under current cursor when cursor holds.

### Tips

In chapter [Tips And Tricks](../tips_and_tricks), the #7 shows how to use the highlight word to quickly substitute specific words.

### View Class Hierarchy

In object-oriented language like cpp,java,python and so on, inherit is a most important things. It would be pain for big OO project if the inherit goes deep. To clarify the hierarchy of the class, exVim provide commands to drawing the class hierarchy pictures.

### View Class Hierarchy Directly

When your cursor under a class name, you can press \gv to draw the full hierarchy picture of that class. And the picture will be shown if you set the g:exES_ImageViewer variable to a picture viewr tool.

### Draw Children/Parent Class Hierarchy

The commdand `GVC {class-name}` will draw the children class hierarchy of the {class-name} you give. 
The commdand `GVP {class-name}` will draw the parent class hierarchy of the {class-name} you give. 

## Settings

More settings and commands, check chapter [exUtility](../ex_utility)
