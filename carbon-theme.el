;;; carbon-theme.el --- A minimal dark theme  -*- lexical-binding: t; -*-

;; Author: Shi Tianshu
;; Keywords: theme
;; Package-Requires: ((emacs "28.0.50"))
;; Version: 1.0.2

;;
;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.


;;; Commentary:

;;; This is a minimal light theme.

;;; Code:

(deftheme carbon "A minimal light theme.")

(defcustom carbon-theme-use-bold nil
  "Whether to use bold font.")

(let ((bg "#211f17")
      (kw "#99995d")
      (fg "#c4c1be")
      (ml "#DCDCDC")
      (dim "#909090")
      (rg "#B4B4B4")
      (hl "#353535")
      (ss "#630303")
      (cmt "#d88361")
      (fn "#52c448")
      (st "#a99ad1")
      (paren "#99995d")
      (str "#4db6ea")
      (num "#C39AD0")
      (doc "#d88361")
      (cur "#EFEFEF")
      (pop "#272727")
      (warn "#8B8B53")
      (err "#EE986A"))
  (custom-theme-set-faces
   `carbon
   ;; We don't specify default foreground/background in TTY.
   `(default                        ((((type tty)) :foreground ,fg)
                                     (((type graphic)) :background ,bg :foreground ,fg)))
   ;; Basics
   `(cursor                         ((t (:background ,cur))))
   `(region                         ((t (:background ,rg :foreground ,bg :extend t))))
   `(hl-line                        ((t (:background ,hl))))
   `(fringe                         ((t (:background ,bg))))
   `(show-paren-match               ((t (:box (:line-width (-1 . -1))))))
   `(highlight                      ((t (:inverse-video t))))
   `(button                         ((t (:box (:line-width (-1 . -1))))))
   `(vertical-border                ((t ())))
   `(window-divider                 ((t (:foreground ,dim))))
   `(window-divider-first-pixel     ((t (:foreground ,dim))))
   `(window-divider-last-pixel      ((t (:foreground ,dim))))
   `(line-number                    ((t (:foreground ,dim))))
   `(line-number-current-line       ((t (:foreground ,fg :background ,hl))))
   `(completions-common-part        ((t ())))
   `(minibuffer-prompt              ((t ())))
   `(lazy-highlight                 ((t (:background ,hl :foreground ,fg))))
   `(compilation-info               ((t ())))
   `(compilation-warning            ((t ())))
   `(warning                         ;                        ((t ()))
     )
   `(match                          ((t (:inverse-video t))))
   `(secondary-selection            ((t (:background ,ss :extend nil))))
   `(help-key-binding               ((t ())))
   `(shadow                         ((t (:foreground ,dim))))

   ;; ISearch
   `(isearch                        ((t (:inverse-video t))))
   `(isearch-fail                   ((t (:inverse-video t))))

   ;; Font Locks
   `(font-lock-comment-face         ((t (:foreground ,cmt))))
   `(font-lock-comment-delimiter-face  ((t (:foreground ,cmt))))
   `(font-lock-string-face          ((t (:foreground ,str))))
   `(font-lock-doc-face             ((t (:foreground ,doc))))
   `(font-lock-builtin-face         ((t ())))
   `(font-lock-type-face            ((t ())))
   `(font-lock-variable-name-face   ((t ())))
   `(font-lock-keyword-face         ((t (:foreground ,kw))))
   `(font-lock-constant-face        ((t (:foreground ,st))))
   `(font-lock-function-name-face   ((t (:foreground ,fn))))
   `(font-lock-warning-face         ((t ())))
   `(font-lock-preprocessor-face    ((t ())))
   `(font-lock-number-face          ((t (:foreground ,st))))
   `(warning                        ((t (:underline (:color ,warn :style wave)))))
   `(error                          ((t (:underline (:color ,err :style wave)))))

   `(highlight-numbers-number       ((t (:foreground ,num))))

   ;; shell
   `(sh-quoted-exec                 ((t ())))

   ;; IMenu
   `(imenu-list-entry-face-0          ((t ())))
   `(imenu-list-entry-subalist-face-0 ((t ())))

   ;; Mode Line
   `(tab-line                       ((t ())))
   `(mode-line                      ((t (:background ,ml :foreground ,bg :inherit variable-pitch))))
   `(mode-line-inactive             ((t (:background ,dim :foreground ,hl :inherit variable-pitch))))
   `(mode-line-buffer-id            ((t ())))
   `(header-line                    ((t ())))
   `(header-line-inactive           ((t ())))

   ;; Company
   `(company-tooltip-common         ((t ())))
   `(company-tooltip-common-selection ((t ())))
   `(company-tooltip                ((t (:background ,pop))))
   `(company-tooltip-search         ((t ())))
   `(company-tooltip-selection      ((t (:inverse-video t))))
   `(company-tooltip-annotation     ((t ())))
   `(company-scrollbar-bg           ((t (:background ,dim))))
   `(company-scrollbar-fg           ((t (:background ,fg))))
   `(company-template-field         ((t (:inherit yas-field-highlight-face))))

   ;; Yasnippet
   `(yas-field-highlight-face       ((t (:underline t))))

   ;; Meow
   `(meow-beacon-indicator          ((t ())))
   `(meow-keypad-indicator          ((t ())))
   `(meow-insert-indicator          ((t ())))
   `(meow-normal-indicator          ((t ())))
   `(meow-motion-indicator          ((t ())))
   `(meow-keypad-cursor             ((t (:background ,cur))))
   `(meow-insert-cursor             ((t (:background ,cur))))
   `(meow-normal-cursor             ((t (:background ,cur))))
   `(meow-motion-cursor             ((t (:background ,cur))))
   `(meow-unknown-cursor            ((t (:background ,cur))))
   `(meow-beacon-cursor             ((t (:background ,cur))))

   ;; colorful paren
   `(colorful-round           ((t ())))
   `(colorful-square          ((t (:foreground ,str))))
   `(colorful-curly           ((t (:foreground ,st))))
   `(colorful-semicolon       ((t (:foreground ,fn))))

   ;; Cider
   `(cider-result-overlay-face      ((t (:inverse-video t))))
   `(cider-repl-stderr-face         ((t ())))
   `(cider-repl-stdout-face         ((t (:foreground "gray60"))))
   `(cider-test-error-face          ((t (:foreground "yellow" :inverse-video t))))

   ;; Clojure
   `(clojure-character-face            ((t ())))
   `(clojure-keyword-face              ((t (:foreground ,st))))

   ;; Magit
   `(magit-branch-local                ((t (:foreground ,st))))
   `(magit-branch-remote               ((t (:foreground ,fn))))
   `(magit-header-line                 ((t ())))
   `(magit-head                        ((t ())))
   `(magit-section-highlight           ((t (:background ,hl))))
   `(magit-section-heading             ((t ())))
   `(magit-section-selection           ((t ())))
   `(magit-diff-removed                ((t (:background "#311"))))
   `(magit-diff-removed-highlight      ((t (:background "#311"))))
   `(magit-diff-added                  ((t (:background "#131"))))
   `(magit-diff-added-highlight        ((t (:background "#131"))))
   `(magit-diff-context-highlight      ((t (:background ,hl :foreground ,fg))))

   ;; ;; SMerge
   `(smerge-refined-added           ((t (:background "#253325"))))
   `(smerge-lower                   ((t (:background "#173017"))))
   ;;
   ;; Diff-hl
   `(diff-hl-insert                 ((t (:foreground "#0D580D" :background "#0D580D"))))
   `(diff-hl-change                 ((t (:foreground "#115265" :background "#115265"))))
   `(diff-hl-delete                 ((t (:foreground "#951226" :background "#951226"))))

   `(eshell-prompt                  ((t ())))
   ;;
   ;; ;; Term
   ;; `(term-color-blue                ((t (:foreground ,blue :background ,blue))))
   ;; `(term-color-green               ((t (:foreground ,green :background ,green))))
   ;; `(term-color-red                 ((t (:foreground ,red :background ,red))))
   ;;
   ;; ;; Popup
   ;; `(popup-tip-face                 ((t (:background ,bg+4 :foreground ,fg))))
   ;; `(popup-isearch-match            ((t (:background "#CFA300" :foreground "black"))))
   ;;
   ;; `(tooltip                        ((t ())))
   ;; `(dired-directory                ((t (:foreground ,light-purple))))
   ;; `(web-mode-html-attr-name-face   ((t ())))
   ;; `(web-mode-html-tag-face         ((t ())))
   ;;
   ;; Emacs Rime
   `(rime-preedit-face              ((t (:underline t))))
   `(rime-cursor-face               ((t (:inherit font-lock-constant-face))))
   `(rime-indicator-face            ((t ())))
   `(rime-indicator-dim-face        ((t ())))
   `(rime-candidate-num-face        ((t ())))
   `(rime-comment-face              ((t ())))
   `(rime-code-face                 ((t ())))
   `(rime-default-face              ((t ())))
   `(rime-highlight-candidate-face  ((t ())))

   ;;
   ;; ;; Web Mode
   `(web-mode-function-call-face    ((t ())))
   `(web-mode-function-name-face    ((t ())))
   `(web-mode-html-tag-bracket-face ((t (:inherit parenthesis))))
   `(web-mode-symbol-face           ((t ())))
   `(css-selector                   ((t ())))

   ;;
   ;; Markdown
   `(markdown-header-face-1         ((t (:inherit variable-pitch-text))))
   `(markdown-header-face-2         ((t (:inherit variable-pitch-text))))
   `(markdown-header-face-3         ((t (:inherit variable-pitch-text))))
   `(markdown-header-face-4         ((t (:inherit variable-pitch-text))))
   `(markdown-header-face-5         ((t (:inherit variable-pitch-text))))
   `(markdown-header-face-6         ((t (:inherit variable-pitch-text))))
   `(markdown-header-face-7         ((t (:inherit variable-pitch-text))))
   ;;
   ;; ;; Telega
   `(telega-entity-type-code        ((t ())))
   `(telega-msg-heading             ((t ())))
   `(telega-msg-self-title          ((t (:foreground ,fn))))
   `(telega-unmuted-count           ((t ())))
   ;;
   ;; ;; Org-mode
   `(org-document-title             ((t (:inherit variable-pitch-text))))
   `(org-link                       ((t (:underline t))))
   `(org-document-title             ((t ())))
   `(org-code                       ((t (:inherit fixed-pitch-serif :foreground ,fn))))
   `(org-block                      ((t (:inherit fixed-pitch-serif))))
   `(org-table                      ((t (:inherit fixed-pitch))))
   `(org-checkbox                   ((t (:inherit fixed-pitch :background unspecified :box nil))))
   '(org-latex-and-related          ((t (:inherit fixed-pitch-serif))))
   `(org-level-1                    ((t (:bold ,carbon-theme-use-bold :inherit variable-pitch-text))))
   `(org-level-2                    ((t (:bold ,carbon-theme-use-bold :inherit variable-pitch-text))))
   `(org-level-3                    ((t (:bold ,carbon-theme-use-bold :inherit variable-pitch-text))))
   `(org-level-4                    ((t (:bold ,carbon-theme-use-bold :inherit variable-pitch-text))))
   `(org-level-5                    ((t (:bold ,carbon-theme-use-bold :inherit variable-pitch-text))))
   `(org-level-6                    ((t (:bold ,carbon-theme-use-bold :inherit variable-pitch-text))))
   `(org-level-7                    ((t (:bold ,carbon-theme-use-bold :inherit variable-pitch-text))))
   `(org-indent                     ((t (:inherit (fixed-pitch org-hide)))))
   `(org-drawer                     ((t (:foreground ,str))))
   `(org-todo                       ((t (:foreground ,fn :bold ,carbon-theme-use-bold))))
   `(org-headline-todo              ((t (:foreground ,fn))))
   `(org-checkbox-statistics-todo   ((t (:foreground ,fn))))
   `(org-done                       ((t (:foreground ,kw :bold ,carbon-theme-use-bold))))
   `(org-headline-done              ((t (:foreground ,kw))))
   `(org-checkbox-statistics-done   ((t (:foreground ,kw))))
   `(org-data                       ((t (:foreground ,fn))))
   `(org-block-begin-line           ((t (:inherit variable-pitch :foreground ,cmt))))
   `(org-block-end-line             ((t (:inherit variable-pitch :foreground ,cmt))))
   `(org-date                       ((t (:underline t :inherit variable-pitch :foreground ,kw))))
   `(org-scheduled-previously       ((t ())))
   `(org-scheduled-today            ((t ())))

   `(org-visual-indent-pipe-face       ((t (:height .1 :foreground ,fg :background ,fg))))
   `(org-visual-indent-blank-pipe-face ((t (:height .1 :foreground ,bg :background ,bg))))


   ;;
   ;; ;; Treemacs
   ;; `(treemacs-root-face             ((t (:inherit font-lock-function-name-face :height 1.4 :underline t))))
   `(fill-column-indicator          ((t (:foreground ,dim))))
   `(scroll-bar                     ((t (:foreground ,fg :background ,bg))))
   `(parenthesis                    ((t (:foreground ,paren))))
   `(eldoc-box-body                 ((t (:background ,pop :inherit variable-pitch))))

   `(lsp-flycheck-warning-unnecessary-face ((t (:underline (:color ,warn :style wave)))))
   `(lsp-flycheck-info-unnecessary-face    ((t (:underline (:color ,err :style wave)))))

   `(flycheck-info                  ((t (:inherit warning))))
   `(flycheck-warning               ((t (:inherit warning))))
   `(flycheck-error                 ((t (:inherit error))))
   `(flymake-warning                ((t (:inherit warning))))
   `(flymake-error                  ((t (:inherit error))))
   `(flymake-note                   ((t (:inherit error))))

   `(wgrep-face                     ((t (:underline ,st))))

   `(anzu-mode-line                 ((t (:foreground ,bg :background ,fg))))
   `(erc-nick-default-face          ((t (:inherit font-lock-keyword-face))))
   `(erc-input-face                 ((t (:inherit font-lock-function-name-face))))
   `(erc-timestamp-face             ((t (:inherit font-lock-constant-face))))
   `(erc-notice-face                ((t (:inherit font-lock-comment-face))))

   `(tab-bar                        ((t (:background ,fg :foreground ,bg))))
   `(tab-bar-tab                    ((t (:inverse-video t))))
   `(tab-bar-tab-inactive           ((t ())))

   `(ansi-color-blue                ((t (:foreground "#169edd"))))
   `(ansi-color-bright-blue         ((t (:foreground "#169edd"))))
   `(yascroll:thumb-fringe          ((t (:foreground ,dim :background ,dim))))
   `(yascroll:thumb-text-area       ((t (:foreground ,dim :background ,dim))))

   `(embark-keybinding              ((t (:inherit font-lock-constant-face))))

   `(tree-sitter-hl-face:type       ((t ())))
   `(tree-sitter-hl-face:type.parameter ((t ())))
   `(tree-sitter-hl-face:type.argument ((t ())))
   `(tree-sitter-hl-face:type.builtin ((t ())))
   `(tree-sitter-hl-face:type.super ((t ())))
   `(tree-sitter-hl-face:constructor ((t ())))
   `(tree-sitter-hl-face:variable ((t ())))
   `(tree-sitter-hl-face:variable.parameter ((t ())))
   `(tree-sitter-hl-face:variable.builtin ((t ())))
   `(tree-sitter-hl-face:variable.special ((t ())))
   `(tree-sitter-hl-face:property ((t ())))
   `(tree-sitter-hl-face:property.definition ((t ())))
   `(tree-sitter-hl-face:comment ((t (:foreground ,cmt))))
   ;;
   `(tree-sitter-hl-face:doc ((t (:foreground ,doc))))
   `(tree-sitter-hl-face:string ((t (:foreground ,str))))
   ;;
   `(tree-sitter-hl-face:string.special ((t (:foreground ,str))))
   ;;
   `(tree-sitter-hl-face:escape ((t ())))
   `(tree-sitter-hl-face:embedded ((t ())))
   ;;
   `(tree-sitter-hl-face:keyword ((t ())))
   ;;
   `(tree-sitter-hl-face:function ((t (:foreground ,fn))))
   `(tree-sitter-hl-face:function.builtin ((t ())))
   `(tree-sitter-hl-face:function.call ((t ())))
   `(tree-sitter-hl-face:function.macro ((t ())))
   `(tree-sitter-hl-face:function.method ((t ())))
   `(tree-sitter-hl-face:function.method.call ((t ())))
   `(tree-sitter-hl-face:function.special ((t ())))

   `(tree-sitter-hl-face:method ((t ())))
   `(tree-sitter-hl-face:method.call ((t ())))
   `(tree-sitter-hl-face:operator ((t ())))
   `(tree-sitter-hl-face:punctuation ((t ())))
   `(tree-sitter-hl-face:punctuation.bracket ((t ())))
   `(tree-sitter-hl-face:punctuation.delimiter ((t ())))
   `(tree-sitter-hl-face:punctuation.special ((t ())))
   ;; dim
   `(tree-sitter-hl-face:label ((t ())))
   `(tree-sitter-hl-face:constant ((t ())))
   `(tree-sitter-hl-face:constant.builtin ((t (:foreground ,st))))
   ;;
   `(tree-sitter-hl-face:number ((t (:foreground ,st))))
   `(tree-sitter-hl-face:tag ((t ())))
   `(tree-sitter-hl-face:attribute ((t ())))
   `(corfu-default ((t ())))
   `(corfu-current ((t (:inverse-video t))))
   `(lsp-flycheck-info-unnecessary-face ((t (:underline (:color ,dim :style wave)))))

   `(eglot-mode-line ((t (:foreground ,bg))))

   `(cargo-process--error-face ((t (:inherit error))))

   `(sh-heredoc    ((t (:foreground ,st))))
   `(envrc-mode-line-on-face ((t (:inherit nil))))
   `(envrc-mode-line-none-face ((t (:inherit nil))))

   `(which-func ((t (:inherit fixed-pitch))))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'carbon)

;;; carbon-theme.el ends here
