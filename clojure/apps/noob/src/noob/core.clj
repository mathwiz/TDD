(ns noob.core 
  (:gen-class))

(defn -main "I don't do a whole lot ... yet." [& args] 
  (println (greeting (str (stringify args) "!"))))

(defn train [] 
  (println "Choo choo!"))

(defn greeting [whom] 
  (str "Hello" ", " whom))

(defn stringify [args] 
  (cond (empty? args) "" 
        :else (str (first args) " " 
                   (stringify (rest args)))))
