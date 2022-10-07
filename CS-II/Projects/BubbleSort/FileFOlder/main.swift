func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    integers.swapAt(firstIndex, secondIndex)
}




var pass = 0
var totalswap = 0
var swap = 0
var array2 = [String]()
var integers : [String] = []

while let line = readLine() {
    integers.append(line)
}



for x in 0 ..< integers.count {
    pass += 1
    for y in 0 ..< integers.count-x-1 {
        if integers[y] > integers[y+1] {
            swap(integers: &integers, firstIndex: y+1, secondIndex: y)
            swap += 1
            totalswap += 1
        }
    }
    if integers != array2 {
            } else{break}
    swap = 0
    array2 = integers
}

for line in integers {
    print(line)
}
