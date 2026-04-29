;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; VISUAL
(setq doom-theme 'doom-gruvbox)
(setq doom-font (font-spec :family "Iosevka Nerd Font"))
(custom-set-faces!
  '(mode-line :background "#282828")
  '(mode-line-inactive :background "#282828"))
(defun my-dashboard-ascii-banner ()
  (let* ((banner '(
                   "▓█████▄  ▒█████   ▒█████   ███▄ ▄███▓"
                   "▒██▀ ██▌▒██▒  ██▒▒██▒  ██▒▓██▒▀█▀ ██▒"
                   "░██   █▌▒██░  ██▒▒██░  ██▒▓██    ▓██░"
                   "░▓█▄   ▌▒██   ██░▒██   ██░▒██    ▒██ "
                   "░▒████▓ ░ ████▓▒░░ ████▓▒░▒██▒   ░██▒"
                   " ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░   ░  ░"
                   " ░ ▒  ▒   ░ ▒ ▒░   ░ ▒ ▒░ ░  ░      ░"
                   " ░ ░  ░ ░ ░ ░ ▒  ░ ░ ░ ▒  ░      ░   "
                   "   ░        ░ ░      ░ ░         ░   "
                   " ░                                   "
                   ))
         (longest (apply #'max (mapcar #'length banner))))
    (dolist (line banner)
      (insert
       (propertize
        (+doom-dashboard--center
         +doom-dashboard--width
         (concat line (make-string (max 0 (- longest (length line))) 32)))
        'face '(:foreground "#98971a" :weight bold))
       "\n"))))
(setq +doom-dashboard-ascii-banner-fn #'my-dashboard-ascii-banner)

;; FUNCTIONALITY
(setq display-line-numbers-type 'relative)
(setq which-key-idle-delay 0.1)

;; OTHER
(setq org-directory "~/org/")
