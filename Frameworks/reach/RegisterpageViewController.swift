//
//  RegisterpageViewController.swift
//  reach
//
//  Created by mark mayoral on 6/16/16.
//  Copyright © 2016 MDIndustries. All rights reserved.
//

import UIKit

class RegisterpageViewController: UIViewController {
    
    @IBOutlet weak var emailtextbox: UITextField!

    
    @IBOutlet weak var passwordtextbox: UITextField!
    
    @IBOutlet weak var reenterpasswordtextbox: UITextField!
    
    override func viewDidLoad() {
    super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerbuttontapped(sender: AnyObject) {
        
        let userEmail = emailtextbox.text;
        let userPassword = passwordtextbox.text;
        let userreenterpassword = reenterpasswordtextbox.text;
        
        // check for empty field
        
        //display alert message

        if(userEmail!.isEmpty || userPassword!.isEmpty || userreenterpassword!.isEmpty)
        {
            displayMyAlertMessage("All fields are required.");return;
        }
    //check if passwords match
        if(userPassword != userreenterpassword)
        {
    // display an alert message
            displayMyAlertMessage("Passwords do not match.");
            return;
        }
        
        
        
        // storing data locally this might need to change depending on the data base you would want this linked to the server site
        
    NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey:"userEmail");
    NSUserDefaults.standardUserDefaults().setObject(userPassword, forKey:"userPassword");
    NSUserDefaults.standardUserDefaults().synchronize();
        
        
        

    
        
        // display alert message with confirmation
        
      var myAlert = UIAlertController(title:"Alert", message:"Registration is complete. Thank you!", preferredStyle: UIAlertControllerStyle.Alert);
        
    let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default){ action in
            self.dismissViewControllerAnimated(true , completion:nil);
        }
        
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil);
    }
func displayMyAlertMessage(userMessage:String)
{
    var myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertControllerStyle.Alert);
    
    let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler:nil);
    
    myAlert.addAction(okAction);
    
    self.presentViewController(myAlert, animated: true , completion: nil);
    
    
}
    @IBAction func backtologin(sender: AnyObject) {
        self.performSegueWithIdentifier("backtologin", sender: self)
        
    }
    

    
}