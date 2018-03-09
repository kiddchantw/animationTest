//
//  vc2.swift
//  animationTest
//
//  Created by kiddchantw on 2018/3/8.
//  Copyright © 2018年 kiddchantw. All rights reserved.
//

import UIKit

class vc2: UIViewController {

    
    @IBOutlet var viewOne: UIView!
    
    @IBOutlet var lblOne: UILabel!
    
    var isFlipped:Bool = false
    
    @IBOutlet var lblTwo: UILabel!
    

    
    
    
    @IBAction func btnFour(_ sender: UIButton) {
        
        isFlipped = !isFlipped
        UIView.transition(with: viewOne, duration: 1.0, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: {
            self.viewOne.isHidden = false
            
        })
        
    }
    
    
    
    
    
    
    func transitionType(type:UIViewAnimationOptions){
        
        let redView = UIView(frame: viewOne.frame)
        
        redView.backgroundColor  = randomColor()
        
        UIView.transition(from: viewOne!, to: redView, duration: 1, options: type, completion: { _ in
            self.view.addSubview(self.viewOne)
            redView.removeFromSuperview()
        })

    }
    
    @IBAction func btnTwo(_ sender: UIButton) {
         transitionType(type:[.transitionFlipFromLeft,.autoreverse] )
    }
    
    @IBAction func btnThree(_ sender: UIButton) {
        
        transitionType(type:[.transitionCurlDown,.autoreverse] )
    }
    
    
    
    
    
    @IBAction func btnOne(_ sender: UIButton) {
        
        transitionType(type:[.transitionCrossDissolve,.autoreverse] )
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
