;; my-interaction.el
;; smart emacs navigation, etc.

(use-package ace-jump-mode
  :ensure ace-jump-mode
  :commands (evil-ace-jump-char-mode
             evil-ace-jump-line-mode
             ace-jump-char-mode
             ace-jump-word-mode
             ace-jump-line-mode)
  :init
  (progn
    (after 'evil
      ;; Not sure if the `after` here is necessary, but anyway:
      (after 'ace-jump-mode-autoloads
        (setq ace-jump-mode-move-keys
              (nconc '(?j ?f ?k ?d ?l ?s ?a ?h ?g)
                     '(?y ?t ?u ?r ?i ?e ?o ?w ?p ?q)
                     '(?n ?v ?b ?m ?c ?x ?z))))))
  :config
  (progn
    (use-package ace-jump-buffer
      :commands
      (ace-jump-buffer
       ace-jump-buffer-in-one-window
       ace-jump-buffer-other-window)
      :ensure ace-jump-buffer)))

; (use-package guide-key
  ; :ensure guide-key
  ; :diminish guide-key-mode
  ; :config
  ; (progn
    ; (setq guide-key/guide-key-sequence '("C-x" "C-c"))
    ; (setq guide-key/recursive-key-sequence-flag t)
    ; (guide-key-mode 1)
    ; (setq guide-key/idle-delay 1.0)
    ; (setq guide-key/popup-window-position 'top)))


;; popup-switcher
(require 'popup-switcher)
(setq psw-popup-menu-max-length 15)
;; values: fill-column (default)
;;         center
;;         point
(setq psw-popup-position 'point)
;; fuzzy matching -- needs flx-ido
(setq psw-use-flx t)


(provide 'my-interaction)
