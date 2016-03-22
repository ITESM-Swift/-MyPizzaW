//
//  vistaQueso.swift
//  myPizzaWatch
//
//  Created by Paco Alvizo on 3/21/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import WatchKit
import Foundation


class vistaQueso: WKInterfaceController {

    @IBOutlet var lblQueso: WKInterfaceLabel!
    @IBOutlet var menuQuesos: WKInterfacePicker!
    var queso: String="Sin queso"
    var itemList: [(String)]=[
        ("Sin queso"),
        ("Mozarella"),
        ("Parmesano"),
        ("Manchego")]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c=context as! myPizzaMasa
        miPizza.setMasa(c.getMasa())
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        lblQueso.setText(queso)
        let pickerItems: [WKPickerItem] = itemList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        menuQuesos.setItems(pickerItems)

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func setQueso() {
        let quesoPizza = myPizzaQueso(q: queso)
        pushControllerWithName("vistaIngredientes", context: quesoPizza)
    }

    
    @IBAction func selQueso(value: Int) {
        queso=itemList[value]
        lblQueso.setText(queso)
      //  miPizza.setQueso(queso)
    }


    
}
