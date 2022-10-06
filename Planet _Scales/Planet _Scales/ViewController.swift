//
//  ViewController.swift
//  Planet _Scales
//
//  Created by Nick Meyer on 1/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var welcomeBack: UILabel!
    
    var from_Moon:String?
    var from_Jupiter:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func earthToMoon(_ sender: Any, forEvent event: UIEvent) {
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let des = segue.destination as! MoonViewController
        if (segue.identifier == "EarthToMoon")
        {
            des.fromEarth = weight.text
        }
    }
    
    @IBAction func fromMoon(segue: UIStoryboardSegue){
        var from_Moon = "Welcome back from the moon!"
        if let sourceViewController = segue.source as? MoonViewController{
            let dataRecieved = sourceViewController.data
            print(dataRecieved)
            welcomeBack.text = from_Moon
        }
    }
}

