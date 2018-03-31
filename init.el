;; #################  My Emacs File ###################
;; ### init.el with some configurations/preferences ###
;; ###          @author: Clederson Cruz             ###
;; ###                   2017                       ###
;; ####################################################

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;; Themes
(require 'doom-themes)
(load-theme 'doom-one t)
;; (load-theme 'misterioso)

;; Icons
(require 'all-the-icons)

;; Window
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'shrink-window)
(global-set-key (kbd "S-C-<down>") 'enlarge-window)

;; It hides the menu-bar, scrollbar and tool-bar
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
;; It hides Emacs Welcome
(setq inhibit-startup-screen t)
;; It shows the line number on Emacs
(global-linum-mode t)
;; Auto-complete
(global-auto-complete-mode t)
;; Auto-pair
(autopair-global-mode)
;; Tabs
(setq-default indent-tabs-mode t)
(setq-default tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
;; setup Neotree
(require 'neotree)
(global-set-key (kbd "C-c C-d") 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-window-fixed-size nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
	(neotree doom-themes autopair auto-complete sr-speedbar))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
