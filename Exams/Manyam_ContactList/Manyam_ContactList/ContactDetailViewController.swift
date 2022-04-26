//
//  ContactDetailViewController.swift
//  Manyam_ContactList
//
//  Created by Manyam,Siva Rama Krishna on 4/26/22.
//

import UIKit

class ContactDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var details: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = details[0]
        numberLabel.text = details[1]
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
