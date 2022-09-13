//Home work 3

/*
 Задание 1
 Представьте, что вы владелец розничного магазина и вам необходимо установить стоимость товара в зависимости от его количества. До 9 единиц товара включительно цена составляет 1000 рублей за штуку. От 10 до 19 единиц товара включительно - 800 руб. шт. И 600 рублей за товар от 20 единиц и выше. Создайте условие при котором цене будет присвоено соответсвующее значение, используя конструкцию `if-else`. Подсчитайте общую сумму и выведите результат на консоль.
 */
let quantityOfGoods = 5
var goodsPrice = 0

if quantityOfGoods >= 0 && quantityOfGoods <= 9 {
    goodsPrice = 1000
} else if quantityOfGoods >= 10 && quantityOfGoods <= 19 {
    goodsPrice = 800
} else if quantityOfGoods >= 20 {
    goodsPrice = 600
} else {
    print("Недопустимое количество товара")
}

let totalAmount = quantityOfGoods * goodsPrice

print("Общая сумма составляет: \(totalAmount) ₽")
/*
 Задание 2*
 После выполнения кода, расположенного в блоке `case`, происходит завершение работы конструкции `switch-case`. Однако иногда бывают такие случаи, когда после выполнения кейса необходимо выполнить переход к следующему `case`. Для этого в конце блока `case` указывается ключевое слово `fallthrough`.
 
 Создайте три уровня готовности к чрезвычайным ситуациям: **A**, **B** и **C**. Каждая степень должна предусматривать ряд мероприятий, причем каждый последующий уровень должен включать в себя мероприятия предыдущих уровней. В зависимости от переданного уровня необходимо вывести на консоль все предназначенные мероприятия. При этом минимальный уровень готовности — это **C**, максимальный — **A** (включает в себя мероприятия уровней B и C).
 
 В случае возникновения ситуации **A** необходимо "Выключить все электрические приборы". **B** - "Закрыть входные двери и окна". **C** - "Соблюдать спокойствие"
 */
let dangerLevel = "A"

switch dangerLevel {
case "A":
    print("Выключить все электрические приборы")
    fallthrough
case "B":
    print("Закрыть все входные двери и окна")
    fallthrough
case "C":
    print("Соблюдать спокойствие")
default:
    print("Все супер, опасности нет!)")
}
/*
 Задание 3*
 С помощью блоков `case` определяются возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо отсортировать конфеты M&M's по цвету и по начинке. В первую кучку нужно собрать красные конфеты с шоколадом внутри. Во вторую кучку соберите все желтые конфеты с орехами. А в третью кучку коричневые с шоколадом и зеленые с шоколадом. Нужно реализовать только логику для сортировки конфет. Использовать кортежи при этом не нужно.
 */
let candyColor = "красный"
let candyTopping = "шоколад"
    
switch candyColor {
case "красный" where candyTopping == "шоколад":
    print("В первую кучку")
case "жёлтый" where candyTopping == "орех":
    print("Во вторую кучку")
case "коричневый" where candyTopping == "шоколад",
    "зелёный" where candyTopping == "шоколад":
    print("В третью кучку")
default:
    print("Можно съесть:)")
}