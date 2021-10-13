/*
  ViewController.swift
  aboutMe.sem

  Created by Grant Spraker on 9/24/21.
*/

import UIKit

// Button Corner Radius and Border code from StackOverflow.com

@IBDesignable extension UIButton
{

    @IBInspectable var borderWidth: CGFloat
    {
        set
        {
            layer.borderWidth = newValue
        }
        get
        {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat
    {
        set
        {
            layer.cornerRadius = newValue
        }
        get
        {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor?
    {
        set
        {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get
        {
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
    
// When you open the app and the segment (about me) are the same.
        disLable.text = "Hi there. I'm Grant Spraker. I go to Fort Collins High School and a Peer Counsler for my school as well."
        
        aboutImage.image = UIImage(named: "oldFCHS")
    }

// MARK: SEGMENT
    @IBAction func sigAction(_ sender: Any)
    {
        switch
            sigOutlet
                .selectedSegmentIndex
           {
// MARK: About Me
        case 0:
            meLable.text = "About Me"
            
                greeting = "Hi there. I'm Grant Spraker. I go to Fort Collins High School and a Peer Counsler for my school as well."
            
                disLable.text = greeting
            
            aboutImage.image = UIImage(named: "oldFCHS")
            
            self.view.backgroundColor = UIColor.lightGray

// MARK: Hobbys
        case 1:
            meLable.text = "Hobby"
            
            greeting = "My hobby are solving puzzles, playing games, tools. As an example is tools that you would need to fix your car."
            
            disLable.text = greeting
            
        self.view.backgroundColor = UIColor.white
            
        aboutImage.image = UIImage(named: "Rubixs cube")
               
// MARK: Values
        case 2:
            meLable.text = "Values"
            
            greeting = "My Values are helping people, being kind, caring, and family."
            
            disLable.text = greeting
            
            self.view.backgroundColor = UIColor.green
            
            aboutImage.image = UIImage(named: "badBad")
            
           default:
               break
           }
    }

// MARK: Personalty color button
    @IBAction func buttonColor(_ sender: Any)
    {
        self.view.backgroundColor = UIColor.blue
        
        meLable.text = "I'm Blue?"
        
        disLable.text = "people with a blue personality like working in group projects, some of there the values are friendships, honsety, compassion, ect."
        
        aboutImage.image = UIImage(named: "goodQuote")
    }

}
