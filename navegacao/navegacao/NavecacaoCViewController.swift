//
//  NavecacaoCViewController.swift
//  navegacao
//
//  Created by Henrique Goncalves Leite on 20/10/16.
//  Copyright © 2016 Mercado Pago. All rights reserved.
//

import UIKit

class NavecacaoCViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var labelTeste: UILabel!
    var messageReceived:String?
    
    
    override func viewWillAppear(_ animated: Bool) {
        if let valorRecebido = messageReceived {
            labelTeste.text = valorRecebido
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
