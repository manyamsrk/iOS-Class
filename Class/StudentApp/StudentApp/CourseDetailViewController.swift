//
//  CourseDetailViewController.swift
//  StudentApp
//
//  Created by Manyam,Siva Rama Krishna on 3/24/22.
//

import UIKit

class CourseDetailViewController: UIViewController {

    @IBOutlet weak var courseOutlet: UILabel!
    var coursesArray:[Course] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        for course in coursesArray {
            courseOutlet.text = courseOutlet.text! + course.title + "-" + course.sem + "\n"
        }
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
