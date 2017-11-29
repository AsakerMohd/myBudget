//
//  WelcomeViewController.swift
//  myBudget
//
//  Created by Mohamad Asaker on 2017-03-07.
//  Copyright © 2017 AsakerMohd. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var backgroundImage: UIImageView!
    
    
    //Function to add color in hexadecimal form
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    @IBAction func unwindToHomeScreen(segue:UIStoryboardSegue){
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        //Background Image for this view
        backgroundImage.image = UIImage(named: "garden")
        backgroundImage.alpha = 0.5
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
