//
//  ViewController.swift
//  TimeKeeperTest
//
//  Created by David Azancot on 17/07/2019.
//  Copyright © 2019 4D. All rights reserved.
//

import UIKit
import QMobileUI

var barColor: CGFloat = 0
var mainColor = UIColor()

let lemon = UIColor(red: 239/255, green: 212/255, blue: 71/255, alpha: 1.0)
let dazzlingBlue = UIColor(red: 69/255, green: 69/255, blue: 145/255, alpha: 1.0)
let surfSpray = UIColor(red: 184/255, green: 202/255, blue: 196/255, alpha: 1.0)
let Teal = UIColor(red: 79/255, green: 123/255, blue: 125/255, alpha: 1.0)
let lightLilac = UIColor(red: 233/255, green: 208/255, blue: 211/255, alpha: 1.0)
let Tea = UIColor(red: 163/255, green: 163/255, blue: 145/255, alpha: 1.0)
let strawberryIce = UIColor(red: 225/255, green: 143/255, blue: 141/255, alpha: 1.0)
let marsala = UIColor(red: 141/255, green: 95/255, blue: 93/255, alpha: 1.0)

class ___TABLE___LeadingView: UIView {
    
    @IBInspectable var oldBarColor: CGFloat = 0.9

    @objc dynamic public var colornumber: NSNumber? {
        get {
            return (barColor) as NSNumber
        }
        set {
            oldBarColor = barColor
            guard let number = newValue else {
                barColor = 0
                return
            }
            barColor = (CGFloat(number.doubleValue))
            setColor()
            self.backgroundColor = mainColor
            setNeedsDisplay()
        }
    }
}

class ___TABLE___CustomProgressBarDetail: UIView {

    @IBInspectable var percent: CGFloat = 0.9
    @IBInspectable var bgColor: UIColor = UIColor.clear
    @IBInspectable var thickness: CGFloat = 20
    @IBInspectable var bgThickness: CGFloat = 20
    @IBInspectable var isHalfBar: Bool = false
    @IBInspectable var oldpercent: CGFloat = 0
    @IBInspectable var oldBarColor: CGFloat = 0.9

    var arc = CAShapeLayer()
    let arc2 = CAShapeLayer()
    let arc3 = CAShapeLayer()

    let nilPercent: CGFloat = -1

    @objc dynamic public var graphnumber: NSNumber? {
        get {
            return (percent / 100) as NSNumber
        }
        set {
            oldpercent = self.percent
            guard let number = newValue else {
                self.percent = nilPercent
                return
            }
            percent = (CGFloat(number.doubleValue)) / 100
            setNeedsDisplay()
        }
    }

    @objc dynamic public var colornumber: NSNumber? {
        get {
            return (barColor) as NSNumber
        }
        set {
            oldBarColor = barColor
            guard let number = newValue else {
                barColor = 0
                return
            }
            barColor = (CGFloat(number.doubleValue))
            setColor()
            setNeedsDisplay()
        }
    }

    override func draw(_ rect: CGRect) {
        let X = self.bounds.midX
        let Y = self.bounds.midY
        var strokeStart: CGFloat = self.oldpercent
        var strokeEnd: CGFloat = percent
        var size = self.frame.size.width
        if self.frame.size.height < size {
            size = self.frame.size.height
        }
        size -= 0
        if self.isHalfBar == true {
            strokeStart = 0.2
            strokeEnd = (strokeEnd / 1.2) + 0.18
            let degrees = 55.0
            let radians = CGFloat(degrees * Double.pi / 180)
            layer.transform = CATransform3DMakeRotation(radians, 0.0, 0.0, 1.0)
        }

        let path = UIBezierPath(ovalIn: CGRect(x: (X - (260/2)), y: (Y - (260/2)), width: 260, height: 260)).cgPath
        let path2 = UIBezierPath(ovalIn: CGRect(x: (X - (200/2)), y: (Y - (200/2)), width: 200, height: 200)).cgPath

        self.addOval(self.bgThickness, path: path, strokeStart: strokeStart, strokeEnd: 1.0, strokeColor: self.bgColor, fillColor: UIColor.clear, shadowRadius: 0, shadowOpacity: 0, shadowOffsset: CGSize.zero)
        self.addOval2(self.thickness, path: path, strokeStart: strokeStart, strokeEnd: strokeEnd, strokeColor: mainColor, fillColor: UIColor.clear, shadowRadius: 0, shadowOpacity: 0, shadowOffsset: CGSize.zero)
        self.addOval3(self.bgThickness, path: path2, strokeStart: strokeStart, strokeEnd: 1.0, strokeColor: self.bgColor, fillColor: UIColor.clear, shadowRadius: 0, shadowOpacity: 0, shadowOffsset: CGSize.zero)
    }

    // swiftlint:disable:next function_parameter_count
    func addOval(_ lineWidth: CGFloat, path: CGPath, strokeStart: CGFloat, strokeEnd: CGFloat, strokeColor: UIColor, fillColor: UIColor, shadowRadius: CGFloat, shadowOpacity: Float, shadowOffsset: CGSize) {

        arc.lineWidth = 24
        arc.opacity = 0.2
        arc.path = path
        arc.strokeStart = strokeStart
        arc.strokeEnd = strokeEnd
        arc.strokeColor = strokeColor.cgColor
        arc.fillColor = fillColor.cgColor
        arc.shadowColor = UIColor.black.cgColor
        arc.shadowRadius = shadowRadius
        arc.shadowOpacity = shadowOpacity
        arc.shadowOffset = shadowOffsset
        arc.lineCap = .round
        layer.addSublayer(arc)
    }

    // swiftlint:disable:next function_parameter_count
    func addOval2(_ lineWidth: CGFloat, path: CGPath, strokeStart: CGFloat, strokeEnd: CGFloat, strokeColor: UIColor, fillColor: UIColor, shadowRadius: CGFloat, shadowOpacity: Float, shadowOffsset: CGSize) {

        arc2.lineWidth = 24
        arc2.path = path
        arc2.strokeStart = strokeStart
        arc2.strokeEnd = strokeEnd
        arc2.strokeColor = strokeColor.cgColor
        arc2.fillColor = fillColor.cgColor
        arc2.shadowColor = UIColor.black.cgColor
        arc2.shadowRadius = shadowRadius
        arc2.shadowOpacity = shadowOpacity
        arc2.shadowOffset = shadowOffsset
        arc2.lineCap = .round
        layer.addSublayer(arc2)
    }

    // swiftlint:disable:next function_parameter_count
    func addOval3(_ lineWidth: CGFloat, path: CGPath, strokeStart: CGFloat, strokeEnd: CGFloat, strokeColor: UIColor, fillColor: UIColor, shadowRadius: CGFloat, shadowOpacity: Float, shadowOffsset: CGSize) {

        arc3.lineWidth = 24
        arc3.opacity = 0.11
        arc3.path = path
        arc3.strokeStart = strokeStart
        arc3.strokeEnd = strokeEnd
        arc3.strokeColor = strokeColor.cgColor
        arc3.fillColor = fillColor.cgColor
        arc3.shadowColor = UIColor.black.cgColor
        arc3.shadowRadius = shadowRadius
        arc3.shadowOpacity = shadowOpacity
        arc3.shadowOffset = shadowOffsset
        arc3.lineCap = .round
        layer.addSublayer(arc3)
    }
}

class ___TABLE___DetailsForm: DetailsFormBare {

    /// The record displayed in this form
    var record: ___TABLE___ {
        return super.record as! ___TABLE___
    }

    var time: Int = 0
    var addTime: Int?

    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var categoryView: UIView!
    @IBOutlet weak var categoryLabel: UILabel!

    override func onLoad() {
        backButton.transform = CGAffineTransform(scaleX: 0, y: 0)
        previousButton.transform = CGAffineTransform(scaleX: 0, y: 0 )
        nextButton.transform = CGAffineTransform(scaleX: 0, y: 0)
        actionButton.transform = CGAffineTransform(scaleX: 0, y: 0)
        categoryView.transform = CGAffineTransform(translationX: screenWidth, y: 0)
    }

    override func onWillAppear(_ animated: Bool) {
        updateUI()
    }

    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true)
    }

    @IBAction override func nextRecord(_ sender: Any!) {
        self.categoryAnimationOut()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            self.nextRecord()
            self.updateUI()
            self.categoryAnimationIn()
        }
    }

    @IBAction override func previousRecord(_ sender: Any!) {
        self.categoryAnimationOut()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            self.previousRecord()
            self.updateUI()
            self.categoryAnimationIn()
        }
    }

    override func onDidAppear(_ animated: Bool) {
        categoryAnimationIn()
        UIView.animate(withDuration: 1.5,
                       delay: 0.2,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1.0,
                       options: [.curveEaseOut, .allowUserInteraction],
                       animations: {
                        self.backButton.transform = .identity
        },
                       completion: nil)

        UIView.animate(withDuration: 1.5,
                       delay: 0.4,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1.0,
                       options: [.curveEaseOut, .allowUserInteraction],
                       animations: {
                        self.previousButton.transform = .identity
        },
                       completion: nil)

        UIView.animate(withDuration: 1.5,
                       delay: 0.6,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1.0,
                       options: [.curveEaseOut, .allowUserInteraction],
                       animations: {
                        self.nextButton.transform = .identity
        },
                       completion: nil)

        UIView.animate(withDuration: 1.5,
                       delay: 0.8,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 1.0,
                       options: [.curveEaseOut, .allowUserInteraction],
                       animations: {
                        self.actionButton.transform = .identity
        },
                       completion: nil)
    }

    func categoryAnimationIn() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1,
                       initialSpringVelocity: 0.2, options: [.curveEaseOut], animations: {
                        self.categoryView.transform = .identity
        }, completion: nil)
    }

    func categoryAnimationOut() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1,
                       initialSpringVelocity: 0.2, options: [.curveEaseOut], animations: {
                        self.categoryView.transform = CGAffineTransform(translationX: screenWidth, y: 0)
        }, completion: nil)
    }

    private func updateUI() {

        //Price definition
        var price: Int
        addTime = (timeLabel.text?.secondFromString)
        time = addTime!
        let hourPrice = Int(self.record.___FIELD_5___)
        price = addTime! * hourPrice/(60*60)
        priceLabel.text = String(price)+"€"

        categoryLabel.textColor = UIColor.white
        categoryView.backgroundColor = mainColor
        timeLabel.textColor = mainColor
    }
}

extension String {

    var integer: Int {
        return Int(self) ?? 0
    }

    var secondFromString : Int {
        var components: Array = self.components(separatedBy: ":")
        let hours = components[0].integer
        let minutes = components[1].integer
        let seconds = components[2].integer
        return Int((hours * 60 * 60) + (minutes * 60) + seconds)
    }
}

public var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

public func setColor() -> UIColor {
    switch barColor {
    case 0 :
        mainColor = lemon
    case 1 :
        mainColor = dazzlingBlue
    case 2 :
        mainColor = surfSpray
    case 3 :
        mainColor = Teal
    case 4 :
        mainColor = lightLilac
    case 5 :
        mainColor = Tea
    case 6 :
        mainColor = strawberryIce
    case 7 :
        mainColor = marsala
    default:
        mainColor = UIColor.white
    }
    return mainColor
}
