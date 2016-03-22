//
//  InterfaceController.swift
//  myPizzaWatch WatchKit Extension
//
//  Created by Paco Alvizo on 3/20/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var btnSiguiente: WKInterfaceButton!
    @IBOutlet var lblTamanyo: WKInterfaceLabel!
    var tamanyo: String = "Chica"
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        lblTamanyo.setText(tamanyo)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func selTamanio(value: Float) {
        tamanyo = elijeTamanyo(value)
        lblTamanyo.setText(tamanyo)
    }

    @IBAction func setTamanyo() {
        let tamanyoPizza=myPizzaTamanyo(t:tamanyo)
        pushControllerWithName("vistaMasa", context: tamanyoPizza)
    }
    
    func elijeTamanyo (value: Float)->String{
        var t: String
        switch value {
        case  1:
            t="Chica"
        case  2:
            t="Mediana"
        case  3:
            t="Grande"
        default:
            t="Chica"
        }
        return t
    }
    

}
