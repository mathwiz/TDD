class Robot {
  def type, height, width
  
  def access(location,  weight, fragile) {
    "Received fragile? $fragile, weight: $weight, loc: $location"
  }
}

robot  = new Robot(type: 'arm', width: 10, height: 40)

println "$robot.type, $robot.height, $robot.width"

println robot.access(50, x: 30, y: 30, z: 10, true)
