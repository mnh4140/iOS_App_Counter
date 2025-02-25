//
//  ViewController.swift
//  iOS_App_Counter
//
//  Created by NH on 2/25/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myNumber: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var restetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapPlusButton(_ sender: Any) {
        var count: Int = Int(myNumber.text!) ?? 0
        
        if count < 10 {
            minusButton.isEnabled = true
            
            count += 1
            myNumber.text = "\(count)"
            if count == 10 {
                plusButton.isEnabled = false
            }
        }
    }
    
    @IBAction func didTapMinusButton(_ sender: Any) {
        var count: Int = Int(myNumber.text!) ?? 0
        
        if count > -10 {
            plusButton.isEnabled = true
            
            count -= 1
            myNumber.text = "\(count)"
            
            if count == -10 {
                minusButton.isEnabled = false
            }
        }
    }
    
    @IBAction func didTapRestButton(_ sender: Any) {
        myNumber.text = "0"
        plusButton.isEnabled = true
        minusButton.isEnabled = true
    }
}

