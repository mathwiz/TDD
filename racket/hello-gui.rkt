#lang racket/gui

(define my-language 'Thai)

(define translations
  #hash([English . "Hello world"]
        [French . "Bonjour le monde"]
        [German . "Hallo Welt"]
        [Greek . "Γειά σου, κόσμε"]
        [Portuguese . "Olá mundo"]
        [Spanish . "Hola mundo"]
        [Thai . "สวัสดีชาวโลก"]))

(define my-hello-world
  (hash-ref translations my-language
            "Huh?"))

(message-box "" my-hello-world)