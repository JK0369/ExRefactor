//
//  ViewController.swift
//  ExRefactorDelegate
//
//  Created by 김종권 on 2024/01/23.
//

import UIKit

class ViewController: UIViewController, LogicRequirement {
    var info = 1
    var sampleString = "str"
    lazy var logicHelper = LogicHelper(instance: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func someFunc1() {
        // info 를 가지고 계산하거나 set해주는 코드
        info += 1
    }
    
    func someFunc2() {
        // sampleString를 가지고 계산하거나 set해주는 코드
        sampleString += "1"
    }
}

protocol LogicRequirement where Self: UIViewController {
    var info: Int { get set }
    var sampleString: String { get set }
}

struct LogicHelper {
    let instance: LogicRequirement
    
    init(instance: LogicRequirement) {
        self.instance = instance
    }
    
    func someFunc1() {
        instance.info += 1
    }
    
    func someFunc2() {
        instance.sampleString += "1"
    }
}
