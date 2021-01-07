//
//  ViewController.swift
//  DemoMutipleTarget
//
//  Created by Menute on 6/1/2564 BE.
//  Copyright © 2564 Menute. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        print("DisplayName ==> \(BuildConfig.bundleDisplayName)")
        print("LICENSE_KEY == > \(BuildConfig.LICENSE_KEY)")
        print("URL == > \(BuildConfig.URL_KEY)")
    }


}

