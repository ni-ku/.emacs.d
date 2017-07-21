(global-unset-key (kbd "C-x c"))

;; window navigation (vim like navigation)
(define-key global-map (kbd "C-c k") 'windmove-up)
(define-key global-map (kbd "C-c j") 'windmove-down)
(define-key global-map (kbd "C-c h") 'windmove-left)
(define-key global-map (kbd "C-c l") 'windmove-right)

;; helm
(with-eval-after-load 'helm
    (global-set-key (kbd "C-h i") 'helm-info-emacs)
    (global-set-key (kbd "C-h b") 'helm-buffers-list)
    (global-set-key (kbd "C-h f") 'helm-find-files)
    (global-set-key (kbd "C-h m") 'helm-mini)
    (global-set-key (kbd "C-x x") 'helm-M-x)
    (global-set-key (kbd "C-h p") 'helm-show-kill-ring)
    (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action))

;; helm gtags
(with-eval-after-load 'helm-gtags
    (define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
    (define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
    (define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
    (define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
    (define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
    (define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history))

;; magit
(with-eval-after-load 'magit
  (global-set-key (kbd "C-x g") 'magit-status))

;; evil escape
(with-eval-after-load 'evil-escape
(setq-default evil-escape-key-sequence "ii"))

;; sr-speedbar
(with-eval-after-load 'sr-speedbar
  (global-set-key (kbd "<f4>") 'sr-speedbar-toggle))

(provide 'keys-conf)
