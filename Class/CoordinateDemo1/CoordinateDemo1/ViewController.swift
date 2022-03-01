//
//  ViewController.swift
//  CoordinateDemo1
//
//  Created by Manyam,Siva Rama Krishna on 3/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minx = imageViewOutlet.frame.minX;
        let miny = imageViewOutlet.frame.minY;
        print(minx,miny);
        
        let maxX = imageViewOutlet.frame.maxX;
        let maxY = imageViewOutlet.frame.maxY;
        print(maxX, maxY);
        
        let midX = imageViewOutlet.frame.midX;
        let midY = imageViewOutlet.frame.midY;
        print(midX, midY);
        
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 0
        
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 796
        
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 796
        
        imageViewOutlet.frame.origin.x = 157
        imageViewOutlet.frame.origin.y = 398
        
    

    }
    
    

}

