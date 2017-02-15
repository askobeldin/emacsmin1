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

(provide 'my-interaction)
