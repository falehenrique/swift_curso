//
//  ViewController.swift
//  navegacao
//
//  Created by Henrique Goncalves Leite on 20/10/16.
//  Copyright © 2016 Mercado Pago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("entrou aqui 1")
        view.backgroundColor = UIColor.red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("entrou aqui")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

