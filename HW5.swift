import Foundation

//Home Work 5
/*
 Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды. Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядеть это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Салават Юлаев - N/A
 
 - Игра с Авангард - 2:1
 
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */
let sportsTeamsGames = [
    "Cалават Юлаев": ["3:6", "5:5", "N/A"],
    "Авангард": ["2:1"],
    "АкБарс": ["3:3", "1:2"]
]

for (teamName, gamesScores) in sportsTeamsGames {
    for score in gamesScores {
        print("- Игра с \(teamName) - \(score)")
    }
}
/*
 Задание 2
 Создайте функцию, которая считает общую сумму переданных в нее целочисленных значений и возвращает итоговый результат. Числа можно передавать либо в массиве, либо по отдельности, на ваше усмотрение. Вызовите функцию.
 */
func addingNumbers(_ numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

addingNumbers(1, 3, 5, 15, 50)

func addingNumbers(_ numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

let summand = [3, 5, 15, 25, 50, 75]

addingNumbers(summand)
/*
 Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */
func isEvenNumber(_ number: Int) -> Bool {
    number % 2 == 0
}

isEvenNumber(3)
/*
 3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
 */
func isDivisibleByThree(_ number: Int) -> Bool {
    number % 3 == 0
}

isDivisibleByThree(3)
/*
 3.3 Создайте функцию, которая возвращает возрастающий массив чисел в интервале от x до y. Данный интервал должен задаваться при вызове функции при помощи параметров. Вы должны самостоятельно реализовать логику создания массива. Если хотите усложнить задание, то можете возвращать не сортированный массив чисел в заданном интервале. Главное, что бы числа были уникальными и не повторялись. При этом количество элементов массива должно соответствовать количеству элементов заданного интервала.
 */
//Array(1...100) // Не принимается

func creatingASequence(from x: Int, to y: Int) -> [Int] {
    var sequence: [Int] = []
    for memberOfSequence in x...y {
        sequence.append(memberOfSequence)
    }
    return sequence
}
/*
 3.4 Создайте массив чисел от *1* до *100*, используя для этого выше созданную функцию
 */
let oneHundredNumbers = creatingASequence(from: 1, to: 100)
/*
 3.5 Создайте функцию для фильтрации переданного в неё массива. Функция должна возвращать новый массив без четных чисел. Для определения фильтруемых значений используйте ранее созданную функцию из задания 3.1.
 */
func filterOutEvenNumbers(_ sequenceOfNumbers: [Int]) -> [Int] {
    var newSequence: [Int] = []
    for number in sequenceOfNumbers {
        if !isEvenNumber(number) {
            newSequence.append(number)
        }
    }
    return newSequence
}
/*
 3.6 Создайте функцию для фильтрации переданного в неё массива. Функция должна возвращать новый массив без чисел кратных трем. Для определения фильтруемых значений используйте ранее созданную функцию из задания 3.2.
 */
func sequenceWithoutThreeMultiplicity(_ sequenceOfNumbers: [Int]) -> [Int] {
    var newSequence: [Int] = []
    for number in sequenceOfNumbers {
        if !isDivisibleByThree(number) {
            newSequence.append(number)
        }
    }
    return newSequence
}
/*
 3.7 Отфильтруйте массив из задания 3.4 при помощи двух последний функций.
 */
func generateASequence(_ sequenceOfNumbers: [Int]) -> [Int] {
    let newSequence = Set(filterOutEvenNumbers(sequenceOfNumbers))
        .intersection(Set(sequenceWithoutThreeMultiplicity(sequenceOfNumbers)))
    return [Int](newSequence.sorted())
}

print(generateASequence(oneHundredNumbers))
