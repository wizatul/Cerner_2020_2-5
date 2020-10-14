; Programe for cerner_2^5_2020
(defn fib
  ([n]
     (fib [0 1] n))
    ([x, n]
     (if (< (count x) n) 
     ; cerner_2^5_2020
       (fib (conj x (+ (last x) (nth x (- (count x) 2)))) n)
      x)
   )
 )
