;; hyperbaton.proposals -- Functions proposed for the Hy core library
;; (C) 2013 Gergely Nagy <algernon@madhouse-project.org>
;;
;; Licensed under the same terms as Hy itself.

(defn keyword? [subject]
  "Determine whether `subject` is a keyword or not. Returns a
   boolean."

  (and (isinstance subject (type ""))
       (.startswith subject (first :keyword))))
