(setq auth-sources '("~/.authinfo.gpg"))

(setq erc-prompt-for-password nil)

(defun erc-init ()
  "connect to irc"
  (interactive)
  (erc-tls :server "freenode.net"
           :port 6697
           :nick "luiguip"))
;; (setq erc-autojoin-channels-alist '(("freenode.net"
;;                                        "#emacs" "#archlinux-reproducible" "#archlinux-br"))))
