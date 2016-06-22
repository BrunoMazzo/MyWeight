//
//  UITableViewExtensionsTests.swift
//  MyWeight
//
//  Created by Bruno Koga on 22/06/16.
//  Copyright © 2016 Diogo Tridapalli. All rights reserved.
//

import XCTest
@testable import MyWeight

class InvarianteTableViewCell: UITableViewCell { }
class EmojiTableViewCell😎: UITableViewCell { }
class a0_$WÅ´Ø: UITableViewCell { }

class UITableViewExtensionsTests: XCTestCase {
    private var tableView: UITableView!
    
    override func setUp() {
        super.setUp()
        tableView = UITableView()
    }
    
    override func tearDown() {
        tableView = nil
        super.tearDown()
    }
    
    func testDefaultReuseIdentifier() {
        var cellClass = UITableViewCell.self
        var cellDefaultReuseIdentifier = cellClass.defaultReuseIdentifier
        var expectedDefaultReuseIdentifier = "UITableViewCell"
        XCTAssertEqual(cellDefaultReuseIdentifier, expectedDefaultReuseIdentifier)
        
        cellClass = InvarianteTableViewCell.self
        cellDefaultReuseIdentifier = cellClass.defaultReuseIdentifier
        expectedDefaultReuseIdentifier = "InvarianteTableViewCell"
        XCTAssertEqual(cellDefaultReuseIdentifier, expectedDefaultReuseIdentifier)
        
        cellClass = EmojiTableViewCell😎.self
        cellDefaultReuseIdentifier = cellClass.defaultReuseIdentifier
        expectedDefaultReuseIdentifier = "EmojiTableViewCell😎"
        XCTAssertEqual(cellDefaultReuseIdentifier, expectedDefaultReuseIdentifier)
        
        cellClass = a0_$WÅ´Ø.self
        cellDefaultReuseIdentifier = cellClass.defaultReuseIdentifier
        expectedDefaultReuseIdentifier = "a0_$WÅ´Ø"
        XCTAssertEqual(cellDefaultReuseIdentifier, expectedDefaultReuseIdentifier)
    }
    
    func testDefaultNibName() {
        var cellClass = UITableViewCell.self
        var cellDefaultReuseIdentifier = cellClass.defaultNibName
        var expectedDefaultNibName = "UITableViewCell"
        XCTAssertEqual(cellDefaultReuseIdentifier, expectedDefaultNibName)
        
        cellClass = InvarianteTableViewCell.self
        cellDefaultReuseIdentifier = cellClass.defaultNibName
        expectedDefaultNibName = "InvarianteTableViewCell"
        XCTAssertEqual(cellDefaultReuseIdentifier, expectedDefaultNibName)
        
        cellClass = EmojiTableViewCell😎.self
        cellDefaultReuseIdentifier = cellClass.defaultNibName
        expectedDefaultNibName = "EmojiTableViewCell😎"
        XCTAssertEqual(cellDefaultReuseIdentifier, expectedDefaultNibName)
        
        cellClass = a0_$WÅ´Ø.self
        cellDefaultReuseIdentifier = cellClass.defaultNibName
        expectedDefaultNibName = "a0_$WÅ´Ø"
        XCTAssertEqual(cellDefaultReuseIdentifier, expectedDefaultNibName)
    }
    
    func testRegisterCellClassWithDefaultReuseIdentifier() {
        var cellClass = UITableViewCell.self
        var cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        tableView.registerCellClass(cellClass)
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNotNil(cell)
        XCTAssertTrue(cell!.isMemberOfClass(UITableViewCell))
        cell = tableView.dequeueReusableCellWithIdentifier("UnknownIdentifier")
        XCTAssertNil(cell)
        
        cellClass = InvarianteTableViewCell.self
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        tableView.registerCellClass(cellClass)
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNotNil(cell)
        XCTAssertTrue(cell!.isMemberOfClass(InvarianteTableViewCell))
        cell = tableView.dequeueReusableCellWithIdentifier("UnknownIdentifier")
        XCTAssertNil(cell)
        
        cellClass = EmojiTableViewCell😎.self
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        tableView.registerCellClass(cellClass)
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNotNil(cell)
        XCTAssertTrue(cell!.isMemberOfClass(EmojiTableViewCell😎))
        cell = tableView.dequeueReusableCellWithIdentifier("UnknownIdentifier")
        XCTAssertNil(cell)
        
        cellClass = a0_$WÅ´Ø.self
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        tableView.registerCellClass(cellClass)
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNotNil(cell)
        XCTAssertTrue(cell!.isMemberOfClass(a0_$WÅ´Ø))
        cell = tableView.dequeueReusableCellWithIdentifier("UnknownIdentifier")
        XCTAssertNil(cell)
    }
    
    func testRegisterCellClassWithCustomReuseIdentifier() {
        var cellClass = UITableViewCell.self
        var customIdentifier = "Abobrinha"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        tableView.registerCellClass(cellClass, forCellReuseIdentifier: customIdentifier)
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        cell = tableView.dequeueReusableCellWithIdentifier(customIdentifier)
        XCTAssertTrue(cell!.isMemberOfClass(UITableViewCell))
        
        cellClass = InvarianteTableViewCell.self
        customIdentifier = "www.invariante.com"
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        tableView.registerCellClass(cellClass, forCellReuseIdentifier: customIdentifier)
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        cell = tableView.dequeueReusableCellWithIdentifier(customIdentifier)
        XCTAssertTrue(cell!.isMemberOfClass(InvarianteTableViewCell))
        cell = tableView.dequeueReusableCellWithIdentifier("UnknownIdentifier")
        XCTAssertNil(cell)
        
        cellClass = EmojiTableViewCell😎.self
        customIdentifier = "🍁🍄😎👻"
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        tableView.registerCellClass(cellClass, forCellReuseIdentifier: customIdentifier)
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        cell = tableView.dequeueReusableCellWithIdentifier(customIdentifier)
        XCTAssertTrue(cell!.isMemberOfClass(EmojiTableViewCell😎))
        cell = tableView.dequeueReusableCellWithIdentifier("UnknownIdentifier")
        XCTAssertNil(cell)
        
        cellClass = a0_$WÅ´Ø.self
        customIdentifier = "⁄€‹·Î·ÍÅ¨ÔˆÏÍ˜◊SMCMV<ÎÍ‚‹"
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        tableView.registerCellClass(cellClass, forCellReuseIdentifier: customIdentifier)
        cell = tableView.dequeueReusableCellWithIdentifier(cellClass.defaultReuseIdentifier)
        XCTAssertNil(cell)
        cell = tableView.dequeueReusableCellWithIdentifier(customIdentifier)
        XCTAssertTrue(cell!.isMemberOfClass(a0_$WÅ´Ø))
        cell = tableView.dequeueReusableCellWithIdentifier("UnknownIdentifier")
        XCTAssertNil(cell)
    }
}
