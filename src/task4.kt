fun main(args: Array<String>) {
    println()
    println("Задание 4")
    println("Результат:")

    val mapCollection = args.sorted().groupingBy { it }.eachCount()

    for (i in mapCollection) {
        println(i.key + " " + i.value)
    }
}