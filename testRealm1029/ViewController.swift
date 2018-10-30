//
//  ViewController.swift
//  testRealm1029
//
//  Created by yutaka takagaki on 2018/10/29.
//  Copyright © 2018年 yutaka takagaki. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    let realm = try! Realm()
        let person = Person(value: ["name" : "Yu", "age":32])
    
        try! realm.write {
            realm.add(person)
        }
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }

    
}

