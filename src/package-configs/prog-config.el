(let
    ((my-prog-packages
      '(solidity-mode
        solidity-flycheck
        company-solidity)))

  (dolist (my-prog-package my-prog-packages)
    (unless (package-installed-p my-prog-package)
      (package-install my-prog-package))))

(add-to-list 'load-path "~/.emacs.d/src/package-configs/prog-config")

(let
    ((prog-configs
      '("solidity-config")))
  (dolist (prog-config prog-configs)
    (load-library prog-config)))
