//
//  ViewsUsingCodeVC.swift
//  NavigationUsingViewController
//
//  Created by Rayan Taj on 25/10/2021.
//

import UIKit

class ViewsUsingCodeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
//        label.center = CGPoint(x: 160, y: 285)
//        label.textAlignment = .center
//        label.text = "I'm a test label"
//        self.view.addSubview(label)
        
        let screenSize: CGRect = UIScreen.main.bounds
        
        var screenWidth = screenSize.width;
        var screenHeight = screenSize.height;
        
        var counter = 1
        let useX = Int(screenWidth/10)
        let useY = Int(screenHeight/10)
        
        for i in 0 ..< 10 {
            
            for j in 0 ..< 10{
                
                let label = UILabel(frame: CGRect(x: j * Int(screenWidth/10)
                                                  , y: i * Int(screenHeight/10),  width:Int(screenWidth/10), height: Int(screenHeight/10)))
                               label.text = "\(counter)"
                label.adjustsFontSizeToFitWidth = true
                             label.textAlignment = .center
                               self.view.addSubview(label)
                               counter+=1
            }
           print(counter)
        
            
        }
        
        
//        for i in 0 ..< Int(screenHeight/85) {
//
//            for j in 0 ..< Int(screenWidth/40){
//
//                let label = UILabel(frame: CGRect(x: j*40, y: i*70,  width: 50, height: 230))
//                               label.text = "\(counter)"
//                             label.textAlignment = .center
//                               self.view.addSubview(label)
//                               counter+=1
//            }
//           print(counter)
//
//
//        }
        

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
