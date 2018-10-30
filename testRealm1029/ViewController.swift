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
//        let person = Person(value: ["name" : "Yu", "age":32])
//        let cats = [Cat(value: ["name": "Toto", "age": 1]),
//                    Cat(value: ["name": "Rao", "age": 3])]
        
        let dictionary: [String: Any] = ["name": "Yu",
                                         "age": 32,
                                         "dog": ["name": "Momo", "age": 9],
                                         "cats":[["name": "Toto", "age": 1],
                                                 ["name" : "Rao", "age": 2]]]
        let person = Person(value: dictionary)
            
        try! realm.write {
            realm.deleteAll()
//            realm.add(person)
//            realm.add(cats)
            realm.add(person)
            
        }
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }

    
}

