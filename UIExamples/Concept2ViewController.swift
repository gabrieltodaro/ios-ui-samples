//
//  Concept2ViewController.swift
//  UIExamples
//
//  Created by Gabriel Patane Todaro on 06/04/22.
//

import UIKit

/// View Controller on XIB/NIB
class Concept2ViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        let newView = Bundle.main.loadNibNamed("Concept2View", owner: self, options: nil)?.first as? UIView
        view = newView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Xib/Nib"
    }
}
