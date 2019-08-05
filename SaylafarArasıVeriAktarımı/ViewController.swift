//
//  ViewController.swift
//  SaylafarArasıVeriAktarımı
//
//  Created by Ufuk Köşker on 15.07.2019.
//  Copyright © 2019 Ufuk Köşker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, yeniKisiEkle {

    @IBOutlet weak var tableView: UITableView!
    
    var tumKisiler = [Contacts]() //Oluşturulan her bir kullanıcıyı bu dizi içerisinde topluyoruz.

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "kisiEkleVC" {
            let destinationVC = segue.destination as? KisiEkleViewController
            destinationVC?.delelgate = self//Kişi ekleme ekranımız açıldığı zaman delegate'i tetikletiyoruz.
        }
    }
    
    func kisiEkle(_ controller: KisiEkleViewController, with item: Contacts) { //Kişi ekleme sayfamızdan (Ekle) Buttonuna
        let yeniHucre = tumKisiler.count                            //Kişi ekleme sayfamızdan (Ekle) Buttonuna
        tumKisiler.append(item)                                     //basıldığı zaman Kişi Ekle sayfamızda bulunan delagete
        let indexPath = IndexPath(row: yeniHucre, section: 0)       //buradaki fonkisyonu tetikliyor.
        let indexPaths = [indexPath]                                //Bu fonkiyonda ise TableView'e yeni bir hücre oluşturuyoruz.
        tableView.insertRows(at: indexPaths, with: .automatic)
        navigationController?.popViewController(animated: true)
    }

    @IBAction func ekleButonunaBasildi(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "kisiEkleVC", sender: nil)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tumKisiler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell") as? ContactsTableViewCell {
            let contact = tumKisiler[indexPath.row]
            cell.prepareForContacts(for: contact)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72.0 //TableView hücremize yükseklik verdik.
    }
}
