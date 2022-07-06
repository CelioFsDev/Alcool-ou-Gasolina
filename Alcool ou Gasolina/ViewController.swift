//
//  ViewController.swift
//  Alcool ou Gasolina
//
//  Created by Celio Ferreira on 12/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoResultado: UILabel!
    @IBOutlet weak var precoAlcoolCampo: UITextField!
    @IBOutlet weak var precoGasolinaCampo: UITextField!
    
    @IBAction func buttonGerar(_ sender: Any) {
        
        if let precoAlcool = precoAlcoolCampo.text {
            if let precoGasolina = precoGasolinaCampo.text {
                
                //Validar valores digitados
                //Self para indicar uQe estamos utilizando um metodo ou atributo desta classe
               let validaCampos = self.validarCampos(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
               
                if validaCampos{
                    //calcular melhor combustivel
                    self.calcularMelhorPreco(precoAlcool: precoAlcool, precoGasolina: precoGasolina)
                }else{
                    textoResultado.text = "Digite Os Preços corretamente para calcular o melhor combustivel"
                }
        }
    }
}
    
    
    func validarCampos(precoAlcool: String, precoGasolina: String) -> Bool{
        
        var camposValidados = true
        
        if precoAlcool.isEmpty {
            camposValidados = false
            
        }else if precoGasolina.isEmpty {
            camposValidados = false
        }
        
        return camposValidados
        
    }
    
    //FAÇO DEPOIS QUE TERMINAR A VERIFICAÇÃO E VALIDAÇÃO
    func calcularMelhorPreco(precoAlcool: String, precoGasolina: String){
        //Converter valores textos para numeros
        if let valorAlcool = Double(precoAlcool){
            if let valorGasolina = Double(precoGasolina){
                
                /*
                 Faz calculo (precoAlcool / precoGasolina)
                 Se o  resultado for >= 0.7 melhor utilizar gasolina
                 se nao melhor alcool
                 */
                let resultadoPreco = valorAlcool / valorGasolina
                if resultadoPreco >= 0.7 {
                    self.textoResultado.text = "É Melhor utilizar gasolina"
                }else{
                    self.textoResultado.text = "É melhor utilizar o alcool"
                }
                
            }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}


//Teste de github
