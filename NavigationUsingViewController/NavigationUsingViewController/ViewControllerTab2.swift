//
//  ViewControllerTab2.swift
//  NavigationUsingViewController
//
//  Created by Rayan Taj on 25/10/2021.
//

import UIKit

class ViewControllerTab2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func presentButton(_ sender: UIButton) {
        
        let VC = storyboard?.instantiateViewController(withIdentifier: "Present")
        
        present(VC!, animated: true)
        
    }
    
 
    @IBAction func pushButton(_ sender: UIButton) {
     
        let VC = storyboard?.instantiateViewController(withIdentifier: "PushID")
    
        
        self.navigationController?.pushViewController(VC!, animated: true)
    
        print("Hello")
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
