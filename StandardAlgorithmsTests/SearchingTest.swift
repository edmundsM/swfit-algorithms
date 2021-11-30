//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Max Edmunds on 25/11/2021.
//

import Foundation

import XCTest


class SearchingTest: XCTestCase {
    
    func testLinearSearchWithTargetInArray() {
        //arrange
        let searching = Searching()
        let array = [1,6,9,2,84,200]
        let target = 9
        let expected = true
        //act
        let actual = searching.linearSearch(array, target)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testLinearSearchWithTargetNotInArray() {
        //arrange
        let searching = Searching()
        let array = [1,6,9,2,84,200]
        let target = 3
        let expected = false
        //act
        let actual = searching.linearSearch(array, target)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testLinearSearchWithEmptyArray() {
        //arrange
        let searching = Searching()
        let array : [Int] = []
        let target = 9
        let expected = false
        //act
        let actual = searching.linearSearch(array, target)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBinarySearchWithTargetInArray() {
        //arrange
        let searching = Searching()
        let array = [1,6,9,2,84,200]
        let target = 9
        let expected = true
        //act
        let actual = searching.binarySearch(array, target)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBinarySearchWithTargetNotInArray() {
        //arrange
        let searching = Searching()
        let array = [1,6,9,2,84,200]
        let target = 3
        let expected = false
        //act
        let actual = searching.binarySearch(array, target)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    func testBinarySearchWithEmptyArray() {
        //arrange
        let searching = Searching()
        let array : [Int] = []
        let target = 9
        let expected = false
        //act
        let actual = searching.binarySearch(array, target)
        //assert
        XCTAssertEqual(actual, expected)
    }
    
    
}
