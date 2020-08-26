(require 'solidity-mode)

(setq solidity-comment-style 'slash)

(define-key solidity-mode-map (kbd "C-c C-g") 'solidity-estimate-gas-at-point)

(setq solidity-solc-path "~/.node_modules/bin/solc")
(setq solidity-solium-path "~/.node_modules/bin/solium")


(require 'solidity-flycheck)

(setq solidity-flycheck-solc-checker-active t)
(setq solidity-flycheck-solium-checker-active t)

(require 'company-solidity)

(add-hook 'solidity-mode-hook
	(lambda ()
	(set (make-local-variable 'company-backends)
		(append '((company-solidity company-capf company-dabbrev-code))
			company-backends))))
