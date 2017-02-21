;; my-sly.el
;;

(require 'sly)
(require 'sly-autoloads)
(require 'sly-company)

(require 'evil-lispy)


;; Это включает алгоритмы выравнивания лиспового кода из SLIME,
;; в противоположность стандартным из Emacs
; (setq lisp-indent-function 'common-lisp-indent-function)

(setq inferior-lisp-program (executable-find "sbcl"))
(if (my-system-is-windows)
    (progn
      (message "%s" "my-sly: system is windows.")
      (setq common-lisp-hyperspec-root "file:///c:/users/a.skobeldin/HyperSpec/"))
    (progn
      (message "%s" "my-sly: system is linux.")
      (setq common-lisp-hyperspec-root "file:///usr/share/doc/hyperspec/")))

; electric mode
; (add-hook 'sly-mrepl-mode-hook 'electric-pair-mode)
(add-hook 'sly-mrepl-mode-hook #'evil-lispy-mode)

(setq sly-net-coding-system 'utf-8-unix)

(setq sly-contribs '(sly-autodoc sly-fancy))

(add-hook 'sly-mode-hook 'sly-company-mode)
(add-to-list 'company-backends 'sly-company)

(define-key company-active-map (kbd "\C-n") 'company-select-next)
(define-key company-active-map (kbd "\C-p") 'company-select-previous)
(define-key company-active-map (kbd "\C-d") 'company-show-doc-buffer)
(define-key company-active-map (kbd "M-.") 'company-show-location)  


;; Sly modes
(after 'evil
(evil-set-initial-state 'sly-db-mode 'insert)
(evil-set-initial-state 'sly-mrepl-mode 'insert))


(provide 'my-sly)
