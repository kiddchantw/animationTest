//
//  ViewController.swift
//  animationTest
//
//  Created by kiddchantw on 2018/3/7.
//  Copyright © 2018年 kiddchantw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    
    
    @IBOutlet var imgOne: UIImageView!
    @IBAction func btnThree(_ sender: UIButton) {

        UIView.animateKeyframes(withDuration: 2.0, delay: 0, options:[], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.5, animations: {
                self.imgOne.center.x += 15
                self.imgOne.center.y -= 40
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
                self.imgOne.center.x += 30
                self.imgOne.center.y += 25
            })
            
        }, completion: nil)
        
        
        
    }
    
    
    @IBOutlet var viewOne: UIView!
    @IBAction func btnTwo(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1, animations: {
            self.viewOne.backgroundColor = self.randomColor()
            
            self.viewOne.frame.size.width -= 20
            self.viewOne.center = self.view.center
            
            self.btnOne.frame.size.width += 30
            
        }){ _ in
            UIView.animate(withDuration: 0.5 , delay: 0, options: [], animations: {
                
                self.viewOne.frame.size.width += 20
                self.viewOne.center = self.view.center

                self.btnOne.frame.size.width -= 30

                })
        }
    }
    
    
    
    
    
   
    @IBOutlet var btnOne: UIButton!
    
    @IBAction func btnOne(_ sender: UIButton) {
       
        UIView.animate(withDuration: 0.8, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options:.autoreverse, animations: {() -> Void in
            
            self.btnOne.center.x += 100

        }, completion:nil)

        
        
        self.view.backgroundColor = UIColor.yellow
        UIView.animate(withDuration:3){
            self.view.backgroundColor = UIColor.lightGray
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func randomColor() -> UIColor{
        let redC   : CGFloat = CGFloat(arc4random_uniform(255))/CGFloat(255)
        let greenC : CGFloat = CGFloat(arc4random_uniform(255))/CGFloat(255)
        let blueC  : CGFloat = CGFloat(arc4random_uniform(255))/CGFloat(255)
        return  UIColor(red: redC, green: greenC, blue: blueC, alpha: 1)
    
    }

}

