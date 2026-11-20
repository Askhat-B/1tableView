//
//  ViewController.swift
//  tableView
//
//  Created by Askhat on 31.10.2026.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var surnameLabel: UILabel!
    
    @IBOutlet weak var professionLabel: UILabel!
    
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        professionLabel.text = person.profession
        imageView.image = UIImage(named: person.image)
    }


}

