//
//  CustomView.swift
//  TestView
//
//  Created by Immani, Vamsi (ES) on 9/25/18.
//  Copyright © 2018 Immani, Vamsi (ES). All rights reserved.
//

import UIKit

class CustomView: UIView {

    @IBOutlet var customView: UIView!
    
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    override init(frame: CGRect) {
        
        // Call super init
        
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        
        configureXIB()
        
    }
    

    required init?(coder aDecoder: NSCoder) {
        
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        
        configureXIB()
        
    }
    
    func configureXIB() {
        
        customView = configureNib()
        
        // use bounds not frame or it’ll be offset
        
        customView.frame = bounds
        
        // Make the flexible view
        
        customView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        
        addSubview(customView)
        
    }
    
    func configureNib() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        
        let nib = UINib(nibName: "CustomView", bundle: bundle)
        
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
        
    }

}
