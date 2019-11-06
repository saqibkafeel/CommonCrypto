//
//  ViewController.swift
//  encryptSwift5
//
//  Created by saqib on 11/4/19.
//  Copyright © 2019 saqib. All rights reserved.
//

import UIKit
import CryptoSwift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        do {
            
            let key1 = "XlQxN7a5181b07cj".utf8
            let key2 = "XlQxN7a5181b07cj".utf8
            let encrypted: Array<UInt8> = try! AES(key: Array("\(key1)\(key2)".utf8), blockMode: CBC(iv: Array("n5JJM04FN4kQ178d".utf8)), padding: .pkcs5).encrypt(Array("alexei1118@yandex.com|alexei123".utf8))
            let hexString = encrypted.toHexString()
            print("encrypted string : \(hexString)")
           
        } catch { }
    }


}
