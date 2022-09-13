import Foundation
//Home Work 2
/*
 Задание 1
 1.1 Объявите два свойства с типом `Float` и присвойте им следующие значения: 3.14 и 42.0
 
 1.2 Присвойте результат сложения ваших свойств новому свойству с типом `Double`
 
 1.3 Выведите результат на консоль. Обратите внимание на значение результата.
 */
let firstNumber: Float = 3.14
let secondNumber: Float = 42.0

let sumOfTwoNumbers = Double(firstNumber + secondNumber)
print(sumOfTwoNumbers)
/*
 Задание 2
 2.1 Создайте свойство `numberOne` и присвойте ему любое положительное целочисленное значение
 
 2.2 Создайте свойство `numberTwo` и присвойте ему любое положительное значение меньше `numberOne`
 
 2.3 Создайте свойство `result` и присвойте ему результат деления `numberOne` на `numberTwo`
 
 2.4 Создайте свойство `remainder` и присвойте ему остаток от деления `numberOne` на `numberTwo`
 
 2.5 Выведите на консоль фразу: «При делении <...> на <...> результат равен <...>, остаток равен <...>», подставив вместо (<...>) свои результаты.
 
 2.6 Выведите на консоль еще одну фразу: «Результат деления <...> на <...> равен <...> <...>/<...>». В математике результатом деления 5 на 3 будет натуральная дробь 1 2/3 (здесь мы используем стандартную математическую запись в тексте, а не оператор деления). На консоль необходимо вывести именно такой результат в виде натуральной дроби. Пример: «Результат деления 7 на 3 равен 2 1/3».
 */
let numberOne = 5
let numberTwo = 3

let result = numberOne / numberTwo
let remainder =  numberOne % numberTwo

print("""
При делении \(numberOne) на \(numberTwo) результат равен \(result), \
остаток равен \(remainder)
""")

print("""
Результат деления \(numberOne) на \(numberTwo) равен \
\(result) \(remainder)/\(numberTwo)
""")
/*
 Задание 3
 3.1 Объявите свойство `dayOfBirth` и присвойте ему дату вашего рождения
 
 3.2 Объявите свойство `monthOfBirth` и присвойте ему месяц вашего рождения
 
 3.3 Объявите свойство `yearOfBirth` и присвойте ему год вашего рождения
 
 3.4 Необходимо рассчитать прожитое время с момента вашего рождения по текущую дату в разных единицах измерения (в годах, в месяцах, в днях и в секундах). За текущее время возьмите сегодняшнюю дату и 0 часов 0 минут. Високосные года учитывать не надо. Пусть среднее количество дней в месяце будет 30, а количество дней в году 360. Создайте все необходимые свойства, которые вам понадобятся для решения данной задачи. Для расчета всех необходимых величин используйте только арифметические операторы. Ни каких функций и условных операторов if-else использовать не нужно.
 
 3.5 Выведите результат вычислений на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). Пример: если я родился 9 ноября 1980 года, а текущая дата 29.01.20, то результат будет следующим: **39 years, 470 months, 14120 days and 1219968000 seconds have passed since my birth**.
 
 *3.6 Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используйте операторы сравнения, что бы сравнить номер месяца вашего рождения с одним из четырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет первый квартал. Для получения результата используйте условный оператор if
 */
let dayOfBirth = 7
let monthOfBirth = 8
let yearOfBirth = 2021

let currentDay = 6
let currentMonth = 8
let currentYear = 2022

let secondsInOneDay = 86400
let daysInMonth = 30
let daysInYear = 360

let currentYearInDays = currentYear * daysInYear
let currentMonthInDays = currentMonth * daysInMonth
let currentDateInDays = currentYearInDays + currentMonthInDays + currentDay
let yearOfBirthInDays = yearOfBirth * daysInYear
let monthOfBirthInDays = monthOfBirth * daysInMonth
let dateOfBirthInDays = yearOfBirthInDays + monthOfBirthInDays + dayOfBirth

let differenceInDays = currentDateInDays - dateOfBirthInDays
let differenceInSeconds = differenceInDays * secondsInOneDay
let differenceInMonth = differenceInDays / daysInMonth
let differenceInYears = differenceInDays / daysInYear

print("""
    \(differenceInYears) years, \(differenceInMonth) month, \(differenceInDays)\
     days and \(differenceInSeconds) seconds have passed since my birth
    """)

if monthOfBirth > 0 && monthOfBirth <= 3 {
    print("Я родился в первом квартале")
} else if monthOfBirth >= 4 && monthOfBirth <= 6 {
    print("Я родился во втором квартале")
} else if monthOfBirth >= 7 && monthOfBirth <= 9 {
    print("Я родился в третьем квартале")
} else if  monthOfBirth >= 8 && monthOfBirth <= 12 {
    print("Я родился в четвертом квартале")
} else {
    print("Недопустимое значение")
}
/*
 Задание 4
 Задание на вашу способность гуглить. Необходимо вычислить синус от числа 1 и округлить результат до тысячных. Для получения результата радианы искать не надо. Достаточно найти нужную функцию и она все сделает за вас.
 Подсказка: в результате должно получиться 0.841
 */
let sinus = sin(1.0)

let roundedSinus = round(sinus * 1000) / 1000

print("\nСинус от числа 1 = \(roundedSinus)")