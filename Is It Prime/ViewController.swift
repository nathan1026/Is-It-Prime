//
//  ViewController.swift
//  Is It Prime
//
//  Created by Nathan Bahl on 1/16/16.
//  Copyright © 2016 Nathan Bahl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
        
    @IBAction func isItPrime(sender: AnyObject) {
   
        
        // Using "if" will run code below IF an integer is entered. If not, it will not run the code. If statement is used to prevent crashing. Also, remove other exclimation point.
        
    
        if let number = Int(numberTextField.text!){
        
            var isPrime = true
        
            if number == 1{
            
            isPrime = false
                
        }
        
            if number != 2 && number != 1 {
            
            
                for var i = 2; i < number; i++ {
                    
                    if number % i == 0 {
                    
                        isPrime = false
                }
                
            }
        }
            if isPrime {
            
            resultLabel.text = "\(number) is prime! "
        } else {
            
            resultLabel.text = "\(number) is not prime "
        }
//        this is connected to if statement, leaves the user a message to enter a number
        } else {
            resultLabel.text = "Please enter a number"
        }
        
    }
    

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.redColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

