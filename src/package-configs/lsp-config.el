(require 'lsp-mode)

(add-to-list 'load-path "~/.emacs.d/src/package-configs/lsp-config")

(let ((lsp-configs
       '("lsp-elixir-config")))
  (dolist (lsp-config lsp-configs)
    (load-library lsp-config)))

(require 'lsp-ui)
(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
