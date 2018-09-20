class Animal {
  String name

  def animal_speak() { "Animal: subclass responsibility" }
}

class Vertebrate extends Animal {
  def speak() { "Vertebrate: subclass responsibility" }

  def animal_speak() { speak() }
}

class Bird extends Vertebrate {
  def speak() { name + " says chrip" }
}

class Invertebrate extends Animal {
  def speak() { "Invertebrate: subclass responsibility" }

  def animal_speak() { speak() }
}

class Worm extends Invertebrate {
  def speak() { name + " has no vocal cords" }
}

println("Animals")
animals = [ new Bird(name: "Eagle"), 
            new Bird(name: "Robin"), 
            new Worm(name: "Planarian"), 
            new Worm(name: "Nematode") ]
println()
println("speak not defined in Animal")
animals .each { x -> println (x .speak()) }

println()
println("animal_speak defined in Animal")
animals .each { println (it .animal_speak()) }
