//
//  ChangeColor.swift
//  Window-Shopper
//
//  Created by MacBook Pro on 12/2/18.
//  Copyright © 2018 Diaa SAlAm. All rights reserved.
//

import UIKit
@IBDesignable


class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x:5, y: (frame.size.height / 2) - size / 2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4279751712)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.clipsToBounds = true
        currencyLbl.layer.cornerRadius = 5.0
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
        
        
    }
    
    override func prepareForInterfaceBuilder() {
       customizView()
    }
    
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        customizView()
    }
    func customizView() {
        layer.cornerRadius = 5
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.4)
        textAlignment = .center
        clipsToBounds = true
    
}
}
