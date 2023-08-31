//
//  DataModel.swift
//  akari
//
//  Created by Lasya Kambhampati on 8/1/23.
//

import Foundation
import SwiftUI

class DataModel: ObservableObject{
    
    var Boxes: [[Box]] = []
    
    
    init(){
    
    }
    
    func gameComplete(){
        
    }
    
    func printOut(){
        for row in Boxes{
            for boxes in row{
                print(boxes.boxType)
            }
        }
    }
    
    func lightAdded(row: Int, col: Int){
        //when a light is added, all of the cells that can be illuminated by the light need to be yellow
        
    }
    
    func lightChecker(){
        //checks to see if the illumination needs to be changed 
    }
    
    func lightRemoved(row: Int, col: Int){
        //when a light is removed, all of the cells that were illuminated by the light need to go back to being clear
    }
    
    func clueCompleted(){
        
    }
    
    
    
    
    
    
}
