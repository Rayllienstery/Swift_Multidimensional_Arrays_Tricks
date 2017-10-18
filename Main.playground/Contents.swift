//: Playground - noun: a place where people can play

import UIKit
//Some random value lists
var Matrix : [[Int]] = [[5,16,2,26,5],[23,3,1,43,254,1,0,-25],[0,255,123,3,1,26]]

//Array, what contains MAX value on every line
var maxValues : [Int] = Array(repeating: 0, count: Matrix.count)
for i in 0..<Matrix.count{
    maxValues[i] = Matrix[i][0]
    for j in 1..<Matrix[i].count{
        if maxValues[i] < Matrix[i][j]{
            maxValues[i] = Matrix[i][j]
        }
    }
}
print("max values: ", maxValues)

//Array what contains MIN value on every line
var minValues : [Int] = Array(repeating: 0, count: Matrix.count)
for i in 0..<Matrix.count{
    minValues[i] = Matrix[i][0]
    for j in 1..<Matrix[i].count{
        if minValues[i] > Matrix[i][j]{
            minValues[i] = Matrix[i][j]
        }
    }
}
print("min values: ", minValues)

//Array what contains LAST element of every line
var lastValues : [Int] = Array(repeating: 0, count: Matrix.count)
for i in 0..<Matrix.count{
    lastValues[i] = Matrix[i][Matrix[i].count-1]
    }
print("last values: ", lastValues)

//Print String, if item on same line == "Yes"
var boolString : [[String]] = [["Yes","Text0"],["No","Text1"],["Yes","Text2"]]
for i in 0..<boolString.count{
    if boolString[i][0] == "Yes" {
        print(boolString[i][1])
    	}
}
