func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    integers.swapAt(firstIndex, secondIndex)
}


var pass = -1
var swaps = 0
var totalswap = 0 
var index = 0
var integers : [String] = []


while let line = readLine() {
    integers.append(line)
}


for i in 0 ..< integers.count {
    pass+=1
    swaps = 0
    index = i
    while index > 0 {
        if integers[index] < integers[index-1] {
            swap(integers: &integers, firstIndex: index, secondIndex: index-1)
            index-=1
            totalswap+=1
            swaps+=1
    } else {
            break
        }
    }
   }
for line in integers {
    print(line)
}


