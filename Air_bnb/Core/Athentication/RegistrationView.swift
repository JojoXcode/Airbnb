//
//  RegistrationView.swift
//  Air_bnb
//
//  Created by Jojo on 10.08.23.
//

import SwiftUI

struct SecureTextField2: View {
    @State private var isSecureField: Bool = true
    @Binding var text: String
    var body: some View {
        HStack {
            if isSecureField {
                SecureField("Password", text: $text)
            } else {
                TextField(text, text: $text)
            }
        }
        Image (systemName: isSecureField ? "eye.slash": "eye")
            .foregroundColor(.blue)
            .onTapGesture {
                isSecureField.toggle()
            }
        }
    }

struct RegistrationView: View {
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var gender: String = ""
    @State private var username:String = ""
    @State private var password: String = ""
    @State private var correctPasswort = ""
    let themes = ["Male", "Female", "Miscellaneous"]
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Text("Airbnb")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .bold()
                VStack{
                    HStack{
                        TextField("Name", text: $name)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                        TextField("Age", text: $age)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .frame(width: 80)
                            .keyboardType(.numberPad)}
                    .padding(.vertical, 0)
                    
                    HStack{
                        Text("Gender")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .background(Color.red)
                            
                            Spacer()
                                Picker("Gender", selection: $gender) {
                                    ForEach(themes, id: \.self) {
                                        Text($0)
                                    }
                                }.background(Color.white)
                            .cornerRadius(10)
                            .foregroundColor(.black)
                            }
                        TextField("Username", text: $username)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    HStack{
                        SecureTextField2(text: $password)
                    }.padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    TextField("Corrent Password", text: $correctPasswort)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                    NavigationLink {
                        N_Bar()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Sign in")
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .bold()
                    }
                   Spacer()
                        .frame(height: 200)
                    NavigationLink(destination: {
                        LoginView()
                            .navigationBarBackButtonHidden()
                    }, label: {
                        HStack{
                            Text("Login")
                            Image(systemName: "arrow.right.circle")
                        }
                    }).foregroundColor(.blue)
                        .font(.system(size: 16))
                }
                
            }.padding()
                .background(Color.red)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
