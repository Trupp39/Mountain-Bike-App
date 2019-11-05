import UIKit

class FlowControl: UIStackView {
    //MARK: Initialization
    private var flowButtons = [UIButton]();
    var flow = 4;
    override init(frame: CGRect) {
        super.init(frame: frame);
        setupButtons();
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder);
        setupButtons();
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        for _ in 0...3 {
            let button = UIButton();
            button.backgroundColor = UIColor.green;
        
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false;
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true;
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true;
        
            button.addTarget(self, action: #selector(FlowControl.flowButtonPress(button:)), for: .touchUpInside)
        
            // Add the button to the stack
            addArrangedSubview(button);
            
            flowButtons.append(button);
        }
    }
    
    @objc func flowButtonPress(button: UIButton) {
        print("Button pressed 👍")
    }
}
