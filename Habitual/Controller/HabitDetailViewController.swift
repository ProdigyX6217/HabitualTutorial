//
//  HabitDetailViewController.swift
//  Habitual
//
//  Created by Student Laptop_7/19_1 on 1/1/21.
//  Copyright © 2021 Makeschool. All rights reserved.
//

import UIKit

class HabitDetailViewController: UIViewController {

  var habit: Habit!
  var habitIndex: Int!
    
    private var persistence = PersistenceLayer()

    @IBOutlet weak var imageViewIcon: UIImageView!
    @IBOutlet weak var currentStreakLabel: UILabel!
    @IBOutlet weak var totalCompletionsLabel: UILabel!
    @IBOutlet weak var bestStreakLabel: UILabel!
    @IBOutlet weak var startDateLabel: UILabel!
    @IBOutlet weak var markCompletedButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
    }
    
    
    @IBAction func markCompletedButton(_ sender: Any) {
        habit = persistence.markHabitAsCompleted(habitIndex)
        updateUI()
    }
    
    private func updateUI() {
            title = habit.title
            imageViewIcon.image = habit.selectedImage.image
            currentStreakLabel.text = "\(habit.currentStreak) days"
            totalCompletionsLabel.text = String(habit.numberOfCompletions)
            bestStreakLabel.text = String(habit.bestStreak)
            startDateLabel.text = habit.dateCreated.stringValue

        if habit.completedToday {
            markCompletedButton.setTitle("Completed for Today!", for: .normal)
        } else {
            markCompletedButton.setTitle("Mark as Completed", for: .normal)
        }
        
        }

}
