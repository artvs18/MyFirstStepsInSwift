import Foundation

//Home Work 9

/*
 Задание 1
 1.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление*.
 */
enum CalculationType: String {
    case addition = "сложения"
    case subtraction = "вычитания"
    case multiplication = "умножения"
    case division = "деления"
}
/*1.2 Напишите функцию возвращающую `Int` и принимающую в качестве параметров три значения: число один, число два и тип математической операции. Внутри функции, в зависимости от значения параметра `CalculationType` выполните соответствующую математическую операцию со значениями и верните результат. Реализуйте функцию таким образом, что бы при каждом её вызове на консоль выводилось сообщение следующего содержания: «Результат сложения (вычитания, деления, умножения) <…> и <…> равен <…>».
 */
func calculate(
    the calculationType: CalculationType,
    of firstNumber: Int,
    and secondNumber: Int
) -> Int {
    var result = firstNumber
    
    switch calculationType {
    case .addition:
        result += secondNumber
    case .subtraction:
        result -= secondNumber
    case .multiplication:
        result *= secondNumber
    case .division:
        result /= secondNumber
    }
    print("Результат \(calculationType.rawValue) \(firstNumber) и \(secondNumber) равен \(result)")
    return result
}
//1.3 Вызовите эту функцию четыре раза для каждого математического оператора в отдельности.
calculate(the: .addition, of: 15, and: 10)
calculate(the: .subtraction, of: 20, and: 5)
calculate(the: .multiplication, of: 5, and: 5)
calculate(the: .division, of: 15, and: 3)
/*
 Задание 2
 2.1 Создайте перечисление `DistanceUnit` (Единица измерения расстояния) со следующими кейсами: `versta`, `kilometer`, `mile`.
 
 Внутри перечисления `DistanceUnit` создайте еще одно перечисление `NonISUCountry` в котором содержится перечень стран не принявших международную систему единиц (США, Либерия и Мьянма).
 
 Верста и километр должны иметь ассоциативный параметры следующего типа: `(title: String, denotation: String, countries: [String])`. Миля - `(title: String, denotation: String, countries: [NonISUCountry])`. Первый параметр - это название единицы измерения, второй параметр отвечает за обозначение единицы, а массив должен содержать перечень стран в которых используется эта единица (для километра не обязательно перечислять все страны).
 */
enum DistanceUnit {
    enum NonISUCountry: String, CaseIterable {
        case usa = "США"
        case liberia = "Либерия"
        case myanmar = "Мйанма"
        case unitedKingdom = "Соединённое Королевство"
    }
    
    case verst(title: String, denotation: String, countries: [String])
    case kilometre(title: String, denotation: String, countries: [String])
    case mile(title: String, denotation: String, countries: [NonISUCountry])
}
/*
 2.2 Создайте по экземпляру DistanceUnit для каждого кейса и функцию, которая должна принимать единицу измерения и выводить на консоль информацию о ней, например: "Километр. Краткое наименование: км. Страны: Россия, Евросоюз".
 */
let verst = DistanceUnit.verst(
    title: "Верста",
    denotation: "в",
    countries: ["Древняя Русь"]
)
let kilometre = DistanceUnit.kilometre(
    title: "Километр",
    denotation: "км",
    countries: ["Россиия", "Евросоюз", "Турция", "Бразилиия"]
)
let mile = DistanceUnit.mile(
    title: "Миля",
    denotation: "мл",
    countries: DistanceUnit.NonISUCountry.allCases
)

func showInfoAbout(distanceUnit: DistanceUnit) {
    switch distanceUnit {
    case let .verst(title, denotation, countries),
        let .kilometre(title, denotation, countries):
        print("\(title). Краткое наименование: \(denotation). Страны: \(countries.joined(separator: ", ")).")
    case let .mile(title, denotation, countries):
        let nonISUCountries = countries.map { $0.rawValue }
        print("\(title). Краткое наименование: \(denotation). Страны: \(nonISUCountries.joined(separator: ", ")).")
    }
}

showInfoAbout(distanceUnit: verst)
showInfoAbout(distanceUnit: kilometre)
showInfoAbout(distanceUnit: mile)
