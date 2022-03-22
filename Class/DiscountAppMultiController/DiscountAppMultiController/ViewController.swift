//
//  ViewController.swift
//  DiscountAppMultiController
//
//  Created by Manyam,Siva Rama Krishna on 3/22/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var AmountOutlet: UITextField!
    
    @IBOutlet weak var DiscountRateOutlet: UITextField!
    
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcDisountButtonClicked(_ sender: UIButton) {
        
        var am1 = AmountOutlet.text!
        var am = Double(am1)!
        var disc1 = DiscountRateOutlet.text!
        var disc = Double(disc1)!
        var a = am * disc
        var b = a / 100
        priceAfterDiscount = am - b
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            destination.amount = AmountOutlet.text!
            destination.discRate = DiscountRateOutlet.text!
            destination.priceAfterDisc = String(priceAfterDiscount)
        }
    }
    
}

