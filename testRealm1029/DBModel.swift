//
//  DBModel.swift
//  testRealm1029
//
//  Created by yutaka takagaki on 2018/10/30.
//  Copyright © 2018年 yutaka takagaki. All rights reserved.
//

import Foundation
import RealmSwift

class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
    @objc dynamic var mood = "Normal"
    @objc dynamic var dog: Dog? // Dogモデルと1対1の関連
    let cats = List<Cat>() // Catモデルと1対多の関連
}

class Animal : Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}

class Dog : Animal { //Animalクラスの継承
    let persons = LinkingObjects(fromType: Person.self, property: "dog")
}

class Cat: Animal { //Animalクラスの継承
    let persons = LinkingObjects(fromType: Person.self, property: "cats")
}

class UniqueObject: Object {
    @objc dynamic var id = 0
    @objc dynamic var value = ""
    @objc dynamic var optionalValue: String?
        
    override static func primaryKey() -> String? {
        return "id"
    }
}
