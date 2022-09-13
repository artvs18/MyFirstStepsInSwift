import Foundation

//Home Work 8

/*
 Задание 1
 1.1 Создайте базовый класс `Shape` со следующими вычисляемыми свойствами:
 
 - `area: Double`
 
 - `perimeter: Double`
 
 - `description: String`
 
 Свойство `description` должно возвращать сообщение следующего вида: «The area of <...> is <...>. Perimeter - <...>»
 */
class Shape {
    var area: Double {
        0
    }
    var perimeter: Double {
        0
    }
    var description: String {
        "The area of \(String(describing: type(of: self)).lowercased()) is \(area). Perimeter - \(perimeter)\n"
    }
}
/*
 1.2. Создайте классы `Circle` и `Rectangle`, унаследовав их от `Shape`. Переопределите свойства `area` и `perimeter` для каждого класса в соответствии с правилом расчета площади и периметра (длины) конкретной фигуры.
 */
class Circle: Shape {
    let radius: Double
    
    override var area: Double {
        Double.pi * pow(radius, 2)
    }
    override var perimeter: Double {
        2 * radius * Double.pi
    }
    
    init(radius: Double){
        self.radius = radius
    }
}

class Rectangle: Shape {
    let height: Double
    let width: Double
    
    override var area: Double {
        height * width
    }
    override var perimeter: Double {
        (height + width) * 2
    }
    
    init(height: Double, width: Double) {
        self.height = height
        self.width = width
    }
}
/*
 1.3. Создайте класс `Ellipse`, унаследовав его от `Rectangle`. Переопределите свойства `area` и `perimeter` в соответствии с правилом расчета площади и периметра эллипса (для расчета нужно использовать ширину и высоту).
 */
class Ellipse: Rectangle {
    override var area: Double {
        Double.pi * height * width / 4
    }
    override var perimeter: Double {
        2 * Double.pi * sqrt((pow(height, 2) + pow(width, 2)) / 8)
    }
}
//1.4 Создайте по экземпляру каждого класса, кроме `Shape` и выведите значение свойства `description` на консоль.

let circle = Circle(radius: 15)
let rectangle = Rectangle(height: 5.5, width: 10.1)
let ellipse = Ellipse(height: 4, width: 8)

print(circle.description)
print(rectangle.description)
print(ellipse.description)

/*
 Задание 2
 2.1 Создайте структуру `Car` со следующими свойствами:
 - `model: String`
 - `power: Int`
 - `description: String`
 
 Свойство `description` должно возвращать сообщение с названием автомобиля и его мощность в лошадиных силах.
 
 Так же необходимо реализовать метод `increasePower`, который должен увеличить мощность автомобиля на заданное количество лошадиных сил.
 */
struct Car {
    let model: String
    var power: Int
    
    var description: String {
        "\(model) has a capacity of \(power) horsepower\n"
    }
    
    mutating func increasePower(_ power: Int) {
        self.power += power
    }
}
/*
 2.2 Создайте экземпляр структуры и инициализируйте её свойства. Выведите значение свойства `description` на консоль, а затем вызовите метод `increasePower`. Снова выведите значение свойства `description` на консоль.
 */
var mercedes = Car(model: "Mercedes", power: 299)
print(mercedes.description)
mercedes.increasePower(100)
print(mercedes.description)
