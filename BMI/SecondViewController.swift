//
//  SecondViewController.swift
//  BMI
//
//  Created by Trang Huyền on 6/11/21.
//

import UIKit



class SecondViewController: UIViewController {
    var g : Int = 0
    var h : Int = 0
    var a : Int = 0
    var w : Int = 0
    
    @IBOutlet weak var btnReCalculate: UIButton!
    
    @IBOutlet weak var view_result: UIView!
    @IBOutlet weak var bmi: UILabel!
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var lb_text: UILabel!
    var bmi_ans = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        styleBtn(x: btnReCalculate)
        view_result.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        bmi_ans = Double(w) / (Double(h)*Double(h) / 10000.0)
        bmi.text = "\(Double(round(bmi_ans)))"
        bmi.textColor = .white
        bmi.font = UIFont.boldSystemFont(ofSize: 30)
        result.textColor = .white
        lb_text.textColor = .green
        lb_text.font = UIFont.boldSystemFont(ofSize: 20)
        
        if bmi_ans <= 18.5 {
            result.text = "You have a thin body"
            lb_text.text = "THIN"
        }
        else if bmi_ans <= 24.9 {
            result.text = "You have a perfect body"
            lb_text.text = "NOMAL"
        }
        else if bmi_ans <= 29.9 {
            result.text = "You have a pre-obese body"
            lb_text.text = "FAT"

        }
        else if bmi_ans <= 29.9 {
            result.text = "You have a pre-obese body"
            lb_text.text = "FAT"
        }
        else if bmi_ans <= 34.9 {
            result.text = "You have a body of obesity grade I"
            lb_text.text = "FAT"
        }
        else if bmi_ans <= 39.9 {
            result.text = "You have a body of obesity grade II"
            lb_text.text = "FAT"
        }
        else {
            result.text = "You have a body of obesity grade III"
            lb_text.text = "FAT"

        }
        
        
        
    }
    @IBAction func onPressReCalculate (_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
