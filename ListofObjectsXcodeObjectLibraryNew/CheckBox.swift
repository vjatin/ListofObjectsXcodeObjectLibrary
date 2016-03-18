//
//  CheckBox.swift
//  ListofObjectsXcodeObjectLibraryNew
//
//  Created by Jatin K Vaishnav on 3/8/16.
//  Copyright © 2016 Jatin K Vaishnav. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    //images to take care of graphics
    let checkedImage = UIImage(named: "checked_checkbox")
    let unCheckedImage = UIImage(named: "unchecked_checkbox")
    
    //if the value changed do
    var isChecked:Bool = false{
        didSet{
            if isChecked == true{
                self.setImage(checkedImage, forState: .Normal)
                self.accessibilityLabel = "Agree? Checkbox checked"
            }else{
                self.setImage(unCheckedImage, forState: .Normal)
                self.accessibilityLabel = "Agree? Checkbox unchecked"
            }
        }
    }
    
    //listner button being clicked
    override func awakeFromNib() {
        self.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
        self.isChecked = false
        self.accessibilityLabel = "Agree? Checkbox unchecked"
    }
    
    //calls when button clicked change the value
    func buttonClicked(sender:UIButton) {
        if(sender == self){
            if isChecked == true{
                isChecked = false
            }else{
                isChecked = true
            }
        }
    }
    
}
