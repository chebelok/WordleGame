import UIKit

class ViewController: UIViewController {
    
    let answer = "there"
    private var guesses: [[Character?]] = Array(repeating: Array(repeating: nil, count: 5), count: 6)
    
    let keyboard = KeyboardViewController()
    let board = BoardViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        addChildren()
    }
    private func addChildren(){
        addChild(keyboard)
        keyboard.didMove(toParent: self)
        keyboard.delegate = self
        keyboard.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(keyboard.view)
        
        
        addChild(board)
        board.didMove(toParent: self)
        board.view.translatesAutoresizingMaskIntoConstraints = false
        board.datasource = self
        view.addSubview(board.view)
        
        addConstraints()
        
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            board.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            board.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            board.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            board.view.bottomAnchor.constraint(equalTo: keyboard.view.topAnchor),
            board.view.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6),

            keyboard.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            keyboard.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            keyboard.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }


}

extension ViewController: KeyboardViewControllerDelegate {
    func keyboardViewController(_ vc: KeyboardViewController, didTapKey letter: Character) {
        print(letter)
    }
}

extension ViewController: BoardViewControllerDatasource {
//    func boxColor(at indexPath: IndexPath) -> UIColor? {
//        <#code#>
//    }
    
    var currentGuesses: [[Character?]] {
        return guesses
    }
}
