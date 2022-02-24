//
//  ViewController.swift
//  Segmented Controller
//
//  Created by Jose Faustino on 2/24/22.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var segOut: UISegmentedControl!
    @IBOutlet weak var holaLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    //Change Text Color
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemMint]
        segOut
            .setTitleTextAttributes(titleTextAttributes, for: .normal)
        let titleTextAttributes2 = [NSAttributedString.Key.foregroundColor: UIColor.systemPink]
        segOut
            .setTitleTextAttributes(titleTextAttributes2, for: .selected)
    }


    @IBAction func segAction(_ sender: Any)
    {
        switch segOut.selectedSegmentIndex
        {
        
        case 0:
            holaLabel.text = "こんにちは"
        case 1:
            holaLabel.text = "Hallo"
        case 2:
            holaLabel.text = "Ello Guv'na"
        default:
            holaLabel.text = "Hola"
            
        }
        
        
    }
}

