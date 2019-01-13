;; #################  My Emacs File ###################
;; ### init.el with some configurations/preferences ###
;; ###          @author: Clederson Cruz             ###
;; ###                   2019                       ###
;; ####################################################

(package-initialize)

;; ################# Melpa packages ###################
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))


;; ################# Themes ###########################
(require 'doom-themes)
(load-theme 'doom-one t)
;; (load-theme 'misterioso) ;; dark theme built-in


;; ################# Icons ############################
(require 'all-the-icons)


;; ################# File Explorer Menu ##############
(require 'neotree) 
(global-set-key (kbd "C-x C-5") 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-window-fixed-size nil)


;; ################# Window Shortcuts #################
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'shrink-window)
(global-set-key (kbd "S-C-<down>") 'enlarge-window)


;; ################# Custom Shortcuts #################
(global-set-key (kbd "C-c k") 'yas-expand)
(global-set-key (kbd "C-<enter>") 'elpy-goto-definition)
(global-set-key (kbd "C-S-<enter>") 'elpy-goto-definition-other-window)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-x C-/") 'yafolding-toggle-element)


;; ################# Preferences ######################
(tool-bar-mode -1) ;; It hides tool-bar
(menu-bar-mode -1) ;; It hides menu-bar
(toggle-scroll-bar -1) ;; It hides scroll-bar
(setq inhibit-startup-screen t) ;; It hides default Emacs Welcome
(global-linum-mode t) ;; It shows line-number on left of window's buffer
(setq column-number-mode t) ;; It shows column-number on bottom
(setq-default tab-width 4) ;; It set tab-size to 4 (PEP8 recommendation for Python)
(electric-pair-mode 1) ;; Auto-complete: " ' “” ‘’ () {} [] «» ‹› 「」
(put 'narrow-to-region 'disabled nil) ;; Actives narrow to region
(show-paren-mode 1) ;; Highlights () [] {} ...
(require 'paren)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "#68ACEE")
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)


;; ################# Python Preferences ###############
(elpy-enable) ;; Emacs Lisp Python Environment: <https://github.com/jorgenschaefer/elpy>
(yas-global-mode 1) ;; YASnippet is a template system for Emacs: <https://github.com/joaotavora/yasnippet>
(setq highlight-indentation-blank-lines t) ;; It shows indent guides on blank lines
(set-face-background 'highlight-indentation-face "#373A40") ;; Background of indentation
(set-face-background 'highlight-indentation-current-column-face "#949da8") ;; Background of current indent.
(yafolding-mode 1) ;; It shows/hides code blocks
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt") ;; Interpreter, "python" is used by default instead of ipython


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(expand-region yasnippet-classic-snippets json-mode markdown-mode flymd elpy neotree doom-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
