(setq my-packages
      '(ido-vertical-mode
        flx-ido
        smex
        company
        company-quickhelp
        magit
        paredit
        rainbow-delimiters
        projectile
        popwin
        flycheck))

(dolist (package my-packages)
  (unless (package-installed-p package)
    (package-install package)))

(setq my-configs
      '("ido-config"
        "smex-config"
        "company-config"
        "magit-config"
        "paredit-config"
        "rainbow-delimiters-config"
        "projectile-config"
        "popwin-config"
        "flycheck-config"))

(add-to-list 'load-path "~/.emacs.d/init/package-configs")

(dolist (config my-configs)
  (load-library config))
