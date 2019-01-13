# Emacs File for Python Environment

This is an Emacs File for Python Environment that allows you to use debug, refactor, run tests, code auto-formatting according to PEP8 and more. The file are structured with sections that you can modify.

# Preview

<p align="center">
    <img src="preview/preview.png"></img>
</p>

# How to install
Clone this repository.
```bash
	git clone https://github.com/cledersonbc/emacs-file
	cd emacs-file
```
If you don't have an .emacs.d in your home, type:
```bash
	mkdir ~/.emacs.d
	cp init.el ~/.emacs.d/
```
If you have your own *init.el* in your home, so use this code:
```bash
	cp ~/.emacs.d/init.el ~/.emacs.d/init.el.bak
	cp init.el ~/.emacs.d/
```

Now, you need to install some Python and Emacs packages.


## Python Packages
It's important install some Python packages with **pip**. Use e.g. *pip install < package >*. Please, install:
* **rope** or **jedi** (python refactoring library)
* **flake8** (wrapper to code checks)
* **autopep8** (automatic PEP8 formatting)
* **yapf** (code formatting)

See this documentation on [Elpy](https://github.com/jorgenschaefer/elpy). To install Elpy on Linux you can do:
* sudo apt-get install elpa-elpy # Debian-like, e.g. Ubuntu, Mint etc.
* sudo *(aur helper, e.g. pikaur)* -S emacs-elpy # Arch Linux-like, e.g. Manjaro, Antergos etc.

## Emacs Packages
You need  **Melpa** to access melpa packages. It is included by default in this emacs file.

* **Neotree** is like sr-speedbar, but more friendly and visually attractive. You can see it on the left of preview.
* **All-the-icons** are beautiful icons (for more UX), as it's displayed on the preview image.
* **Doom-theme** is a pretty good dark theme.
* **Flymd** package that allows you to see markdown files while do you edit them.
* **Expand-region** is an utility to select regions on code.
* **Yasnippet-classic-snippets** allows you to autocomplete code pieces of some languages.
* **Markdown-mode** (sintax highlighting for markdown)
* **Json-mode** (sintax highlighting for json)


# How to use
Open or create a python file typing ``C-x C-f``. When *python-mode* is enabled, some commands are available.You can use these commands:

**Navigation**
* ``C-<enter>`` (default ``M-.``): go to definition of a class, function...
* ``C-S-<enter>`` (default ``C-x 4 M-.``): go to definition in other window.
* ``M-*``: go back to the last place where ``M-.`` was used.
* ``C-x C-/``: toggle the visibility of a block of code.
* ``C-x C-5``: toggle the window explorer menu.
* ``S-C-<left>``: shrink window horizontally.
* ``S-C-<right>``: enlarge window horizontally.
* ``S-C-<up>``: shrink window.
* ``S-C-<down>``: enlarge window.


**Code Edit**
* ``C-=``: select symbol, word, phrase and piece of code.
* ``C-c k``: construct a block of code, e.g.: type "for" in your code and press ``C-c k``. Use **tab** to navigate.
* ``C-c C-v``: check your code.
* ``C-c C-n``: go to next error in your code.
* ``C-c C-p``: go to previous error in your code.
* ``C-c C-e``: refactor your code in the specified region.
* ``C-c C-r f``: format your code according PEP8.
* ``C-x n n``: narrow down to between point and mark.
* ``C-x n w``: widen to make the entire buffer accessible again.

**Project**
* ``C-c C-f``: find a file in current project.
* ``C-c C-c``: run your script.
* ``C-c C-z``: open a buffer with Python interpreter.
* ``C-c C-t``: test your code.


You are free to edit this shortcuts keys and packages and create your own init.el based in this file. Read more on:
* [EmacsWiki - Python Programming in Emacs](https://www.emacswiki.org/emacs/PythonProgrammingInEmacs)
* [Wikemacs - Python](http://wikemacs.org/wiki/Python)
* [Emacs as Python IDE by Anand Reddy Pandikunta](http://chillaranand.github.io/emacs-py-ide/)
* [Elpy](https://elpy.readthedocs.io/en/latest/ide.html)
* [Yasnippet](https://github.com/joaotavora/yasnippet)
* [Expand-region](https://github.com/magnars/expand-region.el)
* [Neotree](https://github.com/jaypei/emacs-neotree)
