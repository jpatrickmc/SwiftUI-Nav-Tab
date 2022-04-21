//
//  LoginView.swift
//  SwiftUI-Nav-Tab
//
//  Created by JP McDaniel on 4/20/22.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: MainView(), label: {
                    Text("Login")
                        .bold()
                        .frame(width: 280, height: 40, alignment: .center)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                })
            }
            .offset(y: -60)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
