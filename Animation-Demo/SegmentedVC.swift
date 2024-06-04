//
//  SegmentedVC.swift
//  Animation-Demo
//
//  Created by Uzair Majeed on 03/06/24.
//

import UIKit

class SegmentedVC: UIViewController {

    @IBOutlet var secondContainer: UIView!
    @IBOutlet var firstContainer: UIView!
    @IBOutlet var segmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.bringSubviewToFront(firstContainer)

        
    }
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            self.view.bringSubviewToFront(firstContainer)
        case 1:
            self.view.bringSubviewToFront(secondContainer)
        default:
            break
        }
    }
}
