func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    integers.swapAt(firstIndex, secondIndex)
}

var pass = 0
var swaps = 0
var totalswap = 0
// var index = 0
var min = 0
var integers : [String] = []

while let line = readLine() {
    integers.append(line)
}

for currentIndex in 0 ..< integers.count {
    print("Pass: \(pass), Swaps: \(swaps)/\(totalswap), Array: \(integers)")
    min = currentIndex
    pass+=1
    swaps=0


    for i in currentIndex+1 ..< integers.count {
         if integers[i] < integers[min] {
            min = i
        }
        
    } 

    if min != currentIndex {
    swap(integers: &integers, firstIndex: currentIndex, secondIndex: min)
        swaps+=1
        totalswap+=1
    }
    



    if swaps == 0 {
        swaps+=1
        totalswap+=1
    }
}


