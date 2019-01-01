;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

;; Turn off toolbar
(when tool-bar-mode (tool-bar-mode 0))

;; Set default major mode to text mode and turn on refill minor mode for it
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook' (lambda() (refill-mode 1)))

;; Set undo to better key
(define-key global-map "\C-x\C-u" 'undo)

