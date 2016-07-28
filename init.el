
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
(require 'auto-complete-config)

(powerline-default-theme)
;;(powerline-center-theme)
(tool-bar-mode -1)
(menu-bar-mode t)
(global-linum-mode t)
(scroll-bar-mode -1)
(global-rinari-mode)
(windmove-default-keybindings)
(global-move-dup-mode)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(ac-config-default)

(set-face-attribute 'default (selected-frame) :height 135)
(set-frame-font "Hack" t t)

(setq ido-everywhere t)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-enable-flex-matching t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:foreground "#030303" :background "#bdbdbd" :box nil))))
 '(mode-line-inactive ((t (:foreground "#f9f9f9" :background "#666666" :box nil)))))

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
    ("b04425cc726711a6c91e8ebc20cf5a3927160681941e06bc7900a5a5bfe1a77f" "a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" default)))
 '(initial-buffer-choice t)
 '(package-selected-packages
   (quote
    (yaml-mode octicons powerline move-dup ido-vertical-mode highlight-indentation smartparens rinari auto-complete atom-dark-theme literate-starter-kit))))

;;Powerline configs
(setq powerline-default-separator 'arrow-fade)
;;(setq powerline-text-scale-factor 1.1)
(setq powerline-display-buffer-size nil)
(setq powerline-display-mule-info nil)
(setq powerline-display-hud nil)

;;(setq powerline-height 25)
(set-face-attribute 'powerline-active1 nil
              :foreground "#F3C1BE"
              :background "#A75C58")

(set-face-attribute 'powerline-active2 nil
              :foreground "#F3C1BE"
              :background "#A75C58")

(set-face-attribute 'powerline-inactive1 nil
              :foreground "#A75C58"
              :background "#F3C1BE")

(set-face-attribute 'powerline-inactive2 nil
              :foreground "#A75C58"
              :background "#F3C1BE")
