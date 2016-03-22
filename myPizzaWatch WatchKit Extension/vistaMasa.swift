//
//  vistaMasa.swift
//  myPizzaWatch
//
//  Created by Paco Alvizo on 3/21/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import WatchKit
import Foundation


class vistaMasa: WKInterfaceController {

    //@IBOutlet var sldMasa: WKInterfaceSlider!
    var masa: String = "Crujiente"
    @IBOutlet var lblMasa: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        let c=context as! myPizzaTamanyo
        miPizza.setTamaño(c.getTamanyo())
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        lblMasa.setText(masa)
    }

    
    @IBAction func selMasa(value: Float) {
        masa = elijeMasa(value)
        lblMasa.setText(masa)
        //miPizza.setMasa(masa)
    }
    
    @IBAction func setMasa() {
        let masaPizza = myPizzaMasa(m:masa)
        pushControllerWithName("vistaQueso", context: masaPizza)
    }
    
    
    func elijeMasa(value: Float)->String{
        var m: String
        switch value{
        case 1:
            m="Crujiente"
        case 2:
            m="Delgada"
        case 3:
            m="Gruesa"
        default:
            m="Crujiente"
        }
        return m
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
