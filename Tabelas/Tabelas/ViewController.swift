//
//  ViewController.swift
//  Tabelas
//
//  Created by Henrique Goncalves Leite on 21/10/16.
//  Copyright © 2016 Mercado Pago. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let clubes = [
        "Corínthians", "Palmeiras", "Santos", "São Paulo",
        "Grêmio", "Internacional", "Atlético PR", "Curitiba",
        "Figueirense", "Joinvile", "Criciúma", "Botafogo",
        "Flamengo", "Fluminense", "Vasco", "Atlético MG",
        "Cruzeiro", "Bahia", "Vitória", "Náutico", "Santa Cruz",
        "Sport"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return clubes.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")

        //let cell = tableView.cellForRow(at: indexPath)
        cell.textLabel?.text = clubes[indexPath.row]
        
        if indexPath.row < 4 {
            cell.detailTextLabel?.text = "São Paulo"
        } else {
            cell.detailTextLabel?.text = "Outros"
        }
        
        cell.imageView?.image = UIImage(named: "star")
        cell.imageView?.highlightedImage = UIImage(named: "star2")
        
        return cell
        
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        let alertController = UIAlertController.init(title: "Selecionado", message: clubes[indexPath.row], preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
        
    }
    
    
    
}

