;; my-snippets.el
;;
;; Code snippets for speedy snipping.

;; try to use popup
;; (require 'popup)

(use-package yasnippet
  :ensure yasnippet
  ;; :init
  ;; (progn
  ;;   (defun yas-popup-isearch-prompt (prompt choices &optional display-fn)
  ;;       (when (featurep 'popup)
  ;;           (popup-menu*
  ;;           (mapcar
  ;;           (lambda (choice)
  ;;               (popup-make-item
  ;;               (or (and display-fn (funcall display-fn choice))
  ;;                   choice)
  ;;               :value choice))
  ;;           choices)
  ;;           :prompt prompt
  ;;           ;; start isearch mode immediately
  ;;           :isearch t))))
  ;;   :config
  ;;   (progn
  ;;     (setq yas-prompt-functions '(yas-popup-isearch-prompt yas-ido-prompt yas-no-prompt)))
    )

(provide 'my-snippets)
