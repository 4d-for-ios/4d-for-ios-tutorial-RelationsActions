//
//  ___TABLE___DetailsForm.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___
//  ___COPYRIGHT___

import UIKit
import QMobileUI

/// Generated details form for ___TABLE___ table.
@IBDesignable
class ___TABLE___DetailsForm: DetailsForm___DETAILFORMTYPE___ {

    @IBOutlet weak var imageView: UIImageView!

    /// The record displayed in this form
    var record: ___TABLE___ {
        return super.record as! ___TABLE___
    }

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var actionButton: UIButton!

    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true)
    }

    @IBAction override func nextRecord(_ sender: Any!) {
            self.nextRecord()
    }

    @IBAction override func previousRecord(_ sender: Any!) {
            self.previousRecord()
    }

    // MARK: Events
    override func onLoad() {
        // Do any additional setup after loading the view.
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 12.0
        backButton.transform = CGAffineTransform(scaleX: 0, y: 0)
        previousButton.transform = CGAffineTransform(scaleX: 0, y: 0 )
        nextButton.transform = CGAffineTransform(scaleX: 0, y: 0)
        actionButton.transform = CGAffineTransform(scaleX: 0, y: 0)

    }

    override func onWillAppear(_ animated: Bool) {
        // Called when the view is about to made visible. Default does nothing
    }

    override func onDidAppear(_ animated: Bool) {
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

    override func onWillDisappear(_ animated: Bool) {
        // Called when the view is dismissed, covered or otherwise hidden. Default does nothing
    }

    override func onDidDisappear(_ animated: Bool) {
        // Called after the view was dismissed, covered or otherwise hidden. Default does nothing
    }

    // MARK: Custom actions
}
