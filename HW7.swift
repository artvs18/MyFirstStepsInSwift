import Foundation

//Home Work 7

/*:
 ## Задание 1
 1.1 Создайте класс `Orange` со следующими свойствами:
 
 - `color: String`
 
 - `taste: String`
 
 - `radius: Double`
 
 Необходимо реализовать возможность создания экземпляра класса со значениями по умолчанию для свойств *color* и *taste*. Свойство *radius* должно быть обязательным для инициализации, т.е. не должно быть возможности создания экземпляра класса без радиуса.
 
 Объявите геттер *orangeVolume*, возвращающий объем апельсина. При этом расчет объема необходимо реализовать в методе *calculateOrangeVolume* (число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить).
 
 Создайте экземпляр класса `Orange`, вызвав при этом инициализатор только для радиуса. Остальным свойствам, созданного экземпляра присвойте следующие значения:
 
 - `color` — *Orange*
 
 - `taste` — *Sweet*
 
 Выведите на консоль сообщение: «Orange has <...> color and <...> taste. The volume of orange is <...>», обращаясь к этим значениям через экземпляр класса.
 */
class Orange {
    // MARK: - Public properties
    var color = ""
    var taste = ""
    let radius: Double
    
    var orangeVolume: Double {
        calculateOrangeVolume()
    }
    
    // MARK: - Initializers
    init(radius: Double) {
        self.radius = radius
    }
    
    // MARK: - Privat Methods
    private func calculateOrangeVolume() -> Double {
        4 / 3 * Double.pi * pow(radius, 3)
    }
}

let fruit = Orange(radius: 4.2)
fruit.color = "orange"
fruit.taste = "sweet"
fruit.orangeVolume

print("Orange has \(fruit.color) color and \(fruit.taste) taste. The volume of orange is \(round(fruit.orangeVolume)) cubic centimetres")
/*
 ## Задание 2
 2.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */
class Employee {
    let salary: Int
    let name: String
    let surname: String
    
    init(name: String, surname: String, salary: Int){
        self.name = name
        self.surname = surname
        self.salary = salary
    }
}
//: 2.2 Создайте массив `names` со следующими именами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` со следующими фамилиями: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jenkins*. Массивы должны быть созданы вне класса.
let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jenkins"]
//: 2.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*
var employees: [Employee] = []

for _ in 1...10 {
    let employee = Employee(
        name: names.randomElement() ?? "",
        surname: surnames.randomElement() ?? "",
        salary: Int.random(in: 1000...2000)
    )
    employees.append(employee)
}
// 2.4 Переберите массив `employees` и выведите информацию по каждому сотруднику в виде: «<имя> <фамилия>’s salary is $<... >»
print("\nEmployees\n")
employees.forEach {
    employee in print("\(employee.name) \(employee.surname)'s salary is $\(employee.salary)")
}

// 2.5 Создайте еще один массив на основе `employees`, который включает только тех работников, чья зарплата чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 2.4
var evenSalaryEmployees = employees.filter {$0.salary.isMultiple(of: 2)}

print("\nEven Salary Employees\n")

evenSalaryEmployees.forEach {
    employee in print("\(employee.name) \(employee.surname)'s salary is $\(employee.salary)")
}
