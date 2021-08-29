//
//  ContentView.swift
//  eden
//
//  Created by Christine Yang and Stewert Morales on 8/6/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showMap = false
    
    var body: some View {
        if showMap {
            MapView()
        } else {
            VStack {
                Spacer()
                
                HStack {
                    Button("Home", action: {
                        print("home")
                    })
                    
                    Button("Restaurant", action:
                        restaurantButton
                    )
                    
                    Button("Friends", action: {
                        print("friends")
                    })
                }
                
                Spacer()
                
                Image("edenlogo")
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 200, maxWidth: 1, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 200, maxHeight: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 7)
                
                Text("Welcome to EDEN, a social application for planning your next restaurant gathering.")
                    .multilineTextAlignment(.center)
                    .padding(.all, 40.0)
                
                HStack {
                    VStack {
                        Text("Create An Account!")
                        
                        Button("Sign In", action: {
                            print("sign in")
                        })
                    }
                    
                    VStack {
                        Text("Have An Account!")
                        
                        Button("Log In", action: {
                            print("log in")
                        })
                    }
                }
                
                Spacer()
            }
        }
    }
    
    func restaurantButton() {
        showMap = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
