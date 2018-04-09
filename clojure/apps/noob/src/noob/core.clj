(ns noob.core 
  (:gen-class))

(defn -main "I don't do a whole lot ... yet." [& args] 
  (println (greeting (str (first args) "!"))))

(defn train [] 
  (println "Choo choo!"))

(defn greeting [whom]
  (str "Hello" ", " whom))
