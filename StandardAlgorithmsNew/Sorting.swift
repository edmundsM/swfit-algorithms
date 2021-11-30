//
//  Sorting.swift
//  StandardAlgorithmsNew
//
//  Created by Edmunds, Maximilian (NA) on 16/11/2021.
//

import Foundation

class Sorting {
    func bubbleSort(_ data: [Int]) -> [Int] {
        if data.count == 0 {
            return []
        } else {
            var array = data
            var swapsMade = 0
            var tempHolder = 0
            var done = false
            var lastMarker = (array.count - 1)
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
                if lastMarker > 1 {
                    lastMarker -= 1
                }
                if swapsMade == 0 {
                    done = true
                }
            }
        return array
        }
}
    
    func insertionSort(_ data: [Int]) -> [Int] {
        if data.count == 0 {
            return []
        } else {
            var array = data
            for i in 1..<array.count {
                let value = array[i]
                var position = i

                while position > 0 && array[position - 1] > value {
                array[position] = array[position - 1]
                position -= 1
                }

                array[position] = value
                }

            return(array)
        }
        
    }
    
    func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
      guard array.count > 1 else { return array }

      let middleIndex = array.count / 2
      
      let leftArray = mergeSort(Array(array[0..<middleIndex]))
      let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
      
      return merge(leftArray, rightArray)
    }

    func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
      var leftIndex = 0
      var rightIndex = 0

      var orderedArray: [T] = []
      
      while leftIndex < left.count && rightIndex < right.count {
          let leftElement = left[leftIndex]
          let rightElement = right[rightIndex]

          if leftElement < rightElement {
              orderedArray.append(leftElement)
              leftIndex += 1
          } else if leftElement > rightElement {
              orderedArray.append(rightElement)
              rightIndex += 1
          } else {
              orderedArray.append(leftElement)
              leftIndex += 1
              orderedArray.append(rightElement)
              rightIndex += 1
          }
      }

      while leftIndex < left.count {
          orderedArray.append(left[leftIndex])
          leftIndex += 1
      }

      while rightIndex < right.count {
          orderedArray.append(right[rightIndex])
          rightIndex += 1
      }
      
      return orderedArray
    }
    
    func quickSort<T: Comparable>(_ a: [T]) -> [T] {
        guard a.count > 1 else { return a }

        let pivot = a[a.count/2]
        let less = a.filter { $0 < pivot }
        let equal = a.filter { $0 == pivot }
        let greater = a.filter { $0 > pivot }

        return quickSort(less) + equal + quickSort(greater)
    }
}
