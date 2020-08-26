(require 'treemacs)
(global-set-key [f8] 'treemacs)
(treemacs-git-mode 'extended)
(with-eval-after-load 'treemacs
  (add-to-list 'treemacs-pre-file-insert-predicates #'treemacs-is-file-git-ignored?))

(require 'treemacs-projectile)

(require 'all-the-icons)
(setq neo-theme
      (if (display-graphic-p) 'icons 'arrow))
