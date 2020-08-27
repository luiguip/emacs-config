(defun if-not-installed-install (packages)
  "If package is not installed, install it."
  (dolist (package packages)
    (unless  (package-installed-p package)
      (package-install package))))

(provide 'install)
