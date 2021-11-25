//
//  ContentView.swift
//  Netflix Sign In Page
//
//  Created by Giovanna Moeller on 11/11/21.
//

import SwiftUI

struct ContentView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var emailIsEditing: Bool = false
  @State private var passwordIsEditing: Bool = false
  
  var body: some View {
    
    ZStack {
      Color(red: 23/255, green: 23/255, blue: 23/255).edgesIgnoringSafeArea(.all)
      
      VStack {
        Image("logo")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding(32)
        
        Spacer().frame(height: 64)
        
        ZStack {
          TextField("", text: $email, onEditingChanged: { changed in
            if self.email.count <= 0 {
              self.emailIsEditing = changed
            }
          })
            .padding(20)
            .foregroundColor(.white)
            .background(Color(red: 46/255, green: 46/255, blue: 46/255))
            .cornerRadius(8.0)
          if !self.emailIsEditing {
            Text("Email")
              .foregroundColor(Color(red: 116/255, green: 116/255, blue: 116/255))
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding()
          }
        }
        
        ZStack {
          TextField("", text: $password, onEditingChanged: { changed in
            if self.password.count <= 0 {
              self.passwordIsEditing = changed
            }
          })
            .padding(20)
            .foregroundColor(.white)
            .background(Color(red: 46/255, green: 46/255, blue: 46/255))
          .cornerRadius(8.0)
          if !self.passwordIsEditing {
            Text("Password")
              .foregroundColor(Color(red: 116/255, green: 116/255, blue: 116/255))
              .frame(maxWidth: .infinity, alignment: .leading)
              .padding()
          }
        }
        Spacer().frame(height: 32)
        
        Button(action: {}) {
          Text("Sign In")
            .font(.title3)
            .bold()
            .foregroundColor(Color(red: 116/255, green: 116/255, blue: 116/255))
            .padding(20)
            .frame(maxWidth: .infinity)
            .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(Color(red: 116/255, green: 116/255, blue: 116/255), lineWidth: 1.0))
        }
        
        Spacer().frame(height: 64)
        
        VStack(spacing: 16) {
          Text("Not a member yet? Start your free month!")
            .foregroundColor(.white)
          .bold()
          Text("Forgot your Password?")
            .foregroundColor(Color(red: 116/255, green: 116/255, blue: 116/255))
        }
        
      }.padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
