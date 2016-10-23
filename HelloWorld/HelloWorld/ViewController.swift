//
//  ViewController.swift
//  HelloWorld
//
//  Created by Henrique Goncalves Leite on 17/10/16.
//  Copyright © 2016 Mercado Pago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var labelEmoticons: UILabel!
    let emoji = EmojiData()
    
    @IBAction func enviar(_ sender: AnyObject) {
        showFortune()
    }
    
    func showFortune() {
        let peopleIndex = emoji.pessoas.count.random()
        
        let natorezaIndex = emoji.natureza.count.random()
        
        let objetosIndex = emoji.objetos.count.random()
    
        
        labelEmoticons.text = "\(emoji.pessoas[peopleIndex]) \(emoji.natureza[natorezaIndex]) \(emoji.objetos[objetosIndex])"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Entrou nessa função \(#function)")
    }

    override func viewDidAppear(_ animated: Bool) {
        print("Entrou nessa função \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Entrou nessa função \(#function)")
    }
    
    @IBAction func actionButton(_ sender: AnyObject) {
        print("Chegou aqui")
        
        //Exibe Hello World
        
        let alertController = UIAlertController.init(title: "Hello", message: "Meu primeiro app só que não", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

