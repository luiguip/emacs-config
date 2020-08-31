(defun load-libraries (path libraries)
  "Load libraries from path"
  (progn
    (add-to-list 'load-path path)
    (dolist (library libraries)
       (load-library library))))

(provide 'load)
