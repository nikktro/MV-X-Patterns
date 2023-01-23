//
//  GreetingViewController.swift
//  MV-X-Patterns
//
//  Created by Nikolay Trofimov on 19.01.2023.
//

import UIKit


class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var viewModel: GreetingViewModelProtocol! {
        didSet {
            viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person = Person(name: "Tim", surname: "Cook")
        viewModel = GreetingViewModel(person: person)
    }

    @IBAction func showGreetingPressed() {
        viewModel.showGreeting()
    }
    
}

