//
//  main.swift
//  ParikhTiraj-hw1
//
//  Created by Parikh, Tiraj R on 1/30/17.
//  Copyright © 2017 Parikh, Tiraj R. All rights reserved.
//
import Foundation

func main() {
    
    var a1 = Automobile.create(_make: "Maserati", _model: "GranTurismo", _numberOfDoors: 2, _speed: 67)
    var a2 = Automobile.create(_make: "Honda", _model: "Accord", _numberOfDoors: 4, _speed: 128)
    var a3 = Automobile.create(_make: "Tesla", _model: "S 90", _numberOfDoors: 2, _speed: 35)
    
    
    /*func randomValueBetween(min:UInt32, max:UInt32) -> Int {
     var randomValue:UInt32 = min + arc4random_uniform(UInt32(max - min + 1))
     return Int(randomValue)
     }
     */
    
    func randomValueBetween(min:Int, max:Int) -> Int{
        let randomValue:Int = min + max
        return randomValue
    }
    
    for index in 0 ..< 10 {
        a1.increaseSpeed(speedChange:randomValueBetween(min:0, max:16))
        a2.increaseSpeed(speedChange:randomValueBetween(min:0, max:16))
        a3.increaseSpeed(speedChange:randomValueBetween(min:0, max:16))
    }
    
    print("\(a1.description())")
    print("\(a2.description())")
    print("\(a3.description())")
    
    if(a1.finalspeed > a2.finalspeed && a1.finalspeed > a3.finalspeed){
        print("\(a1.make) \(a1.model) won!!")
    }
        
    else if(a2.finalspeed > a1.finalspeed && a2.finalspeed > a3.finalspeed){
        print("\(a2.make) \(a2.model) won!!")
    }
        
    else if(a3.finalspeed > a2.finalspeed && a3.finalspeed > a1.finalspeed){
        print("\(a3.make) \(a3.model) won!!")
    }
        
    else { print("There was a tie!") }
    
}

main()
