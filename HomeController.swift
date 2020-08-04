//
//  HomeController.swift
//  AppleBooks
//
//  Created by Dev on 27/06/2020.
//  Copyright © 2020 Keyrewit. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(BackgroundScrollView)
        
        BackgroundScrollView.addSubview(BestsellersBooksScrollView)
        view.backgroundColor = UIColor.white
        BackgroundScrollView.addSubview(HeadingView)
        view.addSubview(BottomFooterView)
        BottomFooterView.addSubview(FooterSearchIcon)
        BottomFooterView.addSubview(FooterHeadphone)
        BottomFooterView.addSubview(FooterBook)
        BottomFooterView.addSubview(FooterReadingLabel)
        BottomFooterView.addSubview(FooterLibraryLabel)
        BestsellersBooksScrollView.addSubview(BestsellersBooksStackView)
        HeadingView.addSubview(ReadingNowText)
        HeadingView.addSubview(Moon)
        HeadingView.addSubview(NewReadmoreWithDailyGoalsText)
        HeadingView.addSubview(HomeControllerAvatar)
        BackgroundScrollView.addSubview(HeaderSeperatorLine)
        BackgroundScrollView.addSubview(NotReadingAnythingText)
        BackgroundScrollView.addSubview(ExploreBookStoreView)
        ExploreBookStoreView.addSubview(BookExploreBag)
        ExploreBookStoreView.addSubview(ExplorethebookStoreText)
        ExploreBookStoreView.addSubview(ForwardArrowSign)
        BackgroundScrollView.addSubview(ExploreAudiobooksView)
        ExploreAudiobooksView.addSubview(AudioBooksForwardArrowSign)
        ExploreAudiobooksView.addSubview(ExploreAudioBooksHeadphone)
        ExploreAudiobooksView.addSubview(ExploreAudioBookText)
        

        ConstructingScrollandStackViews()
        AddingBooksPage1()
        
        
        NSLayoutConstraint.activate([
            
            BackgroundScrollView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            BackgroundScrollView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            BackgroundScrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            BackgroundScrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),

            
            HeadingView.topAnchor.constraint(equalTo: BackgroundScrollView.topAnchor, constant: 40),
            HeadingView.widthAnchor.constraint(equalTo: BackgroundScrollView.widthAnchor, multiplier: 0.85),
            HeadingView.heightAnchor.constraint(equalToConstant: 80),
            HeadingView.centerXAnchor.constraint(equalTo: BackgroundScrollView.centerXAnchor),
            
            ReadingNowText.leadingAnchor.constraint(equalTo: HeadingView.leadingAnchor),
            
            Moon.leadingAnchor.constraint(equalTo: HeadingView.leadingAnchor),
            Moon.topAnchor.constraint(equalTo: ReadingNowText.bottomAnchor, constant: 7),
            Moon.heightAnchor.constraint(equalToConstant: 20),
            Moon.widthAnchor.constraint(equalToConstant: 20),
            
            NewReadmoreWithDailyGoalsText.leadingAnchor.constraint(equalTo: Moon.trailingAnchor, constant: 5),
            NewReadmoreWithDailyGoalsText.centerYAnchor.constraint(equalTo: Moon.centerYAnchor),

            
            HomeControllerAvatar.trailingAnchor.constraint(equalTo: HeadingView.trailingAnchor),
            
            HeaderSeperatorLine.topAnchor.constraint(equalTo: HeadingView.bottomAnchor, constant: 15),
            HeaderSeperatorLine.heightAnchor.constraint(equalToConstant: 1),
            HeaderSeperatorLine.widthAnchor.constraint(equalTo: HeadingView.widthAnchor),
            HeaderSeperatorLine.centerXAnchor.constraint(equalTo: BackgroundScrollView.centerXAnchor),
            
            NotReadingAnythingText.widthAnchor.constraint(equalTo: BackgroundScrollView.widthAnchor, multiplier: 0.6),
            NotReadingAnythingText.topAnchor.constraint(equalTo: HeaderSeperatorLine.bottomAnchor, constant: 30),
            NotReadingAnythingText.heightAnchor.constraint(equalToConstant: 150),
            NotReadingAnythingText.centerXAnchor.constraint(equalTo: HeaderSeperatorLine.centerXAnchor),
            
            ExploreBookStoreView.topAnchor.constraint(equalTo: NotReadingAnythingText.bottomAnchor),
            ExploreBookStoreView.widthAnchor.constraint(equalTo: HeaderSeperatorLine.widthAnchor),
            ExploreBookStoreView.heightAnchor.constraint(equalToConstant: 65),
            ExploreBookStoreView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            BookExploreBag.leadingAnchor.constraint(equalTo: ExploreBookStoreView.leadingAnchor, constant: 15),
            BookExploreBag.centerYAnchor.constraint(equalTo: ExploreBookStoreView.centerYAnchor),
            
            ForwardArrowSign.trailingAnchor.constraint(equalTo: ExploreBookStoreView.trailingAnchor, constant: -15),
            ForwardArrowSign.centerYAnchor.constraint(equalTo: ExploreBookStoreView.centerYAnchor),
            ForwardArrowSign.heightAnchor.constraint(equalToConstant: 20),
            ForwardArrowSign.widthAnchor.constraint(equalToConstant: 20),
            
            ExplorethebookStoreText.leadingAnchor.constraint(equalTo: BookExploreBag.trailingAnchor, constant: 15),
            ExplorethebookStoreText.centerYAnchor.constraint(equalTo: ExploreBookStoreView.centerYAnchor),
            
            ExploreAudiobooksView.topAnchor.constraint(equalTo: ExploreBookStoreView.bottomAnchor, constant: 15),
            ExploreAudiobooksView.widthAnchor.constraint(equalTo: ExploreBookStoreView.widthAnchor),
            ExploreAudiobooksView.heightAnchor.constraint(equalTo: ExploreBookStoreView.heightAnchor),
            ExploreAudiobooksView.centerXAnchor.constraint(equalTo: ExploreBookStoreView.centerXAnchor),

            
            AudioBooksForwardArrowSign.trailingAnchor.constraint(equalTo: ExploreAudiobooksView.trailingAnchor, constant: -15),
            AudioBooksForwardArrowSign.centerYAnchor.constraint(equalTo: ExploreAudiobooksView.centerYAnchor),
            AudioBooksForwardArrowSign.heightAnchor.constraint(equalToConstant: 20),
            AudioBooksForwardArrowSign.widthAnchor.constraint(equalToConstant: 20),

            
            ExploreAudioBooksHeadphone.leadingAnchor.constraint(equalTo: ExploreAudiobooksView.leadingAnchor, constant: 15),
            ExploreAudioBooksHeadphone.centerYAnchor.constraint(equalTo: ExploreAudiobooksView.centerYAnchor),

            
            ExploreAudioBookText.leadingAnchor.constraint(equalTo: ExploreAudioBooksHeadphone.trailingAnchor, constant: 15),
            ExploreAudioBookText.centerYAnchor.constraint(equalTo: ExploreAudiobooksView.centerYAnchor),
            
            BottomFooterView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            BottomFooterView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            BottomFooterView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            BottomFooterView.heightAnchor.constraint(equalToConstant: 60),
            
            FooterSearchIcon.trailingAnchor.constraint(equalTo: BottomFooterView.trailingAnchor, constant: -15),
            FooterSearchIcon.heightAnchor.constraint(equalToConstant: 20),
            FooterSearchIcon.widthAnchor.constraint(equalToConstant: 20),
            
            FooterHeadphone.trailingAnchor.constraint(equalTo: FooterSearchIcon.leadingAnchor, constant: -40),
            FooterHeadphone.heightAnchor.constraint(equalToConstant: 20),
            FooterHeadphone.widthAnchor.constraint(equalToConstant: 20),
            
            FooterBook.leftAnchor.constraint(equalTo: BottomFooterView.leftAnchor),
            FooterBook.heightAnchor.constraint(equalToConstant: 20),
            FooterBook.widthAnchor.constraint(equalToConstant: 20),
            
            FooterReadingLabel.leadingAnchor.constraint(equalTo: BottomFooterView.leadingAnchor, constant: 5),
            FooterReadingLabel.bottomAnchor.constraint(equalTo: BottomFooterView.bottomAnchor),
            FooterReadingLabel.heightAnchor.constraint(equalToConstant: 20),
            FooterReadingLabel.widthAnchor.constraint(equalTo: BottomFooterView.widthAnchor, multiplier: 1/5),
            
            FooterLibraryLabel.leadingAnchor.constraint(equalTo: FooterReadingLabel.trailingAnchor, constant: 1),
            FooterLibraryLabel.bottomAnchor.constraint(equalTo: BottomFooterView.bottomAnchor),
            FooterLibraryLabel.heightAnchor.constraint(equalToConstant: 20),
            FooterLibraryLabel.widthAnchor.constraint(equalTo: BottomFooterView.widthAnchor, multiplier: 1/5),

        ])
    }
    
    lazy var HeadingView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = UIColor.red
        return view
    }()
    
    lazy var HomeControllerAvatar: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Avatar")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var ExplorethebookStoreText: UILabel = {
        let label = UILabel()
        label.text = "Explore the Book Store"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont(name:"Baskerville-SemiBold", size: 20)
        return label
    }()
    
    lazy var HeaderSeperatorLine: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var ReadingNowText: UILabel = {
        let label = UILabel()
        label.text = "Reading Now"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont(name:"Baskerville-Bold", size: 45)
        return label
    }()
    
    lazy var Moon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Moon")?.withTintColor(UIColor.lightGray)
        return imageView
    }()
    
    
    lazy var NewReadmoreWithDailyGoalsText: UILabel = {
        let label = UILabel()
        label.text = "New! Read more with daily reading goals"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.left
        label.textColor = UIColor.init(red: 109/255, green: 172/255, blue: 223/255, alpha: 1.0)
        label.font = UIFont(name:"AppleSDGothicNeo-Bold", size: 15)
        return label
    }()
    
     lazy var NotReadingAnythingText: UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.textAlignment = NSTextAlignment.center
        view.insertText("You are not reading anything at the moment. Find your next great read in Apple Books.")
        view.textColor = UIColor.gray
        view.isEditable = false
        view.font = UIFont.systemFont(ofSize: 16)
        return view
    }()
    
    lazy var ExploreBookStoreView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        view.layer.cornerRadius = 10
        return view
    }()
    
    lazy var BookExploreBag: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Bag")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var ForwardArrowSign: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Forwardarrow")?.withTintColor(.gray)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var ExploreAudiobooksView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        view.layer.cornerRadius = 10
        return view
    }()
    
    lazy var AudioBooksForwardArrowSign: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Forwardarrow")?.withTintColor(.gray)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var ExploreAudioBooksHeadphone: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Headphones")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var ExploreAudioBookText: UILabel = {
        let label = UILabel()
        label.text = "Explore Audio Books"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont(name:"Baskerville-SemiBold", size: 20)
        return label
    }()
    
    lazy var BottomFooterView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.darkGray.cgColor
        return view
    }()
    
    lazy var FooterReadingLabel: UILabel = {
        let label = UILabel()
        label.text = "Reading Now"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.center
        label.backgroundColor = UIColor.red
//        label.font = UIFont(name:"Baskerville-Bold", size: 45)
        return label
    }()
    
    lazy var FooterLibraryLabel: UILabel = {
        let label = UILabel()
        label.text = "Library"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    lazy var FooterBookStoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Book Store"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    lazy var FooterAudioBooksLabel: UILabel = {
        let label = UILabel()
        label.text = "Audiobooks"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    lazy var FooterSearchLabel: UILabel = {
        let label = UILabel()
        label.text = "Search"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    
    lazy var FooterSearchIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Search")?.withTintColor(UIColor.lightGray)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var FooterHeadphone: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Headphones")?.withTintColor(UIColor.lightGray)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var FooterBook: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Book")?.withTintColor(UIColor.lightGray)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    let pictureSize = CGFloat(250)

    
    func AddingBooksPage1() {
        var image1: UIImage = UIImage(named: "Theotherpassenger")!
        let Theotherpassenger = UIImageView(image: image1)
        Theotherpassenger.translatesAutoresizingMaskIntoConstraints = false
//        Theotherpassenger.contentMode = .scaleAspectFit
        Theotherpassenger.clipsToBounds = true
        
        var image2: UIImage = UIImage(named: "Thesilentwife")!
        let Thesilentwife = UIImageView(image: image2)
        Thesilentwife.translatesAutoresizingMaskIntoConstraints = false
//        Thesilentwife.contentMode = .scaleToFill
        Thesilentwife.clipsToBounds = true
        
        var image3: UIImage = UIImage(named: "Thelasthouseguest")!
        let Thelasthouseguest = UIImageView(image: image3)
        Thelasthouseguest.translatesAutoresizingMaskIntoConstraints = false
//        Thelasthouseguest.contentMode = .scaleAspectFit
        Thelasthouseguest.clipsToBounds = true
        
        var image4: UIImage = UIImage(named: "Thepowerofritual")!
        let Thepowerofritual = UIImageView(image: image4)
        Thepowerofritual.translatesAutoresizingMaskIntoConstraints = false
//        Thepowerofritual.contentMode = .scaleAspectFit
        Thepowerofritual.clipsToBounds = true
        
        let image5: UIImage = UIImage(named: "TheGuestList")!
        let TheGuestList = UIImageView(image: image5)
        TheGuestList.translatesAutoresizingMaskIntoConstraints = false
        TheGuestList.contentMode = .scaleAspectFit
        TheGuestList.clipsToBounds = true

        let image6: UIImage = UIImage(named: "TheHeatWave")!
        let TheHeatWave = UIImageView(image: image6)
        TheHeatWave.translatesAutoresizingMaskIntoConstraints = false
        TheHeatWave.contentMode = .scaleAspectFit
        TheHeatWave.clipsToBounds = true

        let image7: UIImage = UIImage(named: "HeatWave")!
        let HeatWave = UIImageView(image: image7)
        HeatWave.translatesAutoresizingMaskIntoConstraints = false
        HeatWave.contentMode = .scaleAspectFit
        HeatWave.clipsToBounds = true

        let image8: UIImage = UIImage(named: "TheGrieveChild")!
        let TheGrieveChild = UIImageView(image: image8)
        TheGrieveChild.translatesAutoresizingMaskIntoConstraints = false
        TheGrieveChild.contentMode = .scaleAspectFit
        TheGrieveChild.clipsToBounds = true
        
        let image9: UIImage = UIImage(named: "TheWisdomPot")!
        let TheWisdomPot = UIImageView(image: image9)
        TheWisdomPot.translatesAutoresizingMaskIntoConstraints = false
        TheWisdomPot.contentMode = .scaleAspectFit
        TheWisdomPot.clipsToBounds = true

        let image10: UIImage = UIImage(named: "ThePrisonDoctor")!
        let ThePrisonDoctor = UIImageView(image: image10)
        ThePrisonDoctor.translatesAutoresizingMaskIntoConstraints = false
        ThePrisonDoctor.contentMode = .scaleAspectFit
        ThePrisonDoctor.clipsToBounds = true

        
        BestsellersBooksStackView.addArrangedSubview(Theotherpassenger)
        BestsellersBooksStackView.addArrangedSubview(Thesilentwife)
        BestsellersBooksStackView.addArrangedSubview(Thelasthouseguest)
        BestsellersBooksStackView.addArrangedSubview(Thepowerofritual)
        BestsellersBooksStackView.addArrangedSubview(TheGuestList)
        BestsellersBooksStackView.addArrangedSubview(TheHeatWave)
        BestsellersBooksStackView.addArrangedSubview(HeatWave)
        BestsellersBooksStackView.addArrangedSubview(TheGrieveChild)
        BestsellersBooksStackView.addArrangedSubview(TheWisdomPot)
        BestsellersBooksStackView.addArrangedSubview(ThePrisonDoctor)
        

        
        NSLayoutConstraint.activate([
//            Theotherpassenger.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 50),
            Theotherpassenger.widthAnchor.constraint(equalToConstant: 100),
//            Theotherpassenger.heightAnchor.constraint(equalToConstant: 100),
            ])
    }
    
    func ConstructingScrollandStackViews() {
        
        NSLayoutConstraint.activate([
            

            BestsellersBooksScrollView.widthAnchor.constraint(equalTo: BackgroundScrollView.widthAnchor, multiplier: 0.9),
            BestsellersBooksScrollView.centerXAnchor.constraint(equalTo: BackgroundScrollView.centerXAnchor),
            BestsellersBooksScrollView.heightAnchor.constraint(equalToConstant: 200),
            BestsellersBooksScrollView.topAnchor.constraint(equalTo: BackgroundScrollView.topAnchor, constant: 600),
            
            BestsellersBooksStackView.leadingAnchor.constraint(equalTo: BestsellersBooksScrollView.leadingAnchor, constant: 5),
            BestsellersBooksStackView.trailingAnchor.constraint(equalTo: BestsellersBooksScrollView.trailingAnchor, constant: -5),
            BestsellersBooksStackView.heightAnchor.constraint(equalTo: BestsellersBooksScrollView.heightAnchor, multiplier: 0.9),
            BestsellersBooksStackView.topAnchor.constraint(equalTo: BestsellersBooksScrollView.topAnchor, constant: 5)

            ])
    }
    
    lazy var BackgroundScrollView: UIScrollView = {
        let scrollview = UIScrollView()
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        scrollview.isScrollEnabled = true
        scrollview.scrollsToTop = true
        let screensize: CGRect = UIScreen.main.bounds
        let screenWidth = screensize.width
        let screenHeight = screensize.height
        scrollview.contentSize = CGSize(width: screenWidth, height: screenHeight)
        return scrollview
    }()
    
    lazy var BestsellersBooksScrollView: UIScrollView = {
        let scrollview = UIScrollView()
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        scrollview.showsHorizontalScrollIndicator = false
        scrollview.layer.cornerRadius = 5
        return scrollview
    }()
    
    lazy var BestsellersBooksStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = .horizontal
        stackview.spacing = 15
        stackview.distribution = .fillEqually
        stackview.layer.cornerRadius = 5
//        stackview.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return stackview
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
}
