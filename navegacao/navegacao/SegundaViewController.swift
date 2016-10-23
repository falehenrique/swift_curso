//
//  SegundaViewController.swift
//  navegacao
//
//  Created by Henrique Goncalves Leite on 20/10/16.
//  Copyright © 2016 Mercado Pago. All rights reserved.
//

import UIKit

class SegundaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func exibirViewD(_ sender: AnyObject) {
        
        
        let vd = self.storyboard?.instantiateViewController(withIdentifier: "viewD")
        
        self.show(vd!, sender: self)
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
