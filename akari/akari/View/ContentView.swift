//
//  ContentView.swift
//  akari
//
//  Created by Lasya Kambhampati on 7/31/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            NavigationView {
                
                VStack {
                    NavigationLink {
                        AkariView()
                    } label: {
                        Text("Play Akari")
                            .foregroundColor(.black)
                            .font(.system(size: 20))
                            .padding(.horizontal)
                            .padding(.vertical)
                            .background(RoundedRectangle(cornerRadius: 10).fill(.yellow).opacity(0.9))
                        
                    }
                    .offset(y: -35)
                }
                .toolbar {
                    ToolbarItem(placement:.principal) {
                        Text("ACN GAMES")
                            .font(.system(size: 30))
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.yellow)
                        
                    }
                }
                
                
                
                
            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
