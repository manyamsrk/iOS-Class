//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Manyam,Siva Rama Krishna on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(prodName: String, prodCategory: String){
        self.productName = prodName;
        self.productCategory = prodCategory;
    }
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArr.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        cell.textLabel?.text = productArr[indexPath.row].productName
        return cell
    }
    
    var productArr = [Product]()
    

    @IBOutlet weak var tableViewOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        let product1 = Product(prodName: "MacBookAir", prodCategory: "Laptop")
        productArr.append(product1)
        let product2 = Product(prodName: "iPhone", prodCategory: "Mobile Phone")
        productArr.append(product2)
        let product3 = Product(prodName: "AirPods", prodCategory: "Accessories")
        productArr.append(product3)
        let product4 = Product(prodName: "iWatch", prodCategory: "Accessories")
        productArr.append(product4)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "detailsSegue"{
            let destination = segue.destination as! DetailsViewController
            destination.product = productArr[(tableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }


}

