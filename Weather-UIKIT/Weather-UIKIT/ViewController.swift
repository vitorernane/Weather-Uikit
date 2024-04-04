//
//  ViewController.swift
//  Weather-UIKIT
//
//  Created by Vitor Ernane Guedes on 28/03/24.
//

import UIKit

class ViewController: UIViewController {
    
// Métodos do Ciclo de Vida
    
    private lazy var customView: UIView = {
        
        let view = UIView(frame: .zero)
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    } ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    
    //Métodos
    
    private func setupView() {
        
        view.backgroundColor = .white
        
        setHierarchy()
        setConstraints()
        
        
    }
    
    private func setHierarchy() {
        
        view.addSubview(customView)
        
    }
    
    private func setConstraints (){
        
        NSLayoutConstraint.activate([
            
        customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            
        customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            
        customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            
        customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            
        ])
        
    }
    
}

