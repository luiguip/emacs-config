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
        neotree
        all-the-icons)))

  (dolist (package my-packages)
    (unless (package-installed-p package)
      (package-install package))))
(add-to-list 'load-path "~/.emacs.d/init/package-configs")

(let
    ((my-configs
       '("ido-config"
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
         "rcirc-config"
         "file-manager-config")))
(dolist (config my-configs)
  (load-library config)))
