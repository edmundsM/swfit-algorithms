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
        let data = [3,5,1,2,9]
        let expected = [1,2,3,5,9]
        
        let testCases = [(input: [3,5,1,2,9], expected: [1,2,3,5,9]),
                         (input: [30,15,5,2,39], expected : [2,5,15,30,39]),
                         (input: [], expected: [])]
        
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
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
    
    func testBubbleSortWithSortedArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let data = [1,2,3,5,9]
        let expected = [1,2,3,5,9]
        //act
        let actual = sorting.bubbleSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
}

