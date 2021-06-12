//
//  ViewController.swift
//  BMI
//
//  Created by Trang Huyền on 6/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleSceen: UILabel!
    @IBOutlet weak var imgMale: UIImageView!
    @IBOutlet weak var viewMale: UIView!
    @IBOutlet weak var imgFemale: UIImageView!
    
    @IBOutlet weak var viewAge: UIView!
    @IBOutlet weak var viewWeight: UIView!
    
    @IBOutlet weak var viewHeight: UIView!
    @IBOutlet weak var viewFemale: UIView!
    @IBOutlet weak var btnCalculate: UIButton!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var lbHeight: UILabel!
    @IBOutlet weak var lbWeight : UILabel!
    @IBOutlet weak var lbAge : UILabel!
    
    @IBOutlet weak var age_decrease_img: UIImageView!
    @IBOutlet weak var age_increase_img: UIImageView!
    @IBOutlet weak var weight_decrese_img: UIImageView!
    @IBOutlet weak var weight_increase_img: UIImageView!
    @IBOutlet weak var age_decrease: UIView!
    @IBOutlet weak var age_increase: UIView!
    @IBOutlet weak var weight_decrease: UIView!
    @IBOutlet weak var weight_increase: UIView!
    
    
    var gender = 1
    var weight = 50
    var age = 20
    var height = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        btnCalculate.setTitle("CALCULATE", for: .normal)
        styleBtn(x: btnCalculate)
        
        titleSceen.text = "BMI CALCULATOR"
        titleSceen.textColor = .white
        titleSceen.font = UIFont.boldSystemFont(ofSize: 20)
        
        imgMale.image = UIImage(named: "male")?.withRenderingMode(.alwaysTemplate)
        imgMale.tintColor = UIColor(red: 0.34, green: 0.79, blue: 0.93, alpha: 1.00)
        
        imgFemale.image = UIImage(named: "female")?.withRenderingMode(.alwaysTemplate)
        imgFemale.tintColor = UIColor(red: 0.87, green: 0.36, blue: 0.24, alpha: 1.00)
        
        viewMale.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.26, alpha: 1.00)
        viewMale.layer.cornerRadius = 5
        
        viewFemale.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.22, alpha: 1.00)
        viewFemale.layer.cornerRadius = 5
        
        viewHeight.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.26, alpha: 1.00)
        viewHeight.layer.cornerRadius = 5
        lbHeight.textColor = .white
        lbHeight.font = UIFont.boldSystemFont(ofSize: 24)
        slider.tintColor = UIColor(red: 0.54, green: 0.35, blue: 0.43, alpha: 1.00)
        slider.minimumValue = 3
        slider.maximumValue = 300
        slider.value = 150
        lbHeight.text = "150 cm"

        viewWeight.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.26, alpha: 1.00)
        viewWeight.layer.cornerRadius = 5
        lbWeight.textColor = .white
        lbWeight.font = UIFont.boldSystemFont(ofSize: 24)
        lbWeight.text = "\(weight)"
        weight_decrease.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        weight_increase.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        weight_decrease.layer.cornerRadius = 20
        weight_increase.layer.cornerRadius = 20


        viewAge.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.26, alpha: 1.00)
        viewAge.layer.cornerRadius = 5
        lbAge.textColor = .white
        lbAge.font = UIFont.boldSystemFont(ofSize: 24)
        lbAge.text = "\(age)"
        age_decrease.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        age_increase.backgroundColor = UIColor(red: 0.37, green: 0.38, blue: 0.43, alpha: 1.00)
        age_decrease.layer.cornerRadius = 20
        age_increase.layer.cornerRadius = 20
        
        
    }
    
    @IBAction func onPressCalculate(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "SecondSceen") as SecondViewController
        vc.modalPresentationStyle = .fullScreen
//        guard let gender1 = gender, let height1 = height, let age1 = age, let weight1 = weight else { return  }
        vc.g = gender
        vc.h = height
        vc.a = age
        vc.w = weight
        self.present(vc, animated: true, completion: nil)

    }
   
    @IBAction func selectMale(_ sender: Any) {
        viewFemale.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.22, alpha: 1.00)
        viewMale.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.26, alpha: 1.00)
        gender = 1

    }
    
    @IBAction func selectFemale(_ sender: Any) {
        viewFemale.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.26, alpha: 1.00)
        viewMale.backgroundColor = UIColor(red: 0.14, green: 0.15, blue: 0.22, alpha: 1.00)
        gender = 0
    }
    
    @IBAction func sliderHeight(_ sender: UISlider) {
        height = Int(sender.value)
        lbHeight.text = "\(Int(height)) cm"
    }
    
    
    @IBAction func increase(_ sender: Any) {
        weight += 1
        lbWeight.text = "\(weight)"
    }
    
    @IBAction func increseAge(_ sender: Any) {
        age += 1
        lbAge.text = "\(age)"
    }
    
    @IBAction func decreseWeight(_ sender: Any) {
        weight -= 1
        lbWeight.text = "\(weight)"
    }
    
    @IBAction func decreseAge(_ sender: Any) {
        age -= 1
        lbAge.text = "\(age)"
    }
}

func styleBtn(x : UIButton)  {
    x.backgroundColor = UIColor(red: 0.91, green: 0.24, blue: 0.40, alpha: 1.00)
    x.setTitleColor(.white, for: .normal)
    x.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
    x.layer.cornerRadius = 5
}

