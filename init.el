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

;; Theme
(load-theme 'misterioso)

;; It hides the menu-bar
(tool-bar-mode -1)
;; It shows the line number on Emacs
(global-linum-mode t)

;; setup sr-speed-bar
(require 'sr-speedbar)
(global-set-key (kbd "C-c b") 'sr-speedbar-toggle)
(setq
 sr-speedbar-right-side nil
 speedbar-show-unknown-files t
 speedbar-use-images nil
 speedbar-vc-do-check nil
 sr-speedbar-auto-refresh nil
 sr-speedbar-max-width 72
 sr-speedbar-width-x 48
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (sr-speedbar))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
