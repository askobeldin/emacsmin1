;; my-markdown.el
;; Settings for editing Markdown files.

; (use-package markdown-mode
  ; :commands markdown-mode
  ; :ensure markdown-mode
  ; :init
  ; (progn
    ; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
    ; (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
    ; (add-to-list 'auto-mode-alist '("\\.page\\'" . markdown-mode))
    ; (add-hook 'markdown-mode-hook 'visual-line-mode)
    ; )
  ; )

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))


(provide 'my-markdown)
