fun main(args: Array<String>) {
    val text = if (args.isEmpty()) {
        readLine().toString().split(" ").toTypedArray()
    } else {
        args
    }

    show(text)
  }


fun show(text: Array<String>?){
    if (text != null) {
        text.sorted().groupingBy { it }.eachCount()
                .toList().sortedByDescending { (_, value) -> value }.toMap()
                .forEach { println(it.key + " " + it.value) }
    }
}

