//
//  ViewController.swift
//  Manyam_DiceGame
//
//  Created by Manyam,Siva Rama Krishna on 4/7/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fpName: UITextField!
    
    @IBOutlet weak var spName: UITextField!
    
    @IBOutlet weak var pdGame: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playDiceGameButton(_ sender: Any) {
        
        var fpname = fpName.text!
        var spname = spName.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var tran = segue.identifier
        if tran == "diceSegue"{
            
            var desti = segue.destination as! GameViewController
            desti.firstpname = fpName.text!
            desti.secondpname = spName.text!
           
        }
    }
    


}

