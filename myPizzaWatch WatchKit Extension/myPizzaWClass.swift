//
//  myPizzaWClass.swift
//  myPizzaWatch
//
//  Created by Paco Alvizo on 3/21/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import WatchKit

class myPizzaTamanyo: NSObject{
    private var tamanyo: String?
    
    //Constructor
    init(t:String){
        self.tamanyo=t
    }
    func getTamanyo()->String{
        return self.tamanyo!
    }
}

class myPizzaMasa: NSObject{
    private var masa: String?
    
    //Constructor
    init(m:String){
        self.masa=m
    }
    func getMasa()->String?{
        return self.masa!
    }
}

class myPizzaQueso: NSObject{
    private var queso: String?
    //Consturctor
    init(q:String){
        self.queso=q
    }
    func getQueso()->String{
        return self.queso!
    }
}

class myPizzaIngredientes: NSObject{
    private var ingredientes: [String] = []
    //Consturctor
    init (i:[String]){
        self.ingredientes=i
    }
    func getIngredientes()->[String]{
        return self.ingredientes
    }
}
    

class myPizzaWClass {
    //Atributos
    private var tamaño: String?
    private var masa: String?
    private var queso: String?
    private var ingredientes : [String] = []
    
    //métodos
    //Constructor
    /*init(t:String, m:String, q: String, i:[String]) {
        tamaño=t
        masa=m
        queso=q
        ingredientes=i
    }*/
    
    func setTamaño (tamaño:String?){
        self.tamaño=tamaño
    }
    
    func setMasa (masa:String?){
        self.masa=masa
    }
    
    func setQueso (queso:String?){
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

var miPizza = myPizzaWClass()

