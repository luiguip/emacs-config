(setq my-packages
      '(ido-vertical-mode
        flx-ido
        smex
        company
        magit
        paredit
        rainbow-delimiters))

(dolist (package my-packages)
  (unless (package-installed-p package)
    (package-install package)))

(setq my-configs
      '("ido-config"
        "smex-config"
        "company-config"
        "magit-config"
        "paredit-config"
        "rainbow-delimiters-config"))

(add-to-list 'load-path "~/.emacs.d/init/package-configs")

(dolist (config my-configs)
  (load-library config))
