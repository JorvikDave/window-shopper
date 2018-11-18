//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Dave Marshall on 17/11/2018.
//  Copyright © 2018 Jorvik Solutions Ltd. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: ((frame.size.height / 2) - size / 2), width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.9394187414, green: 0.9394187414, blue: 0.9394187414, alpha: 0.394118618)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customiseView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customiseView()
        
    }

    func customiseView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.253631162)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
