;; my-leader-keys.el
;; <leader> keybindings for evil-leader
;;


;; create a function for jumping between buffers from files
;; name of function: `ace-jump-thefiles-buffers'
(make-ace-jump-buffer-function "thefiles"
  (with-current-buffer buffer
    (not (buffer-file-name buffer))))


(evil-leader/set-key
        "w"          'save-buffer
        "qq"         'kill-this-buffer
        "qw"         'evil-window-delete
        "Q"          'kill-buffer-and-window

        ; ">"          'find-file-at-point

        "\\"         'split-window-horizontally
        "-"          'split-window-vertically
        ","          'other-window

        "#"          'linum-mode
        "x"          'smex

        ;; evil-nerd-commenter config
        "cc"         'evilnc-comment-or-uncomment-lines

        ;; Dired
        "d"          'dired

        ;; buffers
        "TAB"        'my-hop-around-buffers
        "b"          'ibuffer
        "B"          'switch-to-buffer
        ;; "jb"         'ace-jump-buffer
        "jb"         'ace-jump-thefiles-buffers

        ;; find file or url
        "jf"         'ffap

        ;; helm
        ; "hs"         'helm-swoop
        ; "hi"         'helm-imenu

        ;; silversearcer (ag)
        "sr"         'ag-regexp

        ;; magit
        ; "gs"         'magit-status
        ; "gl"         'magit-log
        ; "gd"         'magit-diff

        ;; projectile
        ; "P"          'projectile-switch-project

        ;; ido
        "l"          'ido-goto-symbol
        "f"          'ido-find-file

)

(provide 'my-leader-keys)
