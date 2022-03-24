//
//  SearchViewController.swift
//  StudentApp
//
//  Created by Manyam,Siva Rama Krishna on 3/24/22.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var sIdOutlet: UITextField!
    var studentFound = Student()
    
    
    var isStudent = false
    
    var studentsArray = students
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func searchButtonAction(_ sender: Any) {
        
        let enteredID = sIdOutlet.text!
        
       
        for student in studentsArray {
            if enteredID == student.sid{
               
                studentFound = student
              
                isStudent = true
                
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "StudentDetailSegue"{
            //Create a destination of type studentInfoViewController
            let destination = segue.destination as! StudentDetailViewController
            
            //if student is exists in the array, we will assign the studentObj in the destination with "studentFound"
            if isStudent {
                destination.studentObj = studentFound
            }else{
                //if the given sid is not in the array, then the student is a guest!!
                //we set the boolean in the destination as true!!
                destination.guestUser = true
            }
            
            
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
