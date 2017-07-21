(require 'helm)

(helm-mode 1)

(setq helm-split-window-in-side-p nil
			helm-ff-file-name-history-use-recentf t
			helm-echo-input-in-header-line t
			helm-scroll-amount 8)

(provide 'helm-conf)
