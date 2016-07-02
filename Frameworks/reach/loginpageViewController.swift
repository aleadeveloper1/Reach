//
//  loginpageViewController.swift
//  reach
//
//  Created by mark mayoral on 6/18/16.
//  Copyright © 2016 MDIndustries. All rights reserved.
//

import UIKit

class loginpageViewController: UIViewController {
    
    @IBOutlet weak var emailtextbox: UITextField!

    @IBOutlet weak var passwordtextbox: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//I want my register button to link to my register page
    @IBAction func Registerbuttontapped(sender: AnyObject) {
        performSegueWithIdentifier("registerbuttontapped2", sender: self)
  }
      
// I want my Enter button to link to my Tabviewcontroller and only access is granted for right combination of username and password. Need to store usernames and passwords in some string from register page
        
         @IBAction func Enterbuttontapped(sender: AnyObject) {
            
        
     }
}