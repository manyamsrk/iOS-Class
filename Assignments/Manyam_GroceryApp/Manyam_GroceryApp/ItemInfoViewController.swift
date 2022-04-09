//
//  ItemInfoViewController.swift
//  Manyam_GroceryApp
//
//  Created by Manyam,Siva Rama Krishna on 4/5/22.
//

import UIKit

class ItemInfoViewController: UIViewController {

    var details : [GroceryItem] = []
    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    @IBOutlet weak var showItemInfoAction: UIButton!
    
    @IBOutlet weak var itemInfoOutlet: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        for itemd in details{
            itemInfoOutlet.text = itemd.itemInfo
            
        }
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
