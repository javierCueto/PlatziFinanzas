//
//  BudgetViewController.swift
//  PlatziFinanzas
//
//  Created by José Javier Cueto Mejía on 24/02/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet var animationButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cell = UINib(nibName: "TransactionsCell", bundle: Bundle.main)
        tableView.register(cell, forCellReuseIdentifier: "cell")
    }
    
    
    @IBAction func animateHeader(sender: UIButton){
        
    }
    
}



extension BudgetViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = 10
       // tableView.backgroundView = count == 0 ? emptyStateView : nil
        //tableView.separatorStyle = count == 0 ? .none : .singleLine
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
    
    
}

extension BudgetViewController: UITableViewDelegate{
    
}

