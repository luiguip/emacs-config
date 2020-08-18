(setq my-packages
      '(smex
        company
        magit
        paredit))

(dolist (package my-packages)
  (unless (package-installed-p package)
    (package-install package)))

(add-to-list 'load-path "~/.emacs.d/init/package-configs")
(load-library "ido-config")
(load-library "smex-config")
(load-library "company-config")
(load-library "magit-config")
