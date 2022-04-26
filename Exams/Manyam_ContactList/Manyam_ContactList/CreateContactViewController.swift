//
//  CreateContactViewController.swift
//  Manyam_ContactList
//
//  Created by Manyam,Siva Rama Krishna on 4/26/22.
//

import UIKit

class CreateContactViewController: UIViewController {
    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var numberInput: UITextField!
//    var arr1 = [[String]]()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButton(_ sender: Any) {
        var name:String = nameInput.text!
        var number:String = numberInput.text!
        var arr1 = [name,number]
        contacts.append(arr1)
        contacts.append(arr1)
        _ = navigationController?.popToRootViewController(animated: true)
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
