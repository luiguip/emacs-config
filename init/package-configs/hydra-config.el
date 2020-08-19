(require 'hydra)
(add-to-list 'load-path "~/.emacs.d/init/package-configs/hydra-config")
(let ((my-hydra-buffers
       '("hydra-buffer-menu")))
  (dolist (hydra-buffer my-hydra-buffers)
    (load-library hydra-buffer)))
