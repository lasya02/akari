//
//  ClueView.swift
//  akari
//
//  Created by Lasya Kambhampati on 7/31/23.
//

import SwiftUI

struct ClueView: View {
    
    var row: Int
    var col: Int
    var clueValue: Int
    @State var clueCompleted: Bool
    @EnvironmentObject var dm: DataModel
    
    var body: some View {
        VStack{
            Button {
                clueCompleted.toggle()
                //should not have an action when clicked on for demonstration purposes only
            } label: {
                Text("\(clueValue)")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .frame(width: 45, height: 45)
                    //.padding(.all)
                    .background(Rectangle().fill(clueCompleted ? .green : .black))
                    .border(.black)
                //add formatting as needed
            }
            
        }
    }
}

struct ClueView_Previews: PreviewProvider {
    static var previews: some View {
        ClueView(row: 5, col: 0, clueValue: 0, clueCompleted: true)
            .environmentObject(DataModel())
    }
}
