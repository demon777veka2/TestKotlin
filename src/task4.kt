fun main(args: Array<String>) {
     args.sorted().groupingBy { it }.eachCount().forEach{it.key + " " + it.value}
}