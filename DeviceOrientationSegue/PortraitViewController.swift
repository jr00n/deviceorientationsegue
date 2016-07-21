//
//  ViewController.swift
//  DeviceOrientationSegue
//
//  Created by Jeroen Wolff on 21/07/16.
//  Copyright © 2016 Jeroen Wolff. All rights reserved.
//

import UIKit

class PortraitViewController: UIViewController {
    @IBAction func returnFromSegueActions(sender: UIStoryboardSegue) {
        // empty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func willAnimateRotationToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        print("orientation change")
        if (UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation)) {
            self.performSegueWithIdentifier("toLandscapeScene", sender: self)
        }
    }
    
}

