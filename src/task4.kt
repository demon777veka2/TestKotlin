fun main(args: Array<String>) {
    var list: Array<String> = args

    println()
    println("Задание 4")
    println("Результат:")

    val mapCollection = list.sorted().groupingBy { it }.eachCount()

    for (i in mapCollection) {
        println(i.key + " " + i.value)
    }
}