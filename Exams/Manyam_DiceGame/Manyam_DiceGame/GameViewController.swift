//
//  GameViewController.swift
//  Manyam_DiceGame
//
//  Created by Manyam,Siva Rama Krishna on 4/7/22.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var fplayername: UILabel!
    
    @IBOutlet weak var splayername: UILabel!
    
    @IBOutlet weak var rolladice: UIButton!
    
    @IBOutlet weak var fplayercount: UILabel!
    
    @IBOutlet weak var splayercount: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    var firstpname = ""
    var secondpname = ""
    var fcount = 0
    var scount = 0
    
    var img = ["play","dice1","dice2","dice3","dice4","dice5","dice6","tie"]
    override func viewDidLoad() {
        super.viewDidLoad()

        fplayername.text = "Total number of games \(firstpname) won: \(fcount)"
        splayername.text = "Total number of games \(secondpname) won: \(scount)"
        
        fplayercount.text = "\(firstpname) current score: nill"
        splayercount.text = "\(secondpname) current score: nill"
        image.image = UIImage(named: img[0])
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Rolladice(_ sender: Any) {
        
        let arr = [1,2,3,4,5,6]
        var p1:Int = arr.randomElement() ?? 0
        var p2:Int = arr.randomElement() ?? 0
        fplayercount.text = "\(firstpname) current score: \(p1)"
        splayercount.text = "\(secondpname) current score: \(p2)"
        if(p1 == p2){
            image.image = UIImage(named: img[7])
        }
        else if(p1 > p2){
            fcount = fcount + 1
            fplayercount.text = "\(firstpname) current score: \(p1)"
            image.image = UIImage(named: img[p1])
            fplayername.text = "Total number of games \(firstpname) won: \(fcount)"
        }
        else if(p1 < p2){
            scount = scount + 1
            splayercount.text = "\(secondpname) current score: \(p2)"
            image.image = UIImage(named: img[p2])
            splayername.text = "Total number of games \(secondpname) won: \(scount)"
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
