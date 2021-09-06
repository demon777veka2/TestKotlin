fun main(args: Array<String>) {
    var list: Array<String> = args

    println()
    println("Задание 3")
    println("Результат:")

    list.sorted().distinct().forEach(::println)
}