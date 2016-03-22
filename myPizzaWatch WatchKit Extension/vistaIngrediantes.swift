//
//  vistaIngrediantes.swift
//  myPizzaWatch
//
//  Created by Paco Alvizo on 3/21/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import WatchKit
import Foundation


class vistaIngrediantes: WKInterfaceController {

    @IBOutlet var lblCantIngredientes: WKInterfaceLabel!
    @IBOutlet var pickIngredientes: WKInterfacePicker!
    @IBOutlet var lblSalida: WKInterfaceLabel!

    var cantIngredientes : Int = 0
    var ingredientes = [String]()
    var ingrediente :String=""

    
    var itemList:[(String)]=[
        ("Selecciona"),
        ("Jamón"),
        ("Peperoni"),
        ("Salchicha"),
        ("Champignones"),
        ("Piña"),
        ("Salami"),
        ("Pimiento"),
        ("Cebolla"),
        ("Aceitunas"),
        ("Chorizo"),
    ]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c=context as! myPizzaQueso
        miPizza.setQueso(c.getQueso())
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        lblSalida.setText("")
        lblCantIngredientes.setText("0")
        
        let pickerItems: [WKPickerItem] = itemList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            return pickerItem
        }
        pickIngredientes.setItems(pickerItems)
        //pickIngredientes.setValue(0, forKey: "Selecciona")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func selIngredientes(value: Int) {
            ingrediente = itemList[value]
    }
    
    @IBAction func agregarIngrediente() {
        if (ingrediente != "" && ingrediente != "Selecciona"){
            if (!ingredientes.contains(ingrediente) && cantIngredientes < 5){
                ingredientes.append(ingrediente)
                cantIngredientes++
                lblCantIngredientes.setText(String(ingredientes.count))
                muestraLista(ingredientes)
               // muestraIngredienteLista(ingrediente, p: ingredientes.count)
                
            }else{
                //Código que muestra que el ingrediente ya fue elegido
            }
        }
    }
    
    @IBAction func eliminarIngrediente() {
        if (ingredientes.contains(ingrediente)){
            ingredientes.removeAtIndex(ingredientes.indexOf(ingrediente)!)
            cantIngredientes--
            lblCantIngredientes.setText(String(ingredientes.count))
            muestraLista(ingredientes)
           // eliminaIngredienteLista(ingredientes.count)
        }
    }
    
    func muestraLista (ingredientes: [String]){
        var cadenaSalida: String = ""
        let salto: String = "\n"
        for(var i = 0; i < ingredientes.count; i++){
            cadenaSalida = cadenaSalida + ingredientes[i] + salto
        }
        lblSalida.setText(cadenaSalida)
    }

    @IBAction func setIngredientes() {
        if cantIngredientes==0{
            lblSalida.setText("Debes ejegir\nal menos\nun ingrediente")
        }else{
            let ingredientesPizza=myPizzaIngredientes(i:ingredientes)
            pushControllerWithName("vistaConfirmar", context: ingredientesPizza)
        }
    }
    
    


}
