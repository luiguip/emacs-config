(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(require 'treemacs-projectile)
(global-set-key [f2] 'treemacs-projectile)

(require 'all-the-icons)
(setq neo-theme
      (if (display-graphic-p) 'icons 'arrow))
