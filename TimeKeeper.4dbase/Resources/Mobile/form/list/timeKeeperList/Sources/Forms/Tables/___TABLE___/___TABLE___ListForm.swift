//
//  ___TABLE___ListForm.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//  ___COPYRIGHT___

import UIKit
import QMobileUI

/// Generated list form for ___TABLE___ table.
@IBDesignable

class ___TABLE___CustomProgressBarList: UIView {
    @IBInspectable var percent: CGFloat = 0.90
    @IBInspectable var oldpercent: CGFloat = 0
    @IBInspectable var barColor: CGFloat = 1
    @IBInspectable var oldBarColor: CGFloat = 0
    
    @objc dynamic public var graphnumber: NSNumber? {
        get {
            return (percent) as NSNumber
        }
        set {
            oldpercent = self.percent
            guard let number = newValue else {
                self.percent = 0
                return
            }
            percent = (CGFloat(number.doubleValue))
            setNeedsDisplay()
        }
    }
    
    @objc dynamic public var colornumber: NSNumber? {
        get {
            return (barColor) as NSNumber
        }
        set {
            oldBarColor = self.barColor
            guard let number = newValue else {
                self.barColor = 0
                return
            }
            barColor = (CGFloat(number.doubleValue))
            print("barColor\(Int(barColor))")
            setNeedsDisplay()
        }}
    let shapeLayer: CAShapeLayer

    let lemon = UIColor(red: 239/255, green: 212/255, blue: 71/255, alpha: 1.0)
    let dazzlingBlue = UIColor(red: 69/255, green: 69/255, blue: 145/255, alpha: 1.0)
    let surfSpray = UIColor(red: 184/255, green: 202/255, blue: 196/255, alpha: 1.0)
    let Teal = UIColor(red: 79/255, green: 123/255, blue: 125/255, alpha: 1.0)
    let lightLilac = UIColor(red: 233/255, green: 208/255, blue: 211/255, alpha: 1.0)
    let Tea = UIColor(red: 163/255, green: 163/255, blue: 145/255, alpha: 1.0)
    let strawberryIce = UIColor(red: 225/255, green: 143/255, blue: 141/255, alpha: 1.0)
    let marsala = UIColor(red: 141/255, green: 95/255, blue: 93/255, alpha: 1.0)
    
    override func draw(_ rect: CGRect) {
        let backgroundPath = UIBezierPath()
        backgroundPath.move(to: CGPoint(x: 0, y: self.frame.height))
        backgroundPath.addLine(to: CGPoint(x: self.frame.width, y: self.frame.height))
        let backShapelayer = CAShapeLayer()
        backShapelayer.path = backgroundPath.cgPath
        backShapelayer.lineWidth = self.frame.height
        self.layer.addSublayer(backShapelayer)
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: self.frame.height))
        if percent <= 100 && percent > 0 {
            path.addLine(to: CGPoint(x: (percent * self.frame.width) / 100, y: self.frame.height))}
        shapeLayer.path = path.cgPath
        shapeLayer.lineWidth = self.frame.height
        shapeLayer.lineCap = .round

        
        var color = UIColor()
        
        switch barColor {
        case 0 :
            color = lemon
        case 1 :
            color = dazzlingBlue
        case 2 :
            color = surfSpray
        case 3 :
            color = Teal
        case 4 :
            color = lightLilac
        case 5 :
            color = Tea
        case 6 :
            color = strawberryIce
        case 7 :
            color = marsala
        default:
            color = UIColor.white
        }
        shapeLayer.strokeColor = color.cgColor
    }
    
    override init(frame: CGRect) {
        self.shapeLayer = CAShapeLayer()
        super.init(frame: frame)
        self.layer.addSublayer(shapeLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.shapeLayer = CAShapeLayer()
        super.init(coder: aDecoder)
        self.layer.addSublayer(shapeLayer)
    }
}

class ___TABLE___ListForm: ListForm___LISTFORMTYPE___ {
    
    // Do not edit name or override tableName
    public override var tableName: String {
        return "___TABLE___"
    }
    
    // MARK: Events
    override func onLoad() {
        // Do any additional setup after loading the view.
    }
    
    override func onWillAppear(_ animated: Bool) {
        // Called when the view is about to made visible. Default does nothing
    }
    
    override func onDidAppear(_ animated: Bool) {
        // Called when the view has been fully transitioned onto the screen. Default does nothing
    }
    
    override func onWillDisappear(_ animated: Bool) {
        // Called when the view is dismissed, covered or otherwise hidden. Default does nothing
    }
    
    override func onDidDisappear(_ animated: Bool) {
        // Called after the view was dismissed, covered or otherwise hidden. Default does nothing
    }
    
}
