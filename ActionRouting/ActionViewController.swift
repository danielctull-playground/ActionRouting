
import UIKit

class ActionViewController: UIViewController {

	@IBAction private func showScreen(_ sender: AnyObject) {
		let appDelegate = UIApplication.shared.delegate as? AppDelegate
		appDelegate?.showScreen(.content)
	}
}
