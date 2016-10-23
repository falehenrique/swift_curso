//
//  TerceiraAulaViewController.swift
//  HelloWorld
//
//  Created by Henrique Goncalves Leite on 19/10/16.
//  Copyright © 2016 Mercado Pago. All rights reserved.
//

import UIKit

class TerceiraAulaViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var texto: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //texto.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enviar(_ sender: AnyObject) {
        
        if validaTexto() {
            label.text = texto.text
        }
    }
    
    func validaTexto () -> Bool {
    
        guard (texto.text?.characters.count)! > 5 else {
            
            let alertController = UIAlertController.init(title: "Hello", message: "Meu primeiro app só que não", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
            
            return false
        }
        return true
        
    }
    
    // quando clicar no enter
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        return validaTexto()
    }
    
    //Informa que a view pode aceitar gestos
    override var canBecomeFirstResponder: Bool{
        return true
    }
    
    // MARK: text field delegates
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        enviar(button)
        
        // Dispensa o teclado
        textField.resignFirstResponder()

        return true;
    }
    
    //MARK: Tratamento de Gestos
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //dispensar o teclado
        self.becomeFirstResponder()
    }
    
}
