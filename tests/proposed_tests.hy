(import [hyperbaton.proposals [*]])

(defn test-keyword? []
  "NATIVE: tests whether the `keyword?` function works appropriately."

  (assert (= (keyword? :foo) True))
  (assert (= (keyword? ":foo") False))
  (assert (= (keyword? 1) False))
  (assert (= (keyword? None) False))
  (assert (= (keyword? [1 2 3 4]) False))
  (assert (= (keyword? "") False)))

(defn test-take []
  "NATIVE: tests the `take` function."

  (assert (= (take 5 (range 1 100)) (range 1 6)))
  (assert (= (take 5 "foobar") ["f" "o" "o" "b" "a"]))
  (assert (= (take 2 (, 1 2 3 4 5)) [1 2])))


(defn test-drop []
  "NATIVE: tests the `drop` function."

  (assert (= (drop 1 (range 1 10)) (range 2 10)))
  (assert (= (drop 1 "foobar") ["o" "o" "b" "a" "r"]))
  (assert (= (drop 1 (, 1 2 3 4 5)) [2 3 4 5])))
