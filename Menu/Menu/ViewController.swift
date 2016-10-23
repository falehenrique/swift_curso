//
//  ViewController.swift
//  Menu
//
//  Created by Henrique Goncalves Leite on 19/10/16.
//  Copyright © 2016 Mercado Pago. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    @IBOutlet weak var labelEmail: UILabel!
    
    @IBOutlet weak var labelID: UILabel!
    
    @IBOutlet weak var buttonClear: UIBarButtonItem!
    
    var swiftTimer = Timer()
    var swiftCounter = 0
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let userName = UserDefaults.standard.value(forKey: "UserFacebook") as? String{
            labelEmail.text = "User name :\(userName)"
        }
        
        if let userID = UserDefaults.standard.value(forKey: "UserID") as? String {
            labelID.text = "User Id: \(userID)"
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func logoffFacebook(_ sender: AnyObject) {
        
        let loginManager = FBSDKLoginManager()
        loginManager.logOut()
        
        self.dismiss(animated: true, completion: nil)
        
    }

    @IBAction func gesture(_ sender: AnyObject) {
        
        if swiftTimer.isValid {
            stop(sender)
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play(_ sender: AnyObject) {
        
        swiftTimer.invalidate()
        
        swiftTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateCounter), userInfo: nil, repeats: true)
        
        
        buttonClear.isEnabled = false
        
        
    }

    func updateCounter()  {
        swiftCounter += 1
        label.text = String(swiftCounter)
    }
    
    @IBAction func clear(_ sender: AnyObject) {
        label.text = ""
        swiftTimer.invalidate()
        swiftCounter = 0
        
    }
    

    @IBAction func stop(_ sender: AnyObject) {
         swiftTimer.invalidate()
           buttonClear.isEnabled = true
    }
    
    
}

