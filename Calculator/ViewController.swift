//
//  ViewController.swift
//  Calculator
//
//  Created by Bilal Yalcin on 12.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSonuc: UILabel!
    var sayi1 : Int = 0
    var sayi2 : Int = 0
    var sonuc : Int = 0
    var islem : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSonuc.text = ""
    }

    @IBAction func button7(_ sender: UIButton) {
        labelSonuc.text = labelSonuc.text! + "7"
    }
    @IBAction func button8(_ sender: UIButton) {
        labelSonuc.text = labelSonuc.text! + "8"
    }
    @IBAction func button9(_ sender: UIButton) {
        labelSonuc.text = labelSonuc.text! + "9"
    }
    @IBAction func button4(_ sender: UIButton) {
        labelSonuc.text = labelSonuc.text! + "4"
    }
    @IBAction func button5(_ sender: UIButton) {
        labelSonuc.text = labelSonuc.text! + "5"
    }
    @IBAction func button6(_ sender: UIButton) {
        labelSonuc.text = labelSonuc.text! + "6"
    }
    @IBAction func button1(_ sender: UIButton) {
        labelSonuc.text = labelSonuc.text! + "1"
    }
    @IBAction func button2(_ sender: UIButton) {
        labelSonuc.text = labelSonuc.text! + "2"
    }
    @IBAction func button3(_ sender: UIButton) {
        labelSonuc.text = labelSonuc.text! + "3"
    }
    @IBAction func button0(_ sender: UIButton) {
        labelSonuc.text = labelSonuc.text! + "0"
    }
    @IBAction func buttonSifirla(_ sender: UIButton) {
        temizle()
    }
    
    func temizle() {
        labelSonuc.text = ""
    }
    
    @IBAction func buttonCarpma(_ sender: UIButton) {
        islem = "*"
        sayi1 = Int(labelSonuc.text!)!
        temizle()
    }
    
    @IBAction func buttonBolme(_ sender: UIButton) {
        islem = "/"
        sayi1 = Int(labelSonuc.text!)!
        temizle()
    }
    @IBAction func buttonEksi(_ sender: UIButton) {
        islem = "-"
        sayi1 = Int(labelSonuc.text!)!
        temizle()
    }
    
    @IBAction func buttonTopla(_ sender: UIButton) {
        islem = "+"
        sayi1 = Int(labelSonuc.text!)!
        temizle()
    }
    
    @IBAction func buttonEsittir(_ sender: UIButton) {
        sayi2 = Int(labelSonuc.text!)!
        
        switch islem {
        case "+" :
            sonuc = sayi1 + sayi2
            labelSonuc.text = String(sonuc)
        case "/" :
            sonuc = sayi1 / sayi2
            labelSonuc.text = String(sonuc)
        case "*" :
            sonuc = sayi1 * sayi2
            labelSonuc.text = String(sonuc)
        case "-" :
            sonuc = sayi1 -  sayi2
            labelSonuc.text = String(sonuc)
            
        default :
            labelSonuc.text = ""
        }
    }
    

    
}

