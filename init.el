;; path to my configs
(add-to-list 'load-path "~/.emacs.d/configs")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; repositories for packages
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
;("marmalade" . "http://marmalade-repo.org/packages/")))

(require 'package)

;; list of packages that get installed
(setq package-list '(
evil
evil-escape
helm
magit
projectile
helm-projectile
company
powerline
spaceline
yasnippet
auctex
tide
flymake-ruby
robe
inf-ruby
projectile-rails
gruvbox-theme
sr-speedbar
helm-gtags
company-c-headers
semantic
))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


;; PACKAGE CONFIGS
(require 'general-conf)
(require 'c-conf)
(require 'helm-conf)
(require 'helm-gtags-conf)
(require 'company-conf)
(require 'projectile-conf)
(require 'yasnippet-conf)
(require 'evil-conf)
(require 'powerline-conf)
(require 'auctex-conf)
(require 'typescript-conf)
(require 'magit-conf)
(require 'ruby-conf)
(require 'sr-speedbar-conf)
(require 'semantic-conf)
(require 'keys-conf)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#4A3637" "#7B8748" "#AF865A" "#535C5C" "#4A3637" "#7B8748" "#AF865A"])
 '(custom-enabled-themes (quote (gruvbox)))
 '(custom-safe-themes
   (quote
    ("3eb2b5607b41ad8a6da75fe04d5f92a46d1b9a95a202e3f5369e2cdefb7aac5c" "d29231b2550e0d30b7d0d7fc54a7fb2aa7f47d1b110ee625c1a56b30fea3be0f" "10e231624707d46f7b2059cc9280c332f7c7a530ebc17dba7e506df34c5332c4" "4fddd913a915e8058417a3138b0eb9f3dc4da7e4111e1962545bb64d69aef632" "8b0f072cd55b99fd861343024d26ba068611d922c705ec95d3147f6bdb92b8ed" "a015d059d5413e2374572473491cc12ceb9970039f9bfdc712242d12366b5f41" "b394155911cadb3b40997ba9a18249594b9808cd6732884c73a67ad956f1645b" "76e69a23b418daa077855713ca292d5bf3872f43fa1f3fdfb748610166c7ba10" "858d975263d6b025cc97712c6f0caef5f07f8777621991055bf8417cb7032694" "355d0ebcc652c887ac62d2aef87a3c879ac34b17a09274a743a6cf8894e46de5" "d04d006de53a7cad85555f5098a9751a06236d439a72275eb5b2d5c549c4e7bf" "9bf378ff270651319ce76863ac88ed51498e34a86a9790750a5718c3d8f3865c" "c0d71299e4d3cf34055c34ac166160cb40479b6d59b6e5c0e00c7267a0e24dc5" "19a88dba60e0bc0bd89a16b5e628f343186abc7cff2610a37b0e14ad250a6d96" "54e110ff692dc22e95a64b22da017060929b2aa152b81269ffd968206beec195" "635f22a5e6bf287f6f79284bfc930414ab9f60ac04c0b74dc52b8be167976e18" "a9dec8c2a9bac15531b3f61131e75f47f8ae02e171ca565158a10cafe24854fe" "7b820fde435d424717aee4ce0bad9d1309f41ecb4814d9f810133cbb4ceee46c" "d7ef9e9cac239053e56a5cba4100163437b86545deb30979e2a69beca3668cf3" "64d68538302660d1c26ca6740cd926b0c0f896256453c8e2dd5cf1c2ddd9d76d" "e05fdfcffda7d4ec108b7d89ee6ae1211a6afedc25af5d97405b722f91f82547" "69bb933c70eb3f98a453bc5f61ded80c8f1439b416e73054dc85295c867b8ecf" "cb7919599de818251f7c8d75a133bd13cd88ca839f05ce09dcac5f499b3d14b7" "3e77933ed9fd6a82457162ad65b349720ac9c45b2d67447cb9827dfc1f1744cc" "2fe64640629bedf5bf2013ece57f74614558843d836c5b93a3a6356c72667322" "aa216ee609495bcdf7ad60acad157b5c2d089224e3a50e5ca91d35d8d2a09e4c" "2754adb44d22f65b31ad50d56ae7467f85797472e5c422abedc148f29ce88e86" "3e4ff7e428ae80e210ab0af1ae0ff16a596926ec33903cdded9fe2500aa9036d" "1c881330c5057bb6618378e23e292ef433a35b2ae0d56f50e31349afccdc562a" "213a1b27d983c1848ee6cb0b6037ffefac0d5f7bec897c4274925c6afe8821f8" "db911e783af68d6e22a95fde6c605847ceacc5eb759f1f8c8f4bd6a7c7904554" "2608cd960becc4b3ee0fe038cb9a27103c7916d251eff77afff10d244a820b59" "51d811fe0c39b30dea0a17c242e6fdc165b6f94d38426a9e2b2773ebfd1c0614" "4e753673a37c71b07e3026be75dc6af3efbac5ce335f3707b7d6a110ecb636a3" default)))
 '(package-selected-packages (quote (evil)))
 '(speedbar-show-unknown-files t)
 '(sr-speedbar-auto-refresh nil)
 '(sr-speedbar-max-width 40)
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-skip-other-window-p t)
 '(sr-speedbar-width-x 20))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;(gruvbox-theme emms magit js2-mode auctex rainbow-mode zenburn-theme helm-projectile robe projectile-rails projectile inf-ruby flymake-ruby spaceline yasnippet powerline evil))))
