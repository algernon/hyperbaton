(import [hyperbaton.proposals [*]])

(defn test-keyword? []
  "NATIVE: tests whether the `keyword?` function works appropriately."

  (assert (= (keyword? :foo) True))
  (assert (= (keyword? ":foo") False))
  (assert (= (keyword? 1) False))
  (assert (= (keyword? None) False))
  (assert (= (keyword? [1 2 3 4]) False))
  (assert (= (keyword? "") False)))
