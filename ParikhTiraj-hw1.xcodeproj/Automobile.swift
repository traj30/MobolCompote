//
//  Automobile.swift
//  ParikhTiraj-hw1
//
//  Created by Parikh, Tiraj R on 1/30/17.
//  Copyright © 2017 Parikh, Tiraj R. All rights reserved.
//

import Foundation

class Automobile {
    
    private var _make:String
    private var _model:String
    private var _numberOfDoors:Int
    private var _speed:Int
    
    var make:String {
        get { return _make }
        set(newValue) { _make = newValue }
    }
    var model:String {
        get { return _model }
        set(newValue) { _model = newValue }
    }
    var numberOfDoors:Int {
        get { return _numberOfDoors }
        set(newValue) { _numberOfDoors = newValue }
    }
    var speed:Int {
        get { return _speed }
    }
    
    init(_make:String, _model:String, _numberOfDoors:Int, _speed:Int) {
        self._make = _make
        self._model = _model
        self._numberOfDoors = _numberOfDoors
        self._speed = _speed
    }
    
    class func create(_make:String, _model:String, _numberOfDoors:Int, _speed:Int) -> Automobile {
        return Automobile(_make: _make, _model: _model, _numberOfDoors: _numberOfDoors, _speed: _speed)
    }
    
    func randomValueBetween(min:UInt32, max:UInt32) -> UInt32 {
        let randomValue:UInt32 = min + arc4random_uniform(UInt32(max - min + 1))
        return randomValue
    }
    
    func increaseSpeed(speedChange:Int) -> Int {
        speedChange += randomValueBetween(min: 0, max:150)
        if (speedChange >= 150){ return 150 }
        else if (speedChange <= 0){ return 0 }
        else { return speedChange }
    }
    
    func decreaseSpeed(speedChange:Int) -> Int {
        speedChange += randomValueBetween(min: 0, max:150)
        if (speedChange >= 150){ return 150 }
        else if (speedChange <= 0){ return 0 }
        else { return speedChange }
    }
    
    func description() -> String {
        return "Make: \(make), Model: \(model), NumDoors: \(numberOfDoors), Speed: \(speed)"
    }
    
}

