//
//  SegundoUiControllerViewController.swift
//  HelloWorld
//
//  Created by Henrique Goncalves Leite on 18/10/16.
//  Copyright © 2016 Mercado Pago. All rights reserved.
//

import UIKit

class SegundoUiControllerViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            myView.backgroundColor = UIColor.green
        
        // Do any additional setup after loading the view.
        
        
        let viewProgramada :UIView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height:200 ))
        
        //Altera a cor
        viewProgramada.backgroundColor = UIColor.red
        
        view.addSubview(viewProgramada)
    
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
