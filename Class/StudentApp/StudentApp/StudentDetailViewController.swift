//
//  StudentDetailViewController.swift
//  StudentApp
//
//  Created by Manyam,Siva Rama Krishna on 3/24/22.
//

import UIKit

class StudentDetailViewController: UIViewController {

    @IBOutlet weak var SIDOutlet: UILabel!
    
    @IBOutlet weak var emailOutlet: UILabel!
    
    @IBOutlet weak var nameOutlet: UILabel!
    
    @IBOutlet weak var courseOutlet: UIButton!
    
    var studentObj = Student()
    
    var guestUser:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if guestUser {
            //if the user is guest we will hide all the outlets and display 'Guest User'
            emailOutlet.isHidden = true
            nameOutlet.text = "No Details Found"
            SIDOutlet.isHidden = true
            courseOutlet.isHidden = true
            
        }else{
            
            //If the student is found, then we assign the values of the studentObj to the outelts
            SIDOutlet.text = "SID: " + studentObj.sid
            emailOutlet.text = "Email: " + studentObj.email
            nameOutlet.text = "Name: " + studentObj.name
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        //We need to view courses of the logged in student in CourseViewController,
        // So we pass the courses from the 'studentObj' variable
        if transition == "CourseDetailSegue" {
            let destination = segue.destination as! CourseDetailViewController
            
            //we will assign the courses to 'courseArray' in the CourseViewController
            destination.coursesArray = studentObj.courses
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
