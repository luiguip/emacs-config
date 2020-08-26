(let
    ((my-packages
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
        flycheck
        evil
        hydra
        elfeed
        lsp-mode
        lsp-ui
        treemacs
        all-the-icons
        treemacs-projectile
        ivy)))

  (dolist (package my-packages)
    (unless (package-installed-p package)
      (package-install package))))
(add-to-list 'load-path "~/.emacs.d/src/package-configs")

(let
    ((my-configs
       '("ivy-config"
         "smex-config"
         "company-config"
         "magit-config"
         "paredit-config"
         "rainbow-delimiters-config"
         "projectile-config"
         "popwin-config"
         "flycheck-config"
         "evil-config"
         "hydra-config"
         "lsp-config"
         "elfeed-config"
         "erc-config"
         "file-manager-config"
         "prog-config")))
(dolist (config my-configs)
  (load-library config)))
