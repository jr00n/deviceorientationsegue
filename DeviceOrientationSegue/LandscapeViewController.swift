//
//  LandscapeViewController.swift
//  DeviceOrientationSegue
//
//  Created by Jeroen Wolff on 21/07/16.
//  Copyright © 2016 Jeroen Wolff. All rights reserved.
//

import UIKit

class LandscapeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    
    // MARK: - Navigation
    override func willAnimateRotationToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        
        if (UIDeviceOrientationIsPortrait(UIDevice.currentDevice().orientation)) {
            self.performSegueWithIdentifier("unwindSegueToPortrait", sender: self)
 
        }
    }


}
