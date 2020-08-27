(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
;;Removing custom file from init.el
(setq-default custom-file (expand-file-name ".generated.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
;;(load-file "~/.emacs.d/generated.el")
;;Configs
(add-to-list 'load-path "~/.emacs.d/src")
(load-library "configs")
(load-library "install")
(load-library "load")
(load-library "package-configs")
