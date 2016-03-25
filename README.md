# leftpad.el

Emacs Lisp port of [JavaScript left-pad](https://github.com/azer/left-pad).

## Usage

```elisp
(require 'left-pad)

(leftpad "foo" 5) ;; => "  foo"

(leftpad "foobar" 6) ;; => "foobar"

(leftpad "1" 2 0) ;; => "01"
```
