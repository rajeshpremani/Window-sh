//
//  TextFieldView.swift
//  Window-Shoper
//
//  Created by Rajesh on 09/01/2019.
//  Copyright © 2019 Rajesh. All rights reserved.
//

import UIKit

@IBDesignable
class TextFieldView: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6492482505, green: 0.6492482505, blue: 0.6492482505, alpha: 0.5)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        
        currencyLbl.clipsToBounds = true
        
        let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = .current
        currencyLbl.text = formater.currencySymbol
        addSubview(currencyLbl)
        
        
    }
    override func prepareForInterfaceBuilder() {
        awakeFromNib()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        clipsToBounds = true
        textAlignment = .center
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
    }

}
