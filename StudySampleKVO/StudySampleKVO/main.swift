//
//  main.swift
//  StudySampleKVO
//
//  Created by 남수김 on 2020/03/28.
//  Copyright © 2020 ns. All rights reserved.
//

import Foundation

class KVO: NSObject {
    @objc dynamic var testString = "hihihi"
}
        
let kvo = KVO()
var ob = kvo.observe(\.testString, options: [.new, .old]) { (changeObject, value) in
    print("kvo - value change: \(value)")    // value change: NSKeyValueObservedChange<String>(kind: __C.NSKeyValueChange, newValue: nil, oldValue: nil, indexes: nil, isPrior: false)
    print("kvo - value change: \(changeObject.testString)")    // value change: 안녕하세여
        }

//ob.invalidate()    // observe 제거
        
print("kvo - \(kvo.testString)")    // hihihi
kvo.testString = "안녕하세여"
print("kvo - \(kvo.testString)")    //안녕하세여
kvo.testString = "마지막문자열"
