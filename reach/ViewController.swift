//
//  ViewController.swift
//  reach
//
//  Created by mark mayoral on 6/14/16.
//  Copyright © 2016 MDIndustries. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var myactivityindicator: UIActivityIndicatorView!
    
    @IBOutlet weak var welcomelabel: UILabel!
    
    @IBOutlet weak var loginbutton: UIButton!
   
    @IBOutlet weak var registerbutton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
FBSDKLoginButton; *loginButton = [[FBSDKLoginButton alloc] init;];
        
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    
    
    @IBAction func registerbuttontapped(sender: AnyObject) {
        
        self.myactivityindicator.startAnimating();
        self.myactivityindicator.hidden = false;
        welcomelabel.hidden = false
        loginbutton.hidden = true
        registerbutton.hidden = true
        self.myactivityindicator.center = self.view.center;
        self.performSegueWithIdentifier("registerkeytappedhomepage", sender: self)
       
    }
    
    @IBAction func loginbuttontapped(sender: AnyObject) {
        
        self.myactivityindicator.startAnimating();
        self.myactivityindicator.hidden = false;
        
        welcomelabel.hidden = false
        loginbutton.hidden = true
        registerbutton.hidden = true
        self.myactivityindicator.center = self.view.center;
    
    

        self.performSegueWithIdentifier("hometologin", sender: self)  }
    
}


