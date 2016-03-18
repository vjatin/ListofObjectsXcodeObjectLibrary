//
//  ViewController.swift
//  ListofObjectsXcodeObjectLibraryNew
//
//  Created by Jatin K Vaishnav on 3/1/16.
//  Copyright © 2016 Jatin K Vaishnav. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var myscrollview: UIScrollView!
    
    var items = ["Picker Item 1","Picker Item 2","Picker Item 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myscrollview.contentSize.height = 1500
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //picker view
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return items.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    { return items[row]
        
    }
    
    

}

