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
    private var _finalspeed:Int
    
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
    var finalspeed:Int {
        get { return _finalspeed }
        set(newValue) { _finalspeed = newValue }
    }
    
    init(_make:String, _model:String, _numberOfDoors:Int, _speed:Int) {
        self._make = _make
        self._model = _model
        self._numberOfDoors = _numberOfDoors
        self._speed = _speed
        self._finalspeed = _speed
    }
    
    class func create(_make:String, _model:String, _numberOfDoors:Int, _speed:Int) -> Automobile {
        return Automobile(_make: _make, _model: _model, _numberOfDoors: _numberOfDoors, _speed: _speed)
    }
    
    func increaseSpeed(speedChange:Int) {
        finalspeed += speedChange
        if (finalspeed >= 150){ finalspeed = 150 }
        else if (finalspeed <= 0){ finalspeed = 0 }
    }
    
    func dereaseSpeed(speedChange:Int) {
        finalspeed += speedChange
        if (finalspeed >= 150){ finalspeed = 150 }
        else if (finalspeed <= 0){ finalspeed = 0 }
    }
    
    func description() -> String {
        return ("Make: \(make), Model: \(model), NumDoors: \(numberOfDoors), Speed: \(finalspeed)")
    }
    
}

