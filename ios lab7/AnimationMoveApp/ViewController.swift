//
//  ViewController.swift
//  AnimationMoveApp
//
//  Created by Esha on 2023-03-18.
//

import UIKit
import GLKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    @IBOutlet var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        func viewWillAppear(_ animated: Bool) {
            myLabel.center.x -= view.bounds.width
            myTextField.center.x -= view.bounds.width
            myImageView.center.x -= view.bounds.width
        }
        
        //Moving Items with Animation
        UIView.animate(withDuration: 3.4, delay: 2.3, options:
        [.repeat, .autoreverse], animations: {
            self.myLabel.center.x += self.view.bounds.width
            self.myTextField.center.x += self.view.bounds.width
            self.myImageView.center.x += self.view.bounds.width
        }, completion: nil)
        
        // Customizing Animation with Damping and Velocity
//        UIView.animate(withDuration: 2.0, delay: 0.5, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.5, options: [.repeat, .autoreverse], animations: {
//            self.myLabel.center.x += self.view.bounds.width
//            self.myTextField.center.x += self.view.bounds.width
//            self.myImageView.center.x += self.view.bounds.width
//        }, completion: nil)
        
        
        
        //Rotating Items with Animation
//        let rotateMe = GLKMathDegreesToRadians(45)
//
//        UIView.animate(withDuration: 3.4, delay: 2.3,
//        options: [.repeat, .autoreverse], animations: {
//        self.myLabel.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
//        }, completion: nil)
//
//        UIView.animate(withDuration: 3.5, delay: 0.45,
//        options: [.repeat, .autoreverse], animations: {
//        self.myTextField.transform = CGAffineTransform(rotationAngle: CGFloat(-rotateMe))
//        }, completion: nil)
//
//        UIView.animate(withDuration: 2.5, delay: 1.5,
//        options: [.repeat, .autoreverse], animations: {
//        self.myImageView.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
//        }, completion: nil)
    }
        
}


