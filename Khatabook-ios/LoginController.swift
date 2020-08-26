//
//  LoginController.swift
//  Khatabook-ios
//
//  Created by Vikram Singh on 27/08/20.
//  Copyright © 2020 Vikram Singh. All rights reserved.
//

import SwiftUI

struct LoginController: View {
    @State private var name: String = "Tim"

    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
            Text("Hello, \(name)!")
        }
    }
    
}

struct LoginController_Previews: PreviewProvider {
    static var previews: some View {
        LoginController()
    }
}
