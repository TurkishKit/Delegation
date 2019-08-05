//
//  KisiEkleViewController.swift
//  SaylafarArasıVeriAktarımı
//
//  Created by Ufuk Köşker on 15.07.2019.
//  Copyright © 2019 Ufuk Köşker. All rights reserved.
//

import UIKit

protocol yeniKisiEkle: class {// protocol'ümüzü oluşturduk.
    func kisiEkle(_ controller: KisiEkleViewController, with item: Contacts)//protocol içine yazılan fonksiyonlarda süslü parantez kullanımına gerek yoktur.
}

class KisiEkleViewController: UIViewController {
    
    @IBOutlet weak var isimTextField: UITextField!
    @IBOutlet weak var soyisimTextField: UITextField!
    @IBOutlet weak var unvanTextField: UITextField!
    
    weak var delelgate: yeniKisiEkle?// protocol'ümüzü kullanabilmek için delegate adında bir nesne oluşturduk.
    var yeniKisi = Contacts()// Contacts classından yeni bir nesne oluşturduk.

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func ekleButonunaBasildi(_ sender: UIButton) {
        yeniKisi.isim = isimTextField.text!
        yeniKisi.soyisim = soyisimTextField.text!
        yeniKisi.unvan = unvanTextField.text!
        
        delelgate?.kisiEkle(self, with: yeniKisi)//delegate içerisinde bulunan fonksiyonu tetiklettik ve oluşturduğumuz yeni kişileri Contact class'ının içerisine ekledik.
    }
    
}
