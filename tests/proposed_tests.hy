(require hyperbaton.proposals)

(defn test-keyword? []
  "NATIVE: tests whether the `keyword?` function works appropriately."

  (assert (= (keyword? :foo) True))
  (assert (= (keyword? ":foo") False))
  (assert (= (keyword? 1) False))
  (assert (= (keyword? None) False))
  (assert (= (keyword? [1 2 3 4]) False))
  (assert (= (keyword? "") False)))

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
