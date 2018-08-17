// Copyright DApps Platform Inc. All rights reserved.

import UIKit

protocol WelcomeViewControllerDelegate: class {
    func didPressCreateWallet(in viewController: WelcomeViewController, createWalletViewModel: CreateWalletViewModel)

    func didPressImportWallet(in viewController: WelcomeViewController)

}

final class WelcomeViewController: UIViewController {

    var viewModel = WelcomeViewModel()
    weak var delegate: WelcomeViewControllerDelegate?

    var wellcomeView: WelcomeView = {
        let wellcomeView = WelcomeView(frame: .zero)
        return wellcomeView
    }()
    var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor.white
        return scrollView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        wellcomeView.delegate = self
        scrollView.delegate = self
        self.view.addSubview(scrollView)
        scrollView.addSubview(wellcomeView)
        let viewHeight: CGFloat  = wellcomeView.calculationheight()
        wellcomeView.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: viewHeight)
        scrollView.frame = CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        scrollView.contentSize = CGSize.init(width: UIScreen.main.bounds.size.width, height: viewHeight)
    }
}

extension WelcomeViewController: WelcomeViewDelegate {

    func didPressCreateWallet(createWalletViewModel: CreateWalletViewModel) {
        delegate?.didPressCreateWallet(in: self, createWalletViewModel: createWalletViewModel)
    }
    func didPressImportWallet() {
        delegate?.didPressImportWallet(in: self)
    }

    func didPressServise() {
    }
}

extension WelcomeViewController: UIScrollViewDelegate {

    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        wellcomeView.reset()
    }
}
