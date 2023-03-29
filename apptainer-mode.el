;;; apptainer-mode.el --- A mode for editing Singularity/Apptainer definition files -*- lexical-binding: t -*-

;; Copyright (C) 2023 Eric Berquist

;; Author: Eric Berquist
;; Version: 0.1.0
;; Homepage: https://github.com/berquist/apptainer-mode
;; Package-Requires: ((emacs "25.1")))
;; Keywords: languages apptainer singularity

;; This file is not part of GNU Emacs.

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this file.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; A mode for editing Singularity/Apptainer definition files

;;; Code:

(defvar apptainer--font-lock-definitions
  '()
  "Default `font-lock-keywords' for `apptainer-mode'.")

;;;###autoload
(define-derived-mode apptainer-mode prog-mode "Singularity/Apptainer"
  "Major mode for Singularity/Apptainer definition files."
  :group 'apptainer
  (setq-local
   comment-start "#"
   comment-end ""
   comment-start-skip "#+ *"
   font-lock-defaults '(apptainer--font-lock-definitions)))

;;;###autoload
(add-to-list 'auto-mode-alist '("\\(?:Apptainer\\|Singularity\\)" . apptainer-mode))

(provide 'apptainer-mode)

;;; apptainer-mode.el ends here
