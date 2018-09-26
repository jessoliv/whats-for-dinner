//
//  ViewController.swift
//  What's For Dinner
//
//  Created by Jessica Olivieri on 9/25/18.
//  Copyright © 2018 Jessica Olivieri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var dinnerImage: UIImageView!
	@IBOutlet weak var dinnerLabel: UILabel!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	@IBAction func dinnerButtonPressed(_ sender: UIButton) {
		// declare array (could also place outside of function) -- better in this s
		// put outside if you will be using it again later in the app
		let choicesArray = ["Burgers", "Burritos", "Cobb Salad", "Pepperoni Pizza", "Sushi"]
		
		var selectedMeal = choicesArray.randomElement()!
		while selectedMeal == dinnerLabel.text {
			selectedMeal = choicesArray.randomElement()!
		}
		
		dinnerLabel.text = selectedMeal
		dinnerImage.image = UIImage(named: selectedMeal)
	}
	
}

