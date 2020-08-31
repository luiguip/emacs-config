(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t) 

(require 'ido-vertical-mode)
(ido-vertical-mode t)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)

(require 'flx-ido)
(flx-ido-mode t)
