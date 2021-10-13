fun main(args: Array<String>) {
    println()
    println("Задание 3")
    println("Результат:")

    args.sorted().distinct().forEach(::println)
}