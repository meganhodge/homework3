//
//  main.swift
//  Homework3
//
//  Created by Megan Hodge on 10/11/15.
//  Copyright © 2015 Megan Hodge. All rights reserved.

import Foundation

// adds the first number to the second and returns the total
func addition(firstDigit: Int?, secondDigit: Int?) -> Int? {
    if (firstDigit != nil && secondDigit != nil) {
        return firstDigit! + secondDigit!
    } else {
        return nil
    }
}

// subtracts the first number from the second and returns the total
func subtraction(firstDigit: Int?, secondDigit: Int?) -> Int? {
    if (firstDigit != nil && secondDigit != nil) {
        return firstDigit! - secondDigit!
    } else {
        return nil
    }
}

// multiplies the first number by the second and returns the total
func multiplication(firstDigit: Int?, secondDigit: Int?) -> Int? {
    if (firstDigit != nil && secondDigit != nil) {
        return firstDigit! * secondDigit!
    } else {
        return nil
    }
}

// divides the first number by the second and returns the total
// treats them as doubles so that the answer is rounded to the nearest Int
func division(firstDigit: Int?, secondDigit: Int?) -> Int? {
    if (firstDigit != nil && secondDigit != nil) {
        return Int(round(Double(firstDigit!) / Double(secondDigit!)))
    } else {
        return nil
    }
}

// takes in a math operation function and completes it using the two passed 
// in numbers and returns the result
func doubleOperation(operation : (Int?, Int?) -> Int?, firstDigit: Int?,
    secondDigit: Int?) -> Int? {
    if firstDigit == nil || secondDigit == nil {
        return nil
    } else {
        return operation(firstDigit!, secondDigit!)
    }
}

// takes an array of integers and adds them
func arrayAddition(numbers: [Int]?) -> Int? {
    if numbers == nil {
        return nil
    } else {
        return numbers!.reduce(0, combine: +)
    }
}

// takes an array of integers and multiplies them together and returns the total
func arrayMultiplication(numbers: [Int]?) -> Int? {
    if numbers == nil {
        return nil
    } else {
        return numbers!.reduce(1, combine: *)
    }
}

// returns the number of numbers in the array passed in as a parameter
func arrayCount(numbers: [Int]?) -> Int? {
    if numbers != nil {
        return numbers!.count
    } else {
        return nil
    }
}

// returns the average of the numbers in the array passed in as a parameter
// rounds to an int so the average of 1 and 2 is 1
func arrayAvg(numbers: [Int]?) -> Int? {
    if numbers == nil {
        return nil
    } else {
        return arrayAddition(numbers)! / numbers!.count
    }
}

// takes in a math operation function and completes it using the two passed in numbers and returns the result
func arrayOperations(operation : ([Int]?) -> Int?, firstArray: [Int]?) -> Int? {
    if firstArray == nil {
        return nil
    } else {
        return operation(firstArray!)
    }
}

// adds the x and y coordinates of two points together to return a third point made up of their sums
func addPoints(pointA: (x: Int?, y: Int?)?, pointB: (x: Int?, y: Int?)?) -> (Int, Int)? {
    if pointA != nil && pointB != nil && pointA!.x != nil && pointB!.x != nil
    && pointA!.y != nil && pointB!.y != nil {
        return (pointA!.x! + pointB!.x!, pointA!.y! + pointB!.y!)
    } else {
        return nil
    }
}

// subtracts the x and y coordinates of two points together to return a third point made up of their sums
func subtractPoints(pointA: (x: Int?, y: Int?)?, pointB: (x: Int?, y: Int?)?) -> (Int, Int)? {
    if pointA != nil && pointB != nil && pointA!.x != nil && pointB!.x != nil
        && pointA!.y != nil && pointB!.y != nil {
            return (pointA!.x! - pointB!.x!, pointA!.y! - pointB!.y!)
    } else {
        return nil
    }
}

// using dictionaries to represent points, adds the x and y coordinates of two points to return a third point
func addPoints(pointA: [String: Double]?, pointB: [String: Double]?) -> (Double, Double)?{
    if pointA != nil && pointB != nil {
        if pointA!.keys.contains("x") && pointA!.keys.contains("y") && pointB!.keys.contains("x") && pointB!.keys.contains("y") {
            return (pointA!["x"]! + pointB!["x"]!, pointA!["y"]! + pointB!["y"]!)
        }
    }
    return (nil)
}

// using dictionaries to represent points, subtracts the x and y coordinates of two points to return a third point
func subtractPoints(pointA: [String: Double]?, pointB: [String: Double]?) -> (Double, Double)?{
    if pointA != nil && pointB != nil {
        if pointA!.keys.contains("x") && pointA!.keys.contains("y") && pointB!.keys.contains("x") && pointB!.keys.contains("y") {
            return (pointA!["x"]! - pointB!["x"]!, pointA!["y"]! - pointB!["y"]!)
        }
    }
    return (nil)
}

// Testing
print(addition(1,secondDigit: 1)!) // answer: 2
print(addition(nil, secondDigit: nil)) // answer: nil
print(subtraction(1, secondDigit: 1)!) // answer: 0
print(multiplication(1, secondDigit: 1)!) // answer: 1
print(division(1, secondDigit: 1)!) // answer: 1
print(doubleOperation(addition, firstDigit: 1, secondDigit: 1)!) // answer: 2
print(doubleOperation(subtraction, firstDigit: 1, secondDigit: 1)!) // answer: 0
print(doubleOperation(multiplication, firstDigit: 1, secondDigit: 1)!) // answer: 1
print(doubleOperation(division, firstDigit: 1, secondDigit: 1)!) // answer: 1

print(arrayAddition([1,2,3])!) // answer: 6
print(arrayMultiplication([1,2,3])!) // answer: 6
print(arrayCount([1,2,3])!) // answer: 3
print(arrayAvg([1,2, 3])!) // answer: 2
print(arrayOperations(arrayAddition, firstArray: [1,2,3])!) // answer: 6
print(arrayOperations(arrayMultiplication, firstArray: [1,2,3])!) // answer: 6
print(arrayOperations(arrayCount, firstArray: [1,2,3])!) // answer: 3
print(arrayOperations(arrayAvg, firstArray: [1,2,3])!) // answer: 2

print(addPoints((1,1),pointB: (2,2))!) // answer: (3,3)
print(subtractPoints((2,2), pointB: (1,1))!) // answer: (1,1)
print(addPoints((1,1),pointB: (2,2))!)

let pointA = ["x": 1.0, "y": 1.0]
let pointB = ["x": 1.0, "y": 1.0]
print(addPoints(pointA, pointB: pointB)!) // answer: (2.0, 2.0)
print(subtractPoints(pointA, pointB: pointB)!) // answer: (0.0, 0.0)
let pointC = ["z": 1.0, "y": 1.0]
print(addPoints(pointA, pointB: pointC)) // answer: nil
print(subtractPoints(pointA, pointB: pointC)) // answer: nil