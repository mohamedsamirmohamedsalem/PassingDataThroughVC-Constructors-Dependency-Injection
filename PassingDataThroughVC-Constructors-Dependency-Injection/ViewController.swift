//
//  ViewController.swift
//  PassingDataThroughVC-Constructors-Dependency-Injection
//
//  Created by Mohamed Samir on 12/31/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var movieNmae : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
    func goToDetailedMovieVC(){
        // this technique appear in ios 13 
        guard let VC = storyboard?.instantiateViewController(identifier: "MoviesDetailsVC", creator: { coder in
            return MoviesDetailsVC(coder: coder, movieName: self.movieNmae.text!)
        })else{
            fatalError("MoviesDetailsVC did not found")
        }
        navigationController?.pushViewController(VC, animated: true)
    }
    @IBAction func SetButtonTapped(_ sender: UIButton) {
        goToDetailedMovieVC()
    }
}

