;; show/hide toolbar
(require 'tool-bar)
(tool-bar-mode 0)
;; show/hide menubar
;(menu-bar-mode 0)
;; show/hide startup screen
;(setq inhibit-startup-screen 1)

;; font size
(set-face-attribute 'default nil :height 85)
;; spaces not tabs
(setq-default indent-tabs-mode nil)
;; indent width
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
;; show line numbers
(global-linum-mode t)
;; show column numbers
(column-number-mode t)
;; ignore case when searching
(setq-default case-fold-search 1)
; don't blink the cursor
(blink-cursor-mode 0)
; smooth scrolling
(setq scroll-step 1
      scroll-conservatively 10000)
; highlight parentheses when the cursor is next to them
(require 'paren)
(show-paren-mode 1)
; disable backup
(setq backup-inhibited t)
; disable auto save
(setq auto-save-default nil)
; dont access x clipboard on kill/yank
(setq x-select-enable-clipboard nil)

(setq gc-cons-threshold 100000000)
(setq inhibit-startup-message t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook
          (lambda () (interactive)
            (setq show-trailing-whitespace 1)))

;; Compilation
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))

;; setup GDB
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t
 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t)

(provide 'general-conf)
