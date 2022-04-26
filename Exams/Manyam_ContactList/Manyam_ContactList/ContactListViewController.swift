//
//  ViewController.swift
//  Manyam_ContactList
//
//  Created by Manyam,Siva Rama Krishna on 4/26/22.
//

import UIKit

class ContactListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = conatcTableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row][0]
        return cell
    }
    
    var contactArr = contacts
    
    @IBOutlet weak var conatcTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        conatcTableView.delegate = self
        conatcTableView.dataSource = self
        // Do any additional setup after loading the view.
        
    }
    @IBAction func createContactButton(_ sender: Any) {
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "detailSegue"{
            let destination = segue.destination as! ContactDetailViewController
            destination.details = contacts[(conatcTableView.indexPathForSelectedRow?.row)!]

            var transition1 = segue.identifier
            if transition1 == "createSegue"{
                var destination = segue.destination as! CreateContactViewController
        }
    }

}
}

