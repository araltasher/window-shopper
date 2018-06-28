//
//  ViewController.swift
//  window-shopper
//
//  Created by Aral Tasher on 6/27/18.
//  Copyright © 2018 Aral Tasher. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Creating custom calculate Button to pop up on top of the keyboard
        let calculateBtn = UIButton(frame: CGRect(x:0, y:0, width:view.frame.size.width,height:60))
        calculateBtn.backgroundColor = #colorLiteral(red: 1, green: 0.6169779301, blue: 0.02856309712, alpha: 1)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calculateBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        //Set the custom button to pop up with the keyboard for each input
        wageTxt.inputAccessoryView = calculateBtn
        priceTxt.inputAccessoryView = calculateBtn
    }

    @objc func calculate(){
        print("We got here")
    }


}

