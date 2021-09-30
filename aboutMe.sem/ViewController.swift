//
//  ViewController.swift
//  aboutMe.sem
//
//  Created by Grant Spraker on 9/24/21.
//

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
    
    // Discribing lable
    @IBOutlet weak var disLable: UILabel!
    
    // Button "tap me"
    @IBOutlet weak var changeButton: UIButton!
    
    // Button "color"
    @IBOutlet weak var colorButton: UIButton!
    
    @IBOutlet weak var aboutImage: UIImageView!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

//MARK: HOBBYS (first tap)
    @IBAction func mainButton(_ sender: Any)
    {
        self.view.backgroundColor = UIColor.white
        
        meLable.text = "Hobby"
        disLable.text = " My hobby are solving puzziles, playing games, tools. as an exaple is what kind of tools would you nedd to fix your car."

        aboutImage.image = UIImage(named: "Rubixs cube")
        
    }
    
    
    
    
    
    
    
    
    @IBAction func changeColorb(_ sender: Any)
    {
        self.view.backgroundColor = UIColor.blue
         meLable.text = "I'm Blue?"
    }
    
}










//MARK: for the images
//    if
//    disappearingImageView.image == UIImage(named: "Binary")
//    {
//        disappearingImageView.image = UIImage(named: "blackHole")
//    }
//    else
//    {
//        disappearingImageView.image = UIImage(named: "Binary")
//    }
