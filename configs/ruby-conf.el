(require 'flymake-ruby)
(require 'robe)
(require 'inf-ruby)
(require 'projectile-rails)

(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'ruby-mode-hook 'projectile-rails-mode)
(eval-after-load 'company
	'(push 'company-robe company-backends))

(provide 'ruby-conf)
