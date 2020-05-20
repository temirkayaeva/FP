Swift — мультипарадигменный объектно-ориентированный язык программирования, созданный компанией Apple для разработчиков iOS и OS X. Swift работает с фреймворками Cocoa и Cocoa Touch и совместим с основной кодовой базой Apple, написанной на Objective-C. Swift задумывался как более безопасный язык в сравнении с Objective-C. Язык поддерживается в среде программирования Xcode 6; программы на нем компилируются при помощи Apple LLVM и используют рантайм Objective-C, что делает возможным использование обоих языков (а также pure С и С++) в рамках одной программы. Был анонсирован на конференции разработчиков WWDC 2014.


Swift исключает большой пласт распространенных программных ошибок при помощи применения современных программных паттернов:

* Переменные всегда инициализированы до того, как будут использованы.
* Индексы массивов всегда проверяются на out-of-bounds ошибки.
* Целые числа проверяются на переполнение.
* Опционалы гарантируют, что значения nil будут явно обработаны.
* Автоматическое управление памятью
* Обработка ошибок позволяет осуществлять контролируемое восстановление от непредвиденных ошибок.

### Где применяется Swift

Данный язык программирования разработчики используют для написания мобильных приложений для телефонов, умных часов и компьютеров компании Apple. Ходил даже слух, что Google хочет перенести Android полностью на Swift, всякое может быть. Это универсальный язык, который можно использовать в любой платформе от компании из Купертино.

Важным моментом является то, что осенью 2016 года Apple способствовала открытию центра обучения студентов, где каждый может учиться программированию приложений для iOS. Но это еще не все, в штатах Swift уже включен в учебную программу многих ведущих учебных учреждений. У этого языка программирования огромный потенциал.

### Главные преимущества Swift

* Легкий

Apple любит минимализм. Поэтому в Swift простой синтаксис, его легко читать и легко писать на нем. Swift легко понимают разработчики, которые знают другие языки. Этот факт является определяющим при разработке приложения на несколько платформ.

* Безопасный

Ещё одна сильная сторона Swift, это его функциональная безопасность. Этот статически типизированный язык позволяет программистам быстро находить ошибки еще до компиляции и устранять их. Более того, с помощью указателя nil разработчики могут избавиться от ошибок компиляции, вызванных нулевыми ссылками (null).

* Имеет автоматическое управление памятью

Автоматический подсчет ссылок следит и управляет памятью приложения самостоятельно. Теперь разработчикам не надо тратить время, чтобы делать это самостоятельно. В результате сокращается время на создание приложения.

* Имеет открытый исходный код

В Swift появился открытый исходный код в 2015. Это событие сильно повлияло на популярность языка. 

* Имеет большой потенциал

Благодаря тому, что теперь Swift имеет открытый исходный код, Apple сделала шаг к тому чтобы он стал кроссплатформенный. Теперь он доступен на Linux. Apple так же обещает, что он будет доступен и на Windows. Технический гигант IBM так же сильно поспособствовал развитию языка. Компания представила тестовую среду Swift (Sandbox) и сделала доступным в облаке. Таким образом серверная часть Swift может быть интегрирована с большим числом серверных инструментов.

* Функционально совместимый

Благодаря интеграции с библиотекой исполнения программ Objective-C (Objective-C Runtime Library) можно писать программы на Swift, C, Objective-C, и C++ одновременно.

### Недостатки Swift

* Ограниченный кадровый потенциал

Swift новичок среди языков, в связи с этим талантливых разработчиков пока не так много. Но этот недостаток легко превратить в достоинство тем, кто хочет стать Swift разработчиком. Потребность в них только увеличивается, а конкуренция все еще не большая.

* Малое количество библиотек

В Swift все еще довольно мало встроенных функций, которые бы работали одинаково хорошо во всех версиях. Большинство библиотек и фреймворков разработаны для более ранних версий языка и совершенно бесполезны в новых.

* Нестабильность

Многие разработчики жалуются на одну и ту же проблему. Из-за изменений, представленных в новой версии языка, Swift ведет себя очень нестабильно. Это значит, что если разработчик хочет перейти на новую версию языка — ему нужно будет переписать код. Правда, эта проблема была частично решена с помощью Swift Migration Tool в XCode, что сделало миграцию на 4-ю версию языка довольно простой задачей.

# Основы языка Swift

Традиционно, рассказ о новом языке начинается с Hello, world! В Swift это делается так:

```swift
println("Hello, world!")
```

## Простые значения

 let  используется для создания констант и var  - для объявления переменных. Значение константы не обязательно должно быть известно на момент компиляции, но оно должно присваиваться строго один раз. Это значит, что можно использовать константу для обозначения значения, определяемого единажды, но используемого во многих местах.
 
 ```swift
var myVariable = 42
myVariable = 50
let myConstant = 42
```

Константа или переменная должна иметь тот тип, что и значение, которое хотите присвоить ей, однако не обязательно всегда объявлять тип — компилятор сам может определить тип, если при создании константы или переменной указывается ее значение. В приведенном выше примере, компилятор определит, что myVariable — это целое число (integer), т.к. начальное значение — целое число.

Если начальное значение не предоставляет достаточной информации (или его нет), тип указывается вручную:

```swift
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
```

Значения никогда не конвертируются в другой тип неявно. Если необходимо сконвертировать значение в другой тип, то нужно показать это явно: 

```swift
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
```

Есть еще один простой способ поместить значение в строку. 

```swift
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "U have \(apples + oranges) pieces of fruit."
```

Массивы и словари создаются с помощью квадратных скобок ([]), а получить доступ к их значениям можно указав индекс или ключ в квадратных скобках. 

```swift
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"
 
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
```

Массив автоматически увеличивается при добавлении элементов.

```swift
shoppingList.append("blue paint")
print(shoppingList)
```

Чтобы создать пустой массив или словарь, используется синтаксис инициализации:

```swift
let emptyArray = [String]()
let emptyDictionary = [String: Float]()
```

## Условия и циклы

Для создания условий используются операторы **if**  и **switch**, для создания циклов – **for-in**, **for**, **while** и **do-while**. При этом выделять круглыми скобками условия и инициализирующие выражения необязательно, тогда как фигурные скобки обязательны.


```swift
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
teamScore
```

Условие внутри оператора if должно быть логическим, это в частности означает, что выражение if score {…} является ошибочным, поскольку здесь нет явного сравнения (например, с нулем).

Условный оператор *if* можно использовать совместно с *let* и *var* для работы с константами и переменными, которые могут иметь значение *nil*. Такие константы и переменные называются **опциональными**. Чтобы создать опциональную переменную или константу добавьте знак вопроса (?) после указания типа.

```swift
 var optionalString: String? = "Hello"
optionalString == nil
 
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
```

Если опциональное значение равно *nil*, условие будет ложным и код в фигурных скобках после *if* выполнен не будет. В противном случае переменной *greeting* будет присвоено новое значение.

### switch

Оператор множественного выбора *switch* поддерживает внутри себя множество других операторов сравнения и не ограничен лишь простыми сравнениями:

```swift
let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}
```

После выполнения подходящего блока кода, программа покидает оператор *switch*, не проверяя последующие условия. Таким образом вам не нужно вручную добавлять операторы прерывания *(break)* в конце каждого блока *case*.

### for-in

Для перебирания элементов ассоциативного массива используйте оператор *for-in* совместно с указанием пары имен для каждой пары ключ-значение.

```swift
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
largest
```

### while 

Оператор цикла *while* позволяет выполнять блок кода внутри него до тех пор, пока условие не станет ложным. Условие также может быть указано после блока, который в таком случае будет выполнен по крайней мере один раз.

```swift
var n = 2
while n < 100 {
    n = n * 2
}
n
 
var m = 2
do {
    m = m * 2
} while m < 100
m
```

### for  

Оператор for можно использовать для перебора последовательности чисел с помощью двух точек (..) или с помощью инициализатора, условия и инкремента. 

```swift
var firstForLoop = 0
for i in 0..3 {
    firstForLoop += i
}
firstForLoop
 
var secondForLoop = 0
for var i = 0; i < 3; ++i {
    secondForLoop += 1
}
secondForLoop
```

## Функции и замыкания

Для объявления функций используйте ключевое слово *func*. Вызов функции производится через указание ее имени и списка аргументов в круглых скобках. Возвращаемый тип следует отделить от перечня формальных аргументов с помощью ->.

```swift
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Bob", "Tuesday")
```

Функции также могут иметь неопределенное число аргументов:

```swift
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)
```

Функции являются объектами первого класса *(first-class type)*, иными словами, функция в качестве свого результата может возвращать другую функцию.

```swift
func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)
```

Функция также может принимать другую функцию в качестве одного из аргументов.

```swift
func hasAnyMatches(list: Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)
```

**Функции являются частным случаем замыканий**. Вы можете создать замыкание, не указывая его имени и окружив тело замыкания фигурными скобками ({}). Для отделения аргументов и типа возвращаемого значения от тела замыкания используйте оператор *in*.

```swift
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
    })
```

## Объекты и классы

Для создания класса используется зарезервированное слово class. Члены класса объявляются точно так же, как и обычные константы и переменные. Более того, методы класса объявляются как обычные функции.

```swift
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
```

Чтобы создать экземпляр (объект) класса, достаточно добавить круглые скобки после названия класса. Доступ к методам и членам класса осуществляется через точку.

```swift
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
```

В этой версии класса Shape отсутствует кое-что важное, а именно инициализатор. Он нужен для того, чтобы подготовить класс, когда создается экземпляр класса. Для его создания используйте оператор init.

```swift
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
```

Обратите внимание, как член класса name при помощи *self* отделен от аргумента конструктора *name*. Аргументы передаются в конструктор обычным образом, как и в любой другой метод класса. Обратите внимание на то, что каждый член класса должен быть проинициализирован – либо при объявлении (как, например, *numberOfSides*), либо в конструкторе (как *name*).


Чтобы наследовать класс от уже существующего класса, после указания имени дочернего класса следует поставить двоеточие и указать название родительского. В Swift нет никаких ограничений по обязательному наследованию какого-либо стандартного класса.

Переопределенные дочерним классом методы должны быть помечены ключевым словом override – переопределение методов без override приведет к ошибке. Компилятор также выявляет методы, маркированные override, но не переопределяющие какие-либо методы своего родительского класса.

```swift
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()
```


## Перечисления и Структуры

Для создания перечислений используется ключевое слово enum. 

```swift
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.toRaw()
```

В вышеприведенном примере элементы перечисления первоначально имеют целочисленный тип, и вам достаточно указать значение только первого элемента – значения остальных элементов будут определены в соответствии с порядком их следования. В качестве исходного типа (raw value) значений элементов вы также можете выбрать строковый или вещественные типы.

Для преобразования исходного типа значения в тип перечисления используйте функции *toRaw* и *fromRaw*.

```swift
if let convertedRank = Rank.fromRaw(3) {
    let threeDescription = convertedRank.simpleDescription()
}
```

Для создания структур используется ключевое слово *struct*. Структуры имеют множество схожих черт с классами, включая методы и конструкторы. Одним из наиболее существенных отличий структур от классов является то, что экземпляры структур, в отличие от экземпляров классов, передаются в функции по значению (то есть предварительно создается их локальная копия), тогда как экземпляры классов передаются по ссылке.

```swift
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
```

Экземпляр члена перечисления может иметь собственные значения и они могут быть разными. Вы присваиваете эти значения при создании экземпляра перечисления (константа success в примере). Связанные и исходные значения это разные вещи: исходное значение члена перечисления всегда постоянно для всех экземпляров перечисления и указывается при его объявлении.

## Обобщенные типы (generics)

Для создания обобщенного типа, заключите имя в угловые скобки (<>).

```swift
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
makeArray(repeating: "knock", numberOfTimes: 4)
```

Вы можете создать общие формы функций и методов, так же как и классов, перечислений и структур.

```swift
// Reimplement the Swift standard library's optional type
enum OptionalValue<T> {
    case None
    case Some(T)
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)
```

Используйте where после названия типа, чтобы указать список требований, например - потребовать, чтобы тип реализовал протокол, потребовать, чтобы два типа были одинаковы, или потребовать, чтобы класс имел определенный суперкласс.

```swift
func anyCommonElements <T, U where T: Sequence, U: Sequence, T.GeneratorType.Element: Equatable, T.GeneratorType.Element == U.GeneratorType.Element> (lhs: T, rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])
```

## Протоколы и Расширения

Для объявления протокола используйте ключевое слово protocol.

```swift
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}
```

Протоколы могут поддерживаться классами, перечислениями и структурами.

```swift
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
 
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
```


Для добавления новых методов или членов класса в уже существующий тип необходимо использовать расширения – extensions. Вы также можете использовать расширения для реализации протокола уже существующим типом, даже если он импортирован из какой-либо библиотеки или фреймворка.

```swift
extension Int: ExampleProtocol {
    var simpleDescription: String {
    return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
7.simpleDescription
```

## Обработка ошибок

Ошибки можно отобразить, используя любой тип, который соответствует протоколу Error.

```swift
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}
```

Используйте ключевое слово throw для генерации ошибки и throws для обозначения функции, которая может сгенерировать ошибку. Если вы генерируете ошибку в функции, то функция немедленно возвращается, а код, который вызвал функцию, обрабатывает эту ошибку.

```swift
func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}
```

Есть несколько способов обработки ошибок. Один из вариантов использование *do-catch блока*. Внутри блока *do*, вы маркируете код, который может сгенерировать ошибку при помощи ключевого слова *try* перед ним. Внутри же блока *catch* автоматически присваивается имя error, но вы можете изменить его, указать свое собственное.

```swift
do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}
```

Вы можете использовать несколько блоков *catch* для обработки различных ошибок. Вы пишете некий шаблон после каждого блока *catch*, точно так же как это вы делаете в условном операторе *switch*:

```swift
do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}
```

Другим способом обработки ошибок является ключевое слово *try?*, которое позволяет изменить результат в опциональный тип. Если функция генерирует ошибку, то генерируется конкретная ошибка и результат становится равным *nil*. В противном случае, результат, содержащий опциональное значение возвращается функцией.

```swift
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")
```

Используйте ключевое слово *defer* для определения блока кода, который должен быть выполнен в последнюю очередь, непосредственно перед выходом из самой функции. Код в блоке *defer* исполняется независимо от того, генерируется ли ошибка в функции или нет. 

```swift
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]
 
func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)
```
