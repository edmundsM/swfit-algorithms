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
        
        let testCases = [([3,5,1,2,9],[1,2,3,5,9]),
                         ([30,15,5,2,39],[2,5,15,30,39]),
                         ([9,5,3,2,1],[1,2,3,5,9])]
        
        //act
        for testCase in testCases {
            let actual = sorting.bubbleSort(testCase.0)
            let expected = testCase.1
            
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
        measure {
            let sorting = Sorting()
            let array = [1,2,3,5,9]
            _ = sorting.bubbleSort(array)
        }
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
    
    func testInsertionSortWithSortedIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let data = [1,2,3,5,9]
        let expected = [1,2,3,5,9]
        //act
        let actual = sorting.insertionSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testInsertionSortPerformance() {
        measure {
            let sorting = Sorting()
            let array = [1,2,3,5,9]
            _ = sorting.insertionSort(array)
        }
    }
    
    func testMergeSortWithUnsortedIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [([3,5,1,2,9],[1,2,3,5,9]),
                         ([30,15,5,2,39],[2,5,15,30,39]),
                         ([9,5,3,2,1],[1,2,3,5,9])]
        
        //act
        for testCase in testCases {
            let actual = sorting.mergeSort(testCase.0)
            
            //assert
            XCTAssertEqual(actual, testCase.1)
        }
        
        
    }
    
    func testMergeSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let data = [Int]()
        let expected = [Int]()
        //act
        let actual = sorting.mergeSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testMergeSortWithSortedIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let data = [1,2,3,5,9]
        let expected = [1,2,3,5,9]
        //act
        let actual = sorting.mergeSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testMergeSortPerformance() {
        measure {
            let sorting = Sorting()
            let array = [1,2,3,5,9]
            _ = sorting.mergeSort(array)
        }
    }
    
    func testQuickSortWithUnsortedIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [([3,5,1,2,9],[1,2,3,5,9]),
                         ([30,15,5,2,39],[2,5,15,30,39]),
                         ([9,5,3,2,1],[1,2,3,5,9])]
        
        //act
        for testCase in testCases {
            let actual = sorting.quickSort(testCase.0)
            
            //assert
            XCTAssertEqual(actual, testCase.1)
        }
        
        
    }
    
    func testQuickSortWithEmptyArrayReturnsEmptyArray() {
        //arrange
        let sorting = Sorting()
        let data = [Int]()
        let expected = [Int]()
        //act
        let actual = sorting.quickSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testQuickSortWithSortedIntegerArrayReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        let data = [1,2,3,5,9]
        let expected = [1,2,3,5,9]
        //act
        let actual = sorting.quickSort(data)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testQuickSortPerformance() {
        measure {
            let sorting = Sorting()
            let array = [1,2,3,5,9]
            _ = sorting.quickSort(array)
        }
    }
}

