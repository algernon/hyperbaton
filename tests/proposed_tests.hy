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

  (assert (= (take 5 (range 1 100)) (list (range 1 6))))
  (assert (= (take 5 "foobar") ["f" "o" "o" "b" "a"]))
  (assert (= (take 2 (, 1 2 3 4 5)) [1 2])))


(defn test-drop []
  "NATIVE: tests the `drop` function."

  (assert (= (drop 1 (range 1 10)) (list (range 2 10))))
  (assert (= (drop 1 "foobar") ["o" "o" "b" "a" "r"]))
  (assert (= (drop 1 (, 1 2 3 4 5)) [2 3 4 5])))

(defn test-zero? []
  "NATIVE: tests the `zero` function."

  (assert (= (zero? 0) True))
  (assert (= (zero? (- (** 2 63) (** 2 63))) True))
  (assert (= (zero? 0.0) True))
  (assert (= (zero? "0") False))
  (assert (= (zero? 1) False))
  (assert (= (zero? "foobar") False))
  (assert (= (zero? False) False))
  (assert (= (zero? None) False)))

(defn test-empty? []
  "NATIVE: tests the `empty?` function."

  (assert (= (empty? []) True))
  (assert (= (empty? [1 2]) False))
  (assert (= (empty? "") True))
  (assert (= (empty? "foo") False))
  (assert (= (empty? {}) True))
  (assert (= (empty? {:foo :bar}) False))
  (assert (= (empty? (,)) True))
  (assert (= (empty? (, 1 2)) False)))
