//
//  ViewController.swift
//  TableViewProject
//
//  Created by Student on 07/01/2019.
//  Copyright © 2019 Artur sp.zoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let cellIdentifier = "cellId"
    lazy var lista : [Person] = {
        var lista2 : [Person] = []
        for i in 0...10{
            lista2.append(Person(name: "Osoba \(i)", surname: "Nazwisko \(i)" ))
        }
        return lista2
    }()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSecond" {
            let dest = segue.destination as? SecondViewController
            
            let osoba = lista[(tableView.indexPathForSelectedRow?.row)!]
            dest?.nameVar = osoba.name
            dest?.surnameVar = osoba.surname
        }
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let osoba = lista[indexPath.row]
        cell.textLabel?.text = osoba.name
        cell.detailTextLabel?.text = osoba.surname
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showSecond", sender: nil)
    }
}

