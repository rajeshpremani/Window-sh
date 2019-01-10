//
//  ViewController.swift
//  Window-Shoper
//
//  Created by Rajesh on 09/01/2019.
//  Copyright © 2019 Rajesh. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wegeTxt: TextFieldView!
    @IBOutlet weak var priceTxt: TextFieldView!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calBtn.setTitle("Calculate", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wegeTxt.inputAccessoryView = calBtn
        priceTxt.inputAccessoryView = calBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    
    @IBAction func clearBtnPressed(_ sender: Any) {
        resultLbl.text = ""
        hoursLbl.text = ""
        wegeTxt.text = ""
        priceTxt.text = ""
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate(){
        if let wegeTxt = wegeTxt.text, let priceTxt = priceTxt.text {
            if let wege = Double(wegeTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wege.getHours(forWege: wege, andPrice: price))"
                
            }
        }
    }

}

