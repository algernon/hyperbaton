;; hyperbaton.proposals -- Functions proposed for the Hy core library
;; (C) 2013 Gergely Nagy <algernon@madhouse-project.org>
;;
;; Licensed under the same terms as Hy itself.

(defmacro keyword? [subject]
  "Determine whether `subject` is a keyword or not. Returns a
   boolean."

  (quasiquote (and (isinstance (unquote subject) (type ""))
                   (.startswith (unquote subject) (first :keyword)))))

(defmacro zero? [n]
  "Returns true if `n` is a number equal to zero. If `n` is not a
  number, or is not zero, returns False."

  (quasiquote (and (not (= (type (unquote n)) bool))
                   (= (unquote n) 0))))

(defmacro empty? [coll]
  "Returns true if `coll` is an empty collection."

  (quasiquote (zero? (len (unquote coll)))))
