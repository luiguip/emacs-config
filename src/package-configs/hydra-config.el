(require 'hydra)
(add-to-list 'load-path "~/.emacs.d/src/package-configs/hydra-config")
(let ((my-hydra-buffers
       '("hydra-buffer-menu"
         "hydra-dired-menu")))
  (dolist (hydra-buffer my-hydra-buffers)
    (load-library hydra-buffer)))
