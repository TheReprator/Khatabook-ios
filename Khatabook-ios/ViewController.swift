//
//  ViewController.swift
//  Khatabook-ios
//
//  Created by Vikram Singh on 26/08/20.
//  Copyright © 2020 Vikram Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func submitPhoneNumber(_ sender: Any) {
        
        let phoneNumber = phoneTextField.text
    
        let validationCallBack = {
           
        }
        
        if phoneNumber == nil || phoneNumber!.isEmpty {
            showAlertDialog(message: "Please enter phone number", callback: validationCallBack)
            return
        }
        
        if(phoneNumber!.count > 10){
            showAlertDialog(message: "Phone number can't be greater than 10", callback: validationCallBack)
            return
        }
        
        
        //Hit Api
    }
    
    
    private func showAlertDialog(message: String, callback: @escaping () -> Void){
        let alertController = UIAlertController(title: "Validation Error", message: message, preferredStyle: .alert)
        
        
        alertController.addAction(UIAlertAction(title: "Ok", style: .default,
        handler: { action in
            callback()
        }))
        
        self.present(alertController, animated: true)
    }
}

