//
//  ViewController.swift
//  Window-Shopper
//
//  Created by MacBook Pro on 12/2/18.
//  Copyright © 2018 Diaa SAlAm. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var wage: CurrencyTxtField!
    
    @IBOutlet weak var itemPrice: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButon = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcButon.backgroundColor = #colorLiteral(red: 0.9884597081, green: 0.6085785927, blue: 0.266681299, alpha: 1)
        
        calcButon.setTitle("Calculate", for: .normal)
        
        calcButon.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcButon.addTarget(self, action: #selector(MainVC.Calculate), for:.touchUpInside)
        
        wage.inputAccessoryView = calcButon
        
        itemPrice.inputAccessoryView = calcButon
        
        resultLbl.isHidden = true
        
        hoursLbl.isHidden = true
    }
 
    @objc func Calculate () {
        if let wage = wage.text , let itemPrice = itemPrice.text {
            if let wagetxt = Double(wage), let price = Double(itemPrice)  {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHoure(forWage: wagetxt, andPrice: price))"
            }
        }
        
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        
        resultLbl.isHidden = true
        
        hoursLbl.isHidden = true
        
        wage.text = ""
        
        itemPrice.text = ""
    }
}

