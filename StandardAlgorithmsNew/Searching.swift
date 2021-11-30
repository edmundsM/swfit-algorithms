//
//  Searching.swift
//  StandardAlgorithmsNew
//
//  Created by Max Edmunds on 25/11/2021.
//

import Foundation


class Searching {
    func linearSearch(_ array : [Int] , _ target : Int) -> Bool {
        for i in 0..<array.count {
            if array[i] == target {
                return true
            }
        }
        return false
    }
    
    func binarySearch(_ array : [Int] , _ target : Int) -> Bool  {
        var lowerBound = 0
            var upperBound = array.count - 1
            while lowerBound <= upperBound {
                let midpoint = (lowerBound + upperBound) / 2
                if array[midpoint] == target {
                    return true
                } else if array[midpoint] > target {
                    upperBound = midpoint - 1
                } else {
                    lowerBound = midpoint + 1
                }
            }
        return false
    }
}
