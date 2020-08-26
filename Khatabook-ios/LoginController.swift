//
//  LoginController.swift
//  Khatabook-ios
//
//  Created by Vikram Singh on 27/08/20.
//  Copyright © 2020 Vikram Singh. All rights reserved.
//

import SwiftUI

struct LoginController: View {
    
    @State private var phoneNumber = ""
    @State private var validationErrorMessage = ""
    @State private var showAlert = false
    
    var body: some View {
        ZStack{
            Color(red: 0.10, green: 0.74, blue: 0.61)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                TextField("9041866055", text: $phoneNumber)
                    .keyboardType(.phonePad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.black)
                    .padding()
                
                Button(action: {
                    self.validatePhoneNumber()
                }) {
                    Text("Submit")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(.infinity)
                    
                }
                .shadow(color: Color.blue, radius: 20, y: 5)
            }
            
            if self.showAlert {
                ErrorAlert(alert: self.$showAlert, error: self.$validationErrorMessage)
            }
        }
        
    }
    
    
    private func validatePhoneNumber(){
        
        if  phoneNumber.isEmpty {
            self.validationErrorMessage = "Please enter phone number"
            self.showAlert = true
            return
        }
        
        if(phoneNumber.count < 10){
            self.validationErrorMessage = "Phone number can't be less than 10"
            self.showAlert = true
            
            return
        }
        
        if(phoneNumber.count > 10){
            self.validationErrorMessage = "Phone number can't be greater than 10"
            self.showAlert = true
            
            return
        }
        
        //Hit api
    }
}

struct LoginController_Previews: PreviewProvider {
    static var previews: some View {
        LoginController()
    }
}
