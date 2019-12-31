//
//  MoviesDetails.swift
//  PassingDataThroughVC-Constructors-Dependency-Injection
//
//  Created by Mohamed Samir on 12/31/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class MoviesDetailsVC : UIViewController {

    var myTitle : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = myTitle

    }
    //////////////////////////////////////////////////////////
    // this ts constructor dependancy injection 
    init?(coder:NSCoder , movieName : String) {
          super.init(coder:coder)
          self.myTitle = movieName
      }
      required init?(coder: NSCoder) {
          fatalError("init (coder) has not been implemented")
      }
    /////////////////////////////////////////////////////////////
}
