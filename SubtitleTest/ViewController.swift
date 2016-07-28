//
//  ViewController.swift
//  SubtitleTest
//
//  Created by Ryan Grigsby on 7/27/16.
//  Copyright © 2016 Grigs-b. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let playerURL = NSURL(string: "https://raw.githubusercontent.com/Grigs-b/subtitle-test/master/subtitle-test.m3u8") else {
            fatalError("Unable to create URL")
        }
        let urlAsset = AVURLAsset(URL: playerURL)
        urlAsset.mediaSelectionGroupForMediaCharacteristic(AVMediaCharacteristicLegible)?.options.forEach { (option) in
            let label = UILabel()
            label.text = option.displayName
            stackView.addArrangedSubview(label)
        }
        
    }

    
}

