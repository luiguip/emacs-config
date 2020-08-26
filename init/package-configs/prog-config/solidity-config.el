(require 'solidity-mode)

(setq solidity-comment-style 'slash)

(require 'solidity-flycheck)

(setq solidity-flycheck-solc-checker-active t)
(setq solidity-flycheck-solium-checker-active t)

(require 'company-solidity)

(add-hook 'solidity-mode-hook
	(lambda ()
	(set (make-local-variable 'company-backends)
		(append '((company-solidity company-capf company-dabbrev-code))
			company-backends))))
