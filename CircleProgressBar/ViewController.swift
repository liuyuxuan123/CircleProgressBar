//
//  ViewController.swift
//  CircleProgressBar
//
//  Created by 刘宇轩 on 2018/11/14.
//  Copyright © 2018 yuxuanliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let shapeLayer = CAShapeLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let center = view.center
        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.strokeEnd = 0
        shapeLayer.lineWidth = 20
        self.view.layer.addSublayer(shapeLayer)
        
        
        let circularPath2 = UIBezierPath(arcCenter: CGPoint(x: self.view.bounds.size.width / 2, y: 100), radius: 100, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        let alayer = CAShapeLayer()
        alayer.path = circularPath2.cgPath

        alayer.strokeColor = UIColor.red.cgColor
        self.view.layer.addSublayer(alayer)
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    @objc func handleTap(){
        print("Attempt to animate")
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        basicAnimation.toValue = 1
        basicAnimation.duration = 2.0
        shapeLayer.add(basicAnimation, forKey: "basic")
    }


}

