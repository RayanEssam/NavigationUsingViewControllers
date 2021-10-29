//
//  ViewController.swift
//  NavigationUsingViewController
//
//  Created by Rayan Taj on 24/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var varTextField: UITextField!
    static var message = "Welcome, "
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// This function will be trigger when the Present button is clicked
    @IBAction func PresentActionButton(_ sender: Any) {
        
//        let VC = storyboard?.instantiateViewController(withIdentifier: "Present")
//
//        present(VC!, animated: true)
//
//
        
    }

// This function will be trigger when the push button is clicked
    @IBAction func PushActionButton(_ sender: Any) {
        
//        let VC = storyboard?.instantiateViewController(withIdentifier: "Push")
//
//
//        self.navigationController?.pushViewController(VC!, animated: true)
//
        
    }
    
    
// This function wil be trigger when the sed a value (code) button is clicked

    @IBAction func sendVariableInNewPageButton(_ sender: UIButton) {
        
        // Take the text from the text field and assign it to the message
        ViewController.message += varTextField.text!
        
        // create a ViewController object as ViewControllerPushWithVariable (The page we want to open and send value to)
        let VC = storyboard?.instantiateViewController(withIdentifier: "pushVar") as! ViewControllerPushWithVariable
        // we can reach the variables inside the VC
        // tip. dont try to change a ui elemnt directly from here, instad use a intermediate variable (in this case myText)
        VC.myText = ViewController.message
        
        // Push to the desired page
        self.navigationController?.pushViewController(VC, animated: true)
        
        // you can ignore that :)
        ViewController.message = "Welcome, "
        
    }
   
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let id = segue.identifier
        ViewController.message += varTextField.text!
        
        if id == "SegueVar" {
            
            let vc = segue.destination as! ViewControllerPushWithVariable
            
          
            vc.myText +=   ViewController.message
        }
        ViewController.message = "Welcome, "
    }
    
}

