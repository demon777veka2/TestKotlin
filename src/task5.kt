fun main(args: Array<String>) {
    // если через параметр ничего не пришло, передаем новые значения через ReadLine
    var args: Array<String> = if (args.isEmpty()) {
        println("Введите текст")
        readLine().toString().split(" ").toTypedArray()
    } else {
        args
    }

    val mapCollection = args.sorted().groupingBy { it }.eachCount()
    //Сортировка коллекции по количеству повторений на уменьшение и алфавиту
    val result = mapCollection.toList().sortedByDescending { (_, value) -> value }.toMap()

    for (i in result) {
        println(i.key + " " + i.value)
    }
}