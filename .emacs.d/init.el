(require 'package)
(add-to-list 'exec-path "/usr/local/bin")

;; global variables
(setq
 inhibit-startup-screen t
 create-lockfiles nil
 make-backup-files nil
 column-number-mode t
 scroll-error-top-bottom t
 show-paren-delay 0.5
 use-package-always-ensure t
 sentence-end-double-space nil)

;; buffer local variables
(setq-default
 indent-tabs-mode nil
 tab-width 4
 c-basic-offset 4)

;; package repositories
(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/"))
 package-archive-priorities '(("melpa-stable" . 1)))

;; use-package init
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; packages
(use-package markdown-mode
  :ensure t)
(use-package ensime
  :ensure t
  :pin melpa-stable)
(use-package evil
  :demand)
(use-package projectile
  :ensure t
  :pin melpa-stable)
(use-package all-the-icons
  :ensure t
  :pin melpa-stable)
(use-package neotree
  :ensure t
  :pin melpa-stable)
(use-package ido-vertical-mode
  :ensure t
  :pin melpa-stable)
(use-package ido-completing-read+
  :ensure t
  :pin melpa-stable)
(use-package smex
  :ensure t
  :pin melpa-stable)
(use-package dracula-theme
  :ensure t
  :pin melpa-stable)

;; modes
(electric-indent-mode 0)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(menu-bar-mode -1)
(evil-mode 1)
(setq ido-enable-flex-matching t)
(ido-everywhere 1)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(ido-ubiquitous-mode 1)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-smart-open t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `((".*" . ,"~/.emacs-saves/")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs-saves/" t)))

;; TODO: automatic deletion of files in .emacs-saves/ after X time (needs testing)

(global-visual-line-mode t)

(set-frame-font "Droid Sans Mono-10")

;; global keybindings
(global-unset-key (kbd "C-z"))
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
