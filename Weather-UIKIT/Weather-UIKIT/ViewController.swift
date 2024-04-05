//
//  ViewController.swift
//  Weather-UIKIT
//
//  Created by Vitor Ernane Guedes on 28/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var backGroundView: UIImageView = {
        
        let imageview = UIImageView(frame: .zero)
        
        imageview.image = UIImage(named: "Background 1")
        imageview.contentMode = .scaleAspectFill
        imageview.translatesAutoresizingMaskIntoConstraints = false
        
        return imageview
        
    } ()
    
    
    private lazy var headerView: UIView = {
        
        let view = UIView(frame: .zero)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        
        
        return view
        
    }()
    
    private lazy var cityLabel: UILabel = {
        
        let label = UILabel(frame: .zero)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "Uberlândia"
        label.textAlignment = .center
        label.textColor = UIColor(named: "blueFont")
        
        return label
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel(frame: .zero)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        label.text = "24•C"
        label.textAlignment = .left
        label.textColor = UIColor(named: "blueFont")
        
        return label
    } ()
    
    private lazy var weatherIcon: UIImageView = {
        
        let imageView = UIImageView(frame: .zero)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "sunIcon")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
        
    }()
    
    private lazy var humidityLabel: UILabel = {
        
        let label = UILabel(frame: .zero)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.text = "Umidade"
        label.textColor = UIColor(named: "contrastColor")
        
        return label
    }()
    
    private lazy var humidityValueLabel: UILabel = {
        
        let label = UILabel(frame: .zero)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.text = "1000mm"
        label.textColor = UIColor(named: "contrastColor")
        
        return label
    }()
    
    private lazy var humidityStackView: UIStackView = {
        
        let stackView = UIStackView(arrangedSubviews: [humidityLabel, humidityValueLabel])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        // stackView.backgroundColor = UIColor.white
        
        return stackView
    }()
    
    private lazy var windLabel: UILabel = {
        
        let label = UILabel(frame: .zero)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.text = "Vento"
        label.textColor = UIColor(named: "contrastColor")
        
        return label
    }()
    
    private lazy var windValueLabel: UILabel = {
        
        let label = UILabel(frame: .zero)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.text = "10km/h"
        label.textColor = UIColor(named: "contrastColor")
        
        return label
    }()
    
    private lazy var windStackView: UIStackView = {
        
        let stackView = UIStackView(arrangedSubviews: [windLabel, windValueLabel])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        // stackView.backgroundColor = UIColor.white
        
        return stackView
    }()
    
    
    // Aqui eu estou criando uma stack vier vertical e estou incluindo as duas horizontais dentro dela e depois setando apenas ela dentro da hierarquia.
     
    private lazy var statsStackView: UIStackView = {
        
        let stackView = UIStackView(arrangedSubviews: [humidityStackView, windStackView])
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 3
        stackView.backgroundColor = UIColor(named: "grayMidBlur")
        stackView.layer.cornerRadius = 10
        
        //esssa propiedade abaixo fala que dentro da stackView Vertical pode haver margens e ele seta as margens dentro dela de acordo com as stackViews horizontais.
        
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20,
                                                                     leading: 20,
                                                                     bottom: 20,
                                                                     trailing: 20)
        
        return stackView
    }()
    
    
    
 // Métodos do Ciclo de Vida
    
    
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
    
    // Hierarquia de construção das telas
    
    private func setHierarchy() {
        
        view.addSubview(backGroundView)
        view.addSubview(headerView)
        view.addSubview(statsStackView)
        
        headerView.addSubview(cityLabel)
        headerView.addSubview(temperatureLabel)
        headerView.addSubview(weatherIcon)
        
        
    }
    
    private func setConstraints (){
        
    // Constraints do background
        
        NSLayoutConstraint.activate([
            
        backGroundView.topAnchor.constraint(equalTo: view.topAnchor),
            
        backGroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
        backGroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        backGroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        
    //Constraints da header onde irá aparecer a temperatura, label e imagem.
        
        NSLayoutConstraint.activate([
            
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            
            headerView.heightAnchor.constraint(equalToConstant: 169),
            
        ])
        
        NSLayoutConstraint.activate([
            
            cityLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 15),
            cityLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
            cityLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15),
            cityLabel.heightAnchor.constraint(equalToConstant: 20)
        
        ])
        
        NSLayoutConstraint.activate([
            
            temperatureLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10),
            temperatureLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 26),
    
        ])
        
        NSLayoutConstraint.activate([
            
            weatherIcon.heightAnchor.constraint(equalToConstant: 86),
            weatherIcon.widthAnchor.constraint(equalToConstant: 86),
            
            weatherIcon.leadingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor, constant: 15),
            weatherIcon.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant: -26),
            weatherIcon.centerYAnchor.constraint(equalTo: temperatureLabel.centerYAnchor),
            
            ])
        
        
        NSLayoutConstraint.activate([
        
            statsStackView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 24),
            statsStackView.widthAnchor.constraint(equalToConstant: 206),
            statsStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
            
    }
    
}

