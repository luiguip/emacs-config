(require 'lsp-mode)
(add-to-list 'load-path "~/.emacs.d/init/package-configs/lsp-config")
(let ((lsp-configs
       '("lsp-elixir-config")))
  (dolist (lsp-config lsp-configs)
    (load-library lsp-config)))
