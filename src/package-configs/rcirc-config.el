(require 'rcirc)
(setq rcirc-default-user-name "luiguip"
       rcirc-default-nick      "luiguip"
       rcirc-default-full-name "LuiguiP")
(setq rcirc-server-alist
      '(("irc.freenode.net" :port 6697 :encryption tls
	       :channels ("#emacs"))))
(setq rcirc-authinfo
      '("freenode" nickserv))

;;;###autoload
(defun rcirc-tls (server)
  "Handle `rcirc' tls connection to a irc SERVER.
This function will tries to grab the server password (if any)
from `auto-source-search'."
  (interactive
   (list
    (completing-read "Server: " rcirc-server-alist nil t)))
  ;; body:
  (let* ((server-attrs (cdr (assoc server rcirc-server-alist)))
         (login (plist-get server-attrs :nick))
         (password (lookup-password server login))
         (rcirc-server-alist nil))
    ;; let body:
    (if (not server-attrs)
        (message "Server not found")
      ;; if password update server attributes
      (when password
        (setq server-attrs (plist-put server-attrs :password password)))
      ;; update local rcirc-server-alist
      (setq rcirc-server-alist `((,server ,@server-attrs)))
      ;; finally connect to 'all'
      (rcirc nil))))

(defun lookup-password (host user)
  "Lookup using (HOST USER) password on auth-source default file."
  (let* ((auth (auth-source-search :host host :user user))
         (secretf (when auth (plist-get (car auth) :secret))))
         (cond
          ((not auth)
           (message "No auth entry found for %s@%s" user host))
          ((not secretf)
             (message "Auth entry for %s@%s has no secret!" user host))
          (t (funcall secretf)))))
