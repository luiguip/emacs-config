(let
    ((packages
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
  (if-not-installed-install packages))

(let
    ((path "~/.emacs.d/src/package-configs")
     (configs
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
  (load-libraries path configs))
