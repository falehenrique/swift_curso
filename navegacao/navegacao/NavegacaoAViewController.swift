//
//  NavegacaoAViewController.swift
//  navegacao
//
//  Created by Henrique Goncalves Leite on 20/10/16.
//  Copyright © 2016 Mercado Pago. All rights reserved.
//

import UIKit

class NavegacaoAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func exibirC(_ sender: AnyObject) {
        
        self.performSegue(withIdentifier: "showViewC", sender: self)
        
    }
    
    //Função não obrigatória disparada automáticamente,
    //sempre que um comando perfomeSegue é executado
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showViewC" {
            let destinationViewController = segue.destination as! NavecacaoCViewController
            
            destinationViewController.messageReceived = "Mensagem enviada"
        }
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
