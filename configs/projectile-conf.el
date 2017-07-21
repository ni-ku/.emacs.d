(require 'projectile)
(require 'helm-projectile)

(projectile-global-mode t)
(setq projectile-use-native-indexing t)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(projectile-register-project-type 'cmake '("CMakeLists.txt")
                                  :compile "make"
                                  :test "")

(provide 'projectile-conf)
