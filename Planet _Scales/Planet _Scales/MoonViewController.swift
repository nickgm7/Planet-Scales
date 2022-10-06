//
//  MoonViewController.swift
//  Planet _Scales
//
//  Created by Nick Meyer on 2/6/22.
//

import UIKit

class MoonViewController: UIViewController {

    var fromEarth:String?
    var from_Jupiter:String?
    var data:Int?
    @IBOutlet weak var moonWeight: UILabel!
    @IBOutlet weak var earthWeight: UILabel!
    @IBOutlet weak var welcomeBack: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        moonWeight.text = String(Int(fromEarth!)! / 6)
        earthWeight.text = fromEarth!
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if (segue.identifier == "MoonToJupiter")
        {
            let des = segue.destination as! JupiterViewController
            des.earth_weight = fromEarth
            des.from_Moon = moonWeight.text
        }
    }
    @IBAction func prepareEarth(for segue: UIStoryboardSegue, sender: Any?){
        let des = segue.destination as! ViewController
        if (segue.identifier == "EarthToMoon")
        {
            des.from_Moon = "Welcome back from the Moon"
        }
        
    }
    @IBAction func fromJupiter(segue: UIStoryboardSegue){
        from_Jupiter = "Welcome back from the Jupiter!"
        if let sourceViewController = segue.source as? JupiterViewController{
            let dataRecieved = sourceViewController.data
            
            welcomeBack.text = from_Jupiter
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
