;; my python config
;;

(setq python-indent 4
      python-indent-offset 4)

(setq python-indent-guess-indent-offset nil)

(evil-define-key 'insert python-mode-map (kbd "RET") 'electric-newline-and-maybe-indent)


(provide 'my-python)
