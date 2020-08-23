(require 'rcirc)
(setq rcirc-default-user-name "luiguip"
       rcirc-default-nick      "luiguip"
       rcirc-default-full-name "LuiguiP")
(setq rcirc-server-alist
      '(("irc.freenode.net" :port 6697 :encryption tls
	       :channels ("#emacs"))))
(setq rcirc-authinfo
      '("freenode" nickserv))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defadvice rcirc (before rcirc-read-from-authinfo activate)                   ;;
  "Allow rcirc to read authinfo from ~/.authinfo.gpg via the auth-source API. ;;
This doesn't support the chanserv auth method"                                ;;
  (unless arg                                                                 ;;
    (dolist (p (auth-source-search :port '("nickserv" "bitlbee" "quakenet")   ;;
                                   :require '(:port :user :secret)))          ;;
      (let ((secret (plist-get p :secret))                                    ;;
            (method (intern (plist-get p :port))))                            ;;
        (add-to-list 'rcirc-authinfo                                          ;;
                     (list (plist-get p :host)                                ;;
                           method                                             ;;
                           (plist-get p :user)                                ;;
                           (if (functionp secret)                             ;;
                               (funcall secret)                               ;;
                             secret)))))))                                    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
