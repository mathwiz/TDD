/*
 (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
 (* 3 (- 6 2) (- 2 7))
 )
 */
function c1_2() {
    var e1 = 5 + 4 + (2 - (3 - (6 + (4 / 5))));
    var e2 = 3 * (6 - 2) * (2 - 7);
    return e1 / e2;
}

print(c1_2());