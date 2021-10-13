fun main(args: Array<String>) {
    val mapCollection = args.sorted().groupingBy { it }.eachCount()

    for (i in mapCollection) {
        println(i.key + " " + i.value)
    }
}