//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Edmunds, Maximilian (NA) on 16/11/2021.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithUnsortedIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let expected = [1,2,3,5,9]
        
        let testCases = [([3,5,1,2,9],[1,2,3,5,9]),
                         ([30,15,5,2,39],[2,5,15,30,39]),
                         ([9,5,3,2,1],[1,2,3,5,9])]
        
        //act
        for testCase in testCases {
            let actual = sorting.bubbleSort(testCase.0)
            
            //assert
            XCTAssertEqual(actual, expected)
        }
        
        
    }
    
    func testBubbleSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let data = [Int]()
        let expected = [Int]()
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortWithSortedIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let data = [1,2,3,5,9]
        let expected = [1,2,3,5,9]
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBubbleSortPerformance() {
        measure 
    }
    
    func testInsertionSortWithUnsortedIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [([3,5,1,2,9],[1,2,3,5,9]),
                         ([30,15,5,2,39],[2,5,15,30,39]),
                         ([9,5,3,2,1],[1,2,3,5,9])]
        
        //act
        for testCase in testCases {
            let actual = sorting.insertionSort(testCase.0)
            
            //assert
            XCTAssertEqual(actual, testCase.1)
        }
        
        
    }
    
    func testInsertionSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let data = [Int]()
        let expected = [Int]()
        //act
        let actual = sorting.insertionSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testInsertionSortSortWithSortedIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let data = [1,2,3,5,9]
        let expected = [1,2,3,5,9]
        //act
        let actual = sorting.insertionSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    
    
    
}

