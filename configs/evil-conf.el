(require 'evil)
(require 'evil-escape)

(evil-mode 1)
(evil-escape-mode 1)

(define-key evil-normal-state-map (kbd "q") nil)
(define-key evil-normal-state-map (kbd "M-.") nil)
(setq-default evil-escape-delay 0.2)

(provide 'evil-conf)
