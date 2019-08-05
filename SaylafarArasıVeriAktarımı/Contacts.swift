//
//  Contacts.swift
//  SaylafarArasıVeriAktarımı
//
//  Created by Ufuk Köşker on 15.07.2019.
//  Copyright © 2019 Ufuk Köşker. All rights reserved.
//

import Foundation

class Contacts {
    var isim: String
    var soyisim: String
    var unvan: String
    
//    init(isim: String, soyisim: String, unvan: String) {
//        self.isim = isim
//        self.soyisim = soyisim
//        self.unvan = unvan
//    }
    init() {
        self.isim = ""
        self.soyisim = ""
        self.unvan = ""
    }
    
    func tamAd() -> String {
        return isim + " " + soyisim
    }
}
