//
//  main.swift
//  ParikhTiraj-hw1
//
//  Created by Parikh, Tiraj R on 1/30/17.
//  Copyright © 2017 Parikh, Tiraj R. All rights reserved.
//

import Foundation

func main() {
    
    var a1:Automobile = Automobile.create(_make: "Maserati", _model: "GranTurismo", _numberOfDoors: 2, _speed: 67)
    var a2:Automobile = Automobile.create(_make: "Honda", _model: "Accord", _numberOfDoors: 4, _speed: 128)
    var a3:Automobile = Automobile.create(_make: "Tesla", _model: "S 90", _numberOfDoors: 2, _speed: 35)
    
    func randomValueBetween(min:UInt32, max:UInt32) -> UInt32 {
        let randomValue:UInt32 = min + arc4random_uniform(UInt32(max - min + 1))
        return randomValue
    }
    
    for index in 0 ..< 10 {
        al.Automobile:increaseSpeed(randomValueBetween(min:0, max:16))
    
    }
    
    

    
}

main()
