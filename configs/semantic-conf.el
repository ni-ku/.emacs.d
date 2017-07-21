(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-mode 1)

;; default include paths
;; /usr/include
;; /usr/local/include
(semantic-add-system-include "/usr/include/boost" 'c++-mode)

(provide 'semantic-conf)
