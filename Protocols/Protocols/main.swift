

protocol CanFly {
    func fly()
}




class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("makes a new bird in a hell.")
        }
    }
    
    
}

class Eagle : Bird, CanFly {
    func fly() {
        print("eagle flaps its wings.")
    }
    
    func soar() {
        print("glides in the air currents.")
    }
}

class Penguin : Bird {
    func swim() {
        print("swim in the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject : CanFly) {
        flyingObject.fly()
    }
}

class Airplane : CanFly {
    func fly() {
        print("stars to lift off the air.")
    }
    
    
}

let mypenguin = Penguin()
let myplane = Airplane()
let myeagle = Eagle()
let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myeagle)
