;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; VISUAL
(setq doom-theme 'doom-gruvbox)
(setq doom-font (font-spec :family "Iosevka Nerd Font"))
(custom-set-faces!
  '(mode-line :background "#282828")
  '(mode-line-inactive :background "#282828"))

;; FUNCTIONALITY
(setq display-line-numbers-type 'relative)
(setq which-key-idle-delay 0.1)

;; OTHER
(setq org-directory "~/org/")
