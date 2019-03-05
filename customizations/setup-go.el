;; enable go autocomplete
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

(setq gofmt-command "goimports")
(setq tab-width 2 indent-tabs-mode 1)

;; go-fmt hook
(add-hook 'before-save-hook 'gofmt-before-save)

; bind go-to-definition
(local-set-key (kbd "M-.") 'godef-jump)

; eldoc shows the signature of the function at point in the status bar.
(go-eldoc-setup)
