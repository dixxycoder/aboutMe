/*
  ViewController.swift
  aboutMe.sem

  Created by Grant Spraker on 9/24/21.
*/

import UIKit

// Button Corner Radius and Border code from StackOverflow.com

@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}


class ViewController: UIViewController
{

// Lable
    @IBOutlet weak var meLable: UILabel!
    
// Discribing lable (under the lables that says About me)
    @IBOutlet weak var disLable: UILabel!
    
// Segment Controler (discribing about me).
    @IBOutlet weak var sigOutlet: UISegmentedControl!
    
// Button (personal color)
    @IBOutlet weak var colorButton: UIButton!
    
// To show the Images
    @IBOutlet weak var aboutImage: UIImageView!
    
    var greeting : String = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        disLable.text = " "
    }

// MARK: SEGMENT
    @IBAction func sigAction(_ sender: Any)
    {
        switch
            sigOutlet
                .selectedSegmentIndex
           {

// MARK: Hobbys
           case 0:
            meLable.text = "Hobby"
               greeting = "My hobby are solving puzziles, playing games, tools. as an exaple is what kind of tools would you nedd to fix your car."
            
            disLable.text = greeting
            
            self.view.backgroundColor = UIColor.white
            
            aboutImage.image = UIImage(named: "Rubixs cube")
            
// MARK: 1
           case 1:
            meLable.text = ""
               greeting = "Hola"
            disLable.text = greeting
               
// MARK: 2
           case 2:
               greeting = "Bonjour"
            disLable.text = greeting
            
// MARK: 3
            case 3:
                greeting = "HI"
            disLable.text = greeting
           default:
               break
           }
    }

// MARK: Personalty color button
    @IBAction func buttonColor(_ sender: Any)
    {
        self.view.backgroundColor = UIColor.blue
        meLable.text = "I'm Blue?"
        disLable.text = "_____"
    }

}
