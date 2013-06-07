;; hyperbaton.proposals -- Functions proposed for the Hy core library
;; (C) 2013 Gergely Nagy <algernon@madhouse-project.org>
;;
;; Licensed under the same terms as Hy itself.

(defn keyword? [subject]
  "Determine whether `subject` is a keyword or not. Returns a
   boolean."

  (and (isinstance subject (type ""))
       (.startswith subject (first :keyword))))

(defn zero? [n]
  "Returns true if `n` is a number equal to zero. If `n` is not a
  number, or is not zero, returns False."

  (and (not (= (type n) bool))
       (= n 0)))

(defn empty? [coll]
  "Returns true if `coll` is an empty collection."

  (zero? (len coll)))
