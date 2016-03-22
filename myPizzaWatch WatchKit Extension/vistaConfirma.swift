//
//  vistaConfirma.swift
//  myPizzaWatch
//
//  Created by Paco Alvizo on 3/21/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import WatchKit
import Foundation


class vistaConfirma: WKInterfaceController {

    @IBOutlet var lblSalida: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c=context as! myPizzaIngredientes
        miPizza.setIngredientes(c.getIngredientes())
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        lblSalida.setText(muestraPedido())
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func muestraPedido () ->String{
        var salida: String
        var cadIngredientes: String
        salida = "Este es tu pedido:\nTamaño: \(miPizza.getTamaño())\n" +
                "Masa: \(miPizza.getMasa())\n" +
                "Queso: \(miPizza.getQueso())\n"
        cadIngredientes = "Ingredientes:\n"
        for (var i:Int = 0; i < miPizza.getIngredientes().count; i++ ){
            cadIngredientes = cadIngredientes + miPizza.getIngredientes()[i] + "\n"
        }
        salida = salida + cadIngredientes
        return salida
    }

}
