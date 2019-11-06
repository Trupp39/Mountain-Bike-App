import UIKit

 @IBDesignable class FlowControl: UIStackView {
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
    //MARK: Properties
    @IBInspectable var flowSize: CGSize = CGSize(width: 44.0, height: 44.0);
    @IBInspectable var flowCount: Int = 4;
    
    //MARK: Private Methods
    private func setupButtons() {
        for _ in 0..<flowCount{
            let button = UIButton();
            button.backgroundColor = UIColor.green;
        
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false;
            button.heightAnchor.constraint(equalToConstant: flowSize.height).isActive = true;
            button.widthAnchor.constraint(equalToConstant: flowSize.width).isActive = true;
        
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
