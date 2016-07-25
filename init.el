
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'ido)
(require 'package)
(require 'rinari)
(require 'smartparens-config)
(require 'powerline)
(require 'move-dup)
  
(tool-bar-mode -1)
(global-rinari-mode)
(windmove-default-keybindings)
(global-move-dup-mode)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(set-face-attribute 'default (selected-frame) :height 135)
(set-frame-font "Hack" t t)

(setq ido-everywhere t)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-enable-flex-matching t)

(setq powerline-arrow-shape 'arrow)
(setq powerline-arrow-shape 'curve)
(setq powerline-arrow-shape 'arrow14)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))
(setq powerline-color1 "grey22")
(setq powerline-color2 "grey40")

(smartparens-global-mode)
(show-smartparens-global-mode t)
(sp-with-modes '(rhtml-mode)
   (sp-local-pair "<" ">")
   (sp-local-pair "<%" "%>"))

(add-hook 'ruby-mode-hook
           (lambda ()
             (highlight-indentation-current-column-mode)
             (set-face-background 'highlight-indentation-current-column-face "#333333")))

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (atom-dark)))
 '(custom-safe-themes
   (quote
    ("a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" default)))
 '(initial-buffer-choice t)
 '(package-selected-packages
   (quote
    (move-dup ido-vertical-mode powerline highlight-indentation smartparens rinari auto-complete atom-dark-theme literate-starter-kit))))

