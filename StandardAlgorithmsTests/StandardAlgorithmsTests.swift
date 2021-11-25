//
//  StandardAlgorithmsTests.swift
//  StandardAlgorithmsTests
//
//  Created by Edmunds, Maximilian (NA) on 16/11/2021.
//

import XCTest

class StandardAlgorithmsTests: XCTestCase {

    func bubbleSort(array : [Int]) -> [Int] {
        var array = array
        var lastMarker = array.count - 1
        var swapsMade = 0
        var tempHolder = 0
        var done = false
        while done == false {
            swapsMade = 0
            for i in 0...(lastMarker - 1) {
                if array[i] > array[i + 1] {
                    tempHolder = array[i]
                    array[i] = array[i + 1]
                    array[i + 1] = tempHolder
                    swapsMade += 1
                }
            }
            lastMarker -= 1
            if swapsMade == 0 {
                done = true
            }
        }
        return array
    }
    
    func insertionSort(array : [Int]) {
        var array = array
        for i in 1..<array.count {
            let value = array[i]
            var position = i

            while position > 0 && array[position - 1] > value {
            array[position] = array[position - 1]
            position -= 1
            }

            array[position] = value
            }

        print(array)
    }
}
