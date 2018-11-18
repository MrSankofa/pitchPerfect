//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Brett Cunningham on 11/18/18.
//  Copyright © 2018 Altruistic Software Development. All rights reserved.
//

import UIKit

class RecordSoundsViewController: UIViewController {
    
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopRecordingButton.isEnabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func recordAudio(_ sender: Any) {
        print("Record Button was Pressed")
        recordLabel.text = "Recording In Progress"
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }
    @IBAction func stopRecording(_ sender: Any) {
        print("Stop Recording Button Was Pressed")
        recordLabel.text = "Tap To Record"
        stopRecordingButton.isEnabled = false
        recordButton.isEnabled = true
    }
    
}
