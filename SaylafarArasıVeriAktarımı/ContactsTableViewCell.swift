//
//  ContactsTableViewCell.swift
//  SaylafarArasıVeriAktarımı
//
//  Created by Ufuk Köşker on 15.07.2019.
//  Copyright © 2019 Ufuk Köşker. All rights reserved.
//

import UIKit

class ContactsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var tamAdLabel: UILabel!
    @IBOutlet weak var unvanLabel: UILabel!
    
    func prepareForContacts(for object: Contacts) {
        tamAdLabel.text = object.tamAd()
        unvanLabel.text = object.unvan
    }
    
}
