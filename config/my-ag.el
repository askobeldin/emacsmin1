;; для использования ag, в debian установить пакет silversearcher-ag

(use-package ag
  :ensure ag
  :commands (ag ag-mode ag-files ag-regexp)
  :init
  (progn
    (setq ag-highlight-search t)
    (setq ag-reuse-buffers t)
    (defun my-setup-ag ()
      "Function called to set my ag stuff up."
      (toggle-truncate-lines t)
      (switch-to-buffer-other-window "*ag search*"))
    (add-hook 'ag-mode-hook 'my-setup-ag)
    (after 'evil
      ;; unbind kill window
      (evil-set-initial-state 'ag-mode 'normal))))

(provide 'my-ag)
