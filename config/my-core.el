;; my-core.el
;;
;; core config
;;

;; Если не отменить make-backup-files, Emacs будет засорять
;; файловую систему бэкапами.
(setq-default make-backup-files nil)

;; Это включает автосохранение - пока вы работаете с файлом,
;; Emacs время от времени автоматически создает копию, и удаляет её
;; как только вы сохрание файл с которым работаете.
(setq-default auto-save-defaults t)
(setq auto-save-interval 500
      auto-save-timeout 0)

;; Директория для автосохранения файлов
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))

;; Это отключает табы
(setq-default indent-tabs-mode nil)

;; lockfiles are evil.
(setq create-lockfiles nil)

;; require a trailing newline
(setq require-final-newline t)

;'Woman' > 'man'.
(defalias 'man 'woman)

(eval-when-compile (require 'cl))
(require 'cl-lib)

;; from <https://github.com/bling/dotemacs/>
(defmacro after (feature &rest body)
  "After FEATURE is loaded, evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,feature
     '(progn ,@body)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CEDET
; (require 'cedet) ;; использую "вшитую" версию CEDET. Мне хватает...
; (add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
; (add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
; (add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
; (add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
; (add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
; (add-to-list 'semantic-default-submodes 'global-semantic-show-parser-state-mode)
; (semantic-mode   t)
; (global-ede-mode t)
; (require 'ede/generic)
; (require 'semantic/ia)
; (ede-enable-generic-projects)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(provide 'my-core)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; https://www.emacswiki.org/emacs/AutoInsertMode
;
; (auto-insert-mode)  ;;; Adds hook to find-files-hook
; (setq auto-insert-directory "~/.mytemplates/") ;; Or use custom, *NOTE* Trailing slash important
; (setq auto-insert-query nil) ;; If you don't want to be prompted before insertion
; (define-auto-insert "\.py" "my-python-template.py")
; (define-auto-insert "\.php" "my-php-template.php")
