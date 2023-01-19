//
//  GreetingViewController.swift
//  MV-X-Patterns
//
//  Created by Nikolay Trofimov on 19.01.2023.
//

import UIKit


class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        person = Person(name: "Tim", surname: "Cook")
        
    }

    @IBAction func showGreetingPressed() {
        greetingLabel.text = "Hello, \(person.name) \(person.surname)!"
    }
    
}

