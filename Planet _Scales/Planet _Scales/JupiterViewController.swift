//
//  JupiterViewController.swift
//  Planet _Scales
//
//  Created by Nick Meyer on 2/6/22.
//

import UIKit

class JupiterViewController: UIViewController {
    
    @IBOutlet weak var jw: UILabel!
    @IBOutlet weak var mw: UILabel!
    @IBOutlet weak var ew: UILabel!
    var from_Moon:String?
    var earth_weight:String?
    var data:Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        ew.text = earth_weight
        mw.text = from_Moon
        jw.text = String(Double(earth_weight!)! * 2.4)
        data = 7
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "MoonToJupiter")
        {
            let desMoon = segue.destination as! MoonViewController
        }
      
    }
    @IBAction func prepareMoon(for segue: UIStoryboardSegue, sender: Any?){
        let des = segue.destination as! MoonViewController
        
        if (segue.identifier == "MoonToJupiter")
        {
            des.from_Jupiter = "Welcome back from the Jupiter"
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
