;; control backup files
(setq backup-directory-alist `(("." . "~/.saves")))

;; load plugins 
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/plugins/")

;; tab lenght config
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
    

;; block annoying home screen
(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces )

;; configs from auto complete
(add-to-list 'load-path "~/.emacs.d/plugins/autocomplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/autocomplete//ac-dict")
(ac-config-default)

;; set windows title to file name
(setq frame-title-format '("Emacs @ " system-name ": %b %+%+ %f"))

;; set color theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-emacs-nw)

;; define tabspace
   (setq-default c-basic-offset 4
                  tab-width 4
                  indent-tabs-mode t)
;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.

(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))