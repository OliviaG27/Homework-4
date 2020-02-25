//
//  ViewController.swift
//  Homework 4
//
//  Created by Marlayna Verenna on 2/25/20.
//  Copyright © 2020 Marlayna Verenna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBAction func displayAlert(_ sender: Any) {
        
        // Setup the alert
        let alert = UIAlertController(title: "Welcome!", message: "This is the Home Page!", preferredStyle: .alert)
        
        // Add the action
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in }))
        
        // Display the alert
        self.present(alert,animated: true, completion: nil)
        
    }
    
    @IBAction func loginAlert(_ sender: Any) {
        
        // Design the input collection
              let ac = UIAlertController(title: "What is your username?", message: nil, preferredStyle: .alert)
              ac.addTextField()
              let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
              let answer = ac.textFields![0]
              self.usernameField.text = answer.text
                  
              // Design the second alert
              let alert = UIAlertController(title: "Welcome:", message: answer.text, preferredStyle: .alert)
              alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in}))
                  
              // Display the alert
              self.present(alert,animated: true, completion: nil)}
              ac.addAction(submitAction)
              present(ac, animated: true)
    }
    
    @IBAction func displayAlert2(_ sender: Any) {
        
        // Setup the alert
               let alert = UIAlertController(title: "Important Message", message: "Enjoy the Program!", preferredStyle: .alert)
               
               // Add the action
               alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in }))
               
               // Display the alert
               self.present(alert,animated: true, completion: nil)
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

