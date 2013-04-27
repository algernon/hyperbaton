;; hyperbaton.proposals -- Functions proposed for the Hy core library
;; (C) 2013 Gergely Nagy <algernon@madhouse-project.org>
;;
;; Licensed under the same terms as Hy itself.

(defn keyword? [subject]
  "Determine whether `subject` is a keyword or not. Returns a
   boolean."

  (and (isinstance subject (type ""))
       (.startswith subject (first :keyword))))

(defn take [n coll]
  "Take the first `n` elements of `coll`, and return them as a list."

  (list-comp (get coll x) [x (range 0 n)]))

(defn drop [n coll]
  "Drop the first `n` elements of `coll`, and return the remaining
  parts as a list."

  (list-comp (get coll x) [x (range n (len coll))]))

(defn zero? [n]
  "Returns true if `n` is a number equal to zero. If `n` is not a
  number, or is not zero, returns False."

  (and (or (isinstance n int)
           (isinstance n long)
           (isinstance n float))
       (not (= (type n) bool))
       (= n 0)))

(defn empty? [coll]
  "Returns true if `coll` is an empty collection."

  (zero? (len coll)))
