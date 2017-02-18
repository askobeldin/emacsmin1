;; my-bookmarks.el
;; Emacs has bookmarks! Who knew?
;;
;; open list of bookmarks: bookmark-bmenu-list

(require 'bookmark)

;; автоматически сохранять закладки в файл
(setq bookmark-save-flag t) 

(setq bookmark-default-file
      (concat user-emacs-directory "bookmarks"))

;; попытаться найти и открыть файл с закладками
(when (file-exists-p bookmark-default-file)
    (bookmark-load bookmark-default-file t))

(evil-define-key 'normal bookmark-bmenu-mode-map
                "q"         'kill-this-buffer
                "v"         'bookmark-bmenu-select
                "w"         'bookmark-bmenu-locate
                "2"         'bookmark-bmenu-2-window
                "1"         'bookmark-bmenu-1-window
                "f"         'bookmark-bmenu-this-window
                "o"         'bookmark-bmenu-other-window
                "\C-o"      'bookmark-bmenu-switch-other-window
                "s"         'bookmark-bmenu-save
                "\C-d"      'bookmark-bmenu-delete-backwards
                "x"         'bookmark-bmenu-execute-deletions
                "d"         'bookmark-bmenu-delete
                " "         'next-line
                "n"         'next-line
                "p"         'previous-line
                "u"         'bookmark-bmenu-unmark
                "m"         'bookmark-bmenu-mark
                "L"         'bookmark-bmenu-load
                "r"         'bookmark-bmenu-rename
                "R"         'bookmark-bmenu-relocate
                "t"         'bookmark-bmenu-toggle-filenames
                "a"         'bookmark-bmenu-show-annotation
                "A"         'bookmark-bmenu-show-all-annotations
                "e"         'bookmark-bmenu-edit-annotation
                "/"         'bookmark-bmenu-search
                "j"         'next-line
                "k"         'previous-line
    )

(evil-set-initial-state 'bookmark-bmenu-mode 'normal)

(provide 'my-bookmarks)
