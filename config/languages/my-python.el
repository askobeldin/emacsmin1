;; my python config
;;

; (when (featurep 'python) (unload-feature 'python t))
; (autoload 'python-mode "python-mode" "Python editing mode." t)

; (use-package python-mode
      ; :commands python-mode
      ; :mode "\\.py\\'"
      ; :init
      ; (progn
        ; (add-to-list 'auto-mode-alist '("/PYDOCS\\'" . help-mode))
        ; (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
        ; (add-to-list 'interpreter-mode-alist '("python" . python-mode)))
      ; :config
      ; (progn
        ; (setq python-indent-offset 4)
        ; (setq py-electric-comment-p nil)
        ; (setq py-max-help-buffer-p nil)
        ; (setq py-electric-comment-add-space-p nil)
        ; (setq py-tab-indent nil)
        ; ;; (setq py-smart-indentation t)
        ; (setq py-return-key 'py-newline-and-indent)
        ; (setq py-complete-function nil)
        ; (setq py-empty-line-closes-p nil)
        ; ;; yasnippet
        ; (yas-reload-all)
        ; (add-hook 'python-mode-hook #'yas-minor-mode)

        ; (evil-define-key 'insert python-mode-map (kbd "RET") 'py-newline-and-indent)))

;; yasnippet
(require 'yasnippet)
(yas-reload-all)
(add-hook 'python-mode-hook #'yas-minor-mode)

(provide 'my-python)
