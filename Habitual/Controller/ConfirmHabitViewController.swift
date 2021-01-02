//
//  ConfirmHabitViewController.swift
//  Habitual
//
//  Created by Student Laptop_7/19_1 on 1/1/21.
//  Copyright © 2021 Makeschool. All rights reserved.
//

import UIKit

class ConfirmHabitViewController: UIViewController {

    var habitImage: Habit.Images!
    
    @IBOutlet weak var habitImageView: UIImageView!
    @IBOutlet weak var habitTextField: UITextField!
    @IBOutlet weak var createHabitButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            updateUI()
        }

        private func updateUI() {
            title = "New Habit"
            habitImageView.image = habitImage.image
        }


    @IBAction func createHabitButtonPressed(_ sender: Any) {
        var persistenceLayer = PersistenceLayer()
        guard let habitText = habitTextField.text else { return }
        if habitText.isBlank { return }
        persistenceLayer.createNewHabit(name: habitText, image: habitImage)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
