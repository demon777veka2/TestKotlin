fun main(args: Array<String>) {
    // если через параметр ничего не пришло, передаем новые значения через ReadLine
    var list: Array<String> = if (args.isEmpty()) {
        println("Введите текст")
        readLine().toString().split(" ").toTypedArray()
    } else {
        args
    }

    println()
    println("Задание 5")
    println("Результат:")

    val mapCollection = list.sorted().groupingBy { it }.eachCount()
    //Сортировка коллекции по количеству повторений на уменьшение и алфавиту
    val result = mapCollection.toList().sortedByDescending { (_, value) -> value }.toMap()

    for (i in result) {
        println(i.key + " " + i.value)
    }
}