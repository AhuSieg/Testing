//
//  TestingInterviewTests.swift
//  TestingInterviewTests
//
//  Created by Daymein Gregorio on 4/19/20.
//  Copyright © 2020 Daymein Gregorio. All rights reserved.
//

import XCTest
@testable import TestingInterview

class TestingInterviewTests: XCTestCase {

    var navigationController: UINavigationController?
    var viewController: MainViewController?

    override func setUp() {
        super.setUp()

         let viewController = MainViewController()

        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()

         _ = viewController.view
    }

    override func tearDown() {
        viewController = nil
    }

    func testVCNotNil() {

        let viewController = MainViewController()
        XCTAssertNotNil(viewController, "MainViewController instance cannot be nil")
    }

    func testResultLabelNotNil() {

        let viewController = MainViewController()
        XCTAssertNotNil(viewController.resultLabel, "resultLabel cannot be nil")
    }

    func testCheckForAnagram() {

        if let test1 = viewController?.checkForAnagram(firstWord: "Dormitory", secondWord: "Dirty room") {
            XCTAssertTrue(test1, "This is an anagram")
        }

        if let test2 = viewController?.checkForAnagram(firstWord: "Listen", secondWord: "Silent") {
            XCTAssertTrue(test2, "This is an anagram")
        }

        if let test3 = viewController?.checkForAnagram(firstWord: "The eyes", secondWord: "They see") {
            XCTAssertTrue(test3, "This is an anagram")
        }

        if let test4 = viewController?.checkForAnagram(firstWord: "what", secondWord: "what") {
            XCTAssertFalse(test4, "This is not an anagram")
        }

        if let test5 = viewController?.checkForAnagram(firstWord: "not", secondWord: "same") {
            XCTAssertFalse(test5, "This is not an anagram")
        }
    }
}
