//
//  myPizzaClass.swift
//  myPizzaWatch
//
//  Created by Paco Alvizo on 3/20/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import Foundatione

class MyPizza{
    //Atributos
    private var tamaño: String?
    private var masa: String?
    private var queso: String?
    private var ingredientes : [String] = []
    
    //métodos
    func setTamaño (tamaño:String){
        self.tamaño=tamaño
    }
    
    func setMasa (masa:String){
        self.masa=masa
    }
    
    func setQueso (queso:String){
        self.queso=queso
    }
    
    func setIngredientes(ingredientes:[String]){
        self.ingredientes=ingredientes
    }
    
    func getTamaño () -> String{
        return self.tamaño!
    }
    
    func getMasa()->String{
        return self.masa!
    }
    
    func getQueso()->String{
        return self.queso!
    }
    
    func getIngredientes()->[String]{
        return self.ingredientes
    }
    
    func removeIngredientes(){
        ingredientes.removeAll()
    }
    
}

//Declaramos este objeto donde se depositarán las características del pedido.
var pizza = MyPizza()