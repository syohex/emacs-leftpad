;;; leftpad.el --- left padding string

;; Copyright (C) 2016 by Syohei YOSHIDA

;; Author: Syohei YOSHIDA <syohex@gmail.com>
;; URL: https://github.com/syohex/emacs-leftpad
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Emacs Lisp port of https://github.com/azer/left-pad

;;; Code:

(require 'cl-lib)

;;;###autoload
(defun leftpad (str len &optional ch)
  (let ((padding (cl-loop with padch = (or ch " ")
                          repeat (- len (length str))
                          concat padch)))
    (concat padding str)))

(provide 'leftpad)

;;; leftpad.el ends here
