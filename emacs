;; load emacs 24's package system. Add MELPA repository.

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

;; disable alarm bell
(setq visible-bell 1)

;; Set calendar format
(setq european-calendar-style 't)

;; Display diary
(diary)

;; Display line numbers
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; Turn off toolbar
(when tool-bar-mode (tool-bar-mode 0))

;; Set default major mode to text mode and turn on refill minor mode for it
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook' (lambda() (refill-mode 1)))

;; Set undo to better key
(define-key global-map "\C-x\C-u" 'undo)

(defun webportal ()
  (interactive)
  (let ((default-directory "~/Programming/MSD/smart/smart-webportal/"))
    (setq bufname "Web Portal")
    (ansi-term "/bin/zsh" bufname)
    (process-send-string (concat "*" bufname "*" ) "~/.nvm/versions/node/v10.8.0/bin/npm run start\n")
    )
  )

(defun smart-server ()
  (interactive)
  (let ((default-directory "~/Programming/MSD/smart/smart-backend/"))
    (setq bufname "Web Portal")
    (ansi-term "/bin/zsh" bufname)
    (process-send-string (concat "*" bufname "*" ) "~/.nvm/versions/node/v10.8.0/bin/npm run start\n")
    )
  )
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("cdd26fa6a8c6706c9009db659d2dffd7f4b0350f9cc94e5df657fa295fffec71" default)))
 '(package-selected-packages (quote (typescript-mode neotree farmhouse-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Set the theme
(load-theme 'farmhouse-dark)
