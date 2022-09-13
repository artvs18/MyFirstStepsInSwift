//Home Work 6
/*
 Задание 1
 1.1 Повторите задания 3.1 - 3.4 прошлого урока.
 */
func isEvenNumber(_ number: Int) -> Bool {
    number % 2 == 0
}

func isDivisibleByThree(_ number: Int) -> Bool {
    number % 3 == 0
}

func arrayCreation(from min: Int, to max: Int) -> [Int] {
    var numbers: [Int] = []
    for number in min...max {
        numbers.append(number)
    }
    return numbers
}

let oneHundredNumbers = arrayCreation(from: 1, to: 100)
/*
 1.2 Создайте универсальную функцию для фильтрации переданного в неё массива.
 */
func filterAnArray(_ numbers: [Int], closure: (Int) -> Bool) -> [Int] {
    var filteredArray: [Int] = []
    
    for number in numbers {
        if !closure(number) {
            filteredArray.append(number)
        }
    }
    return filteredArray
}
/*
 1.3 Отфильтруйте массив при помощи созданной функции, избавившись от всех четных чисел и чисел кратных трем. Для фильтрации используйте функции, определяющие кратность чисел.
 */
filterAnArray(oneHundredNumbers, closure: isEvenNumber)
filterAnArray(oneHundredNumbers, closure: isDivisibleByThree)
/*
 1.4 Снова наполните массив числами от 1 до 100 и отфильтруйте его, используя блок замыкания универсальной функции.
 */
filterAnArray(oneHundredNumbers) { $0 % 2 == 0 }
filterAnArray(oneHundredNumbers) { $0 % 3 == 0 }
/*
 1.5 Снова наполните массив числами от 1 до 100 и отфильтруйте его, используя для этого функцию высшего порядка `filter`
 */
oneHundredNumbers.filter { $0 % 2 != 0 }
oneHundredNumbers.filter { $0 % 3 != 0 }
