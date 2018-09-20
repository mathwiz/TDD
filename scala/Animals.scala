class Animal {
  def animal_speak = "Animal: subclass responsibility"
}

class Vertebrate(val name: String) extends Animal {
  def speak = "Vertebrate: subclass responsibility"

  override def animal_speak = speak
}

class Bird(name: String) extends Vertebrate(name) {
  override def speak = name + " says chrip"
}

class Invertebrate(val name: String) extends Animal {
  def speak = "Invertebrate: subclass responsibility"

  override def animal_speak = speak
}

class Worm(name: String) extends Invertebrate(name) {
  override def speak = name + " has no vocal cords"
}

object Main extends App {
  println("Animals")
  val animals = List(new Bird("Eagle"), 
                     new Bird("Robin"), 
                     new Worm("Planarian"), 
                     new Worm("Nematode"))
  //does not work
  //animals.foreach { x => println(x .speak) }
  animals.foreach { x => println(x .animal_speak) }
}
