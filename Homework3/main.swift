//
//  main.swift
//  Homework3
//
//  Created by Megan Hodge on 10/11/15.
//  Copyright © 2015 Megan Hodge. All rights reserved.
//

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

// takes in a math operation function and completes it using the two passed in numbers and returns the result
func doubleOperation(operation : (Int?, Int?) -> Int?, firstDigit: Int?, secondDigit: Int?) -> Int? {
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
    var total = 1
    if numbers == nil {
        return nil
    } else {
        return numbers!.reduce(1, combine: +) / numbers!.count
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

// subtract the x and y coordinates of two points together to return a third point made up of their sums
func subtractPoints(pointA: (x: Int?, y: Int?)?, pointB: (x: Int?, y: Int?)?) -> (Int, Int)? {
    if pointA != nil && pointB != nil && pointA!.x != nil && pointB!.x != nil
        && pointA!.y != nil && pointB!.y != nil {
            return (pointA!.x! - pointB!.x!, pointA!.y! - pointB!.y!)
    } else {
        return nil
    }
}

// using dictionaries to represent points, add the x and y coordinates of two points to return a third point
func addPointsDictionary(pointA: [x: Int, y: Int], pointB: [x: Int, y: Int]) -> (Int, Int){
    
}