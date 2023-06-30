//
//  ButtonModifiers.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 30.06.2023.
//

import SwiftUI


struct ButtonPress: ViewModifier {
    let action : () -> Void
    @Binding var isPressed: Bool
    
    func body(content: Content) -> some View {
        content
            .onTapGesture {
                action()
                print("onTap")
            }
            .simultaneousGesture(
                DragGesture(minimumDistance: 0)
                    .onChanged() {_ in
                        print("onChanged")
                        isPressed = true
                    }
                    .onEnded(){ _ in
                        print("onEnded")
                        isPressed = false
                    }
            )
    }
}


extension View {
    func onTapGesture(action: @escaping () -> Void, isPressed: Binding<Bool>) -> some View {
        self.modifier(ButtonPress(action: action, isPressed: isPressed))
    }
}


class MyTapGesture : UITapGestureRecognizer {

    var didBeginTouch: (()->Void)?
    var didEndTouch: (()->Void)?

    init(target: Any?, action: Selector?, didBeginTouch: (()->Void)? = nil, didEndTouch: (()->Void)? = nil) {
        super.init(target: target, action: action)
        self.didBeginTouch = didBeginTouch
        self.didEndTouch = didEndTouch
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesBegan(touches, with: event)
        self.didBeginTouch?()
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) {
        super.touchesEnded(touches, with: event)
        self.didEndTouch?()
    }
}

struct TouchesHandler: UIViewRepresentable {
    var didBeginTouch: (()->Void)?
    var didEndTouch: (()->Void)?
    var action: () -> Void

    func makeUIView(context: UIViewRepresentableContext<TouchesHandler>) -> UIView {
        let view = UIView(frame: .zero)
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(context.coordinator.makeGesture(didBegin: didBeginTouch, didEnd: didEndTouch))
        return view;
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<TouchesHandler>) {
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }

    class Coordinator {
        @objc
        func action(_ sender: Any?) {
            action()
        }

        func makeGesture(didBegin: (()->Void)?, didEnd: (()->Void)?) -> MyTapGesture {
            MyTapGesture(target: self, action: #selector(self.action(_:)), didBeginTouch: didBegin, didEndTouch: didEnd)
        }
    }
    typealias UIViewType = UIView
}

struct UIButtonPress: ViewModifier {
    let action : () -> Void
    @Binding var isPressed: Bool
    
    func body(content: Content) -> some View {
        content
            .overlay(TouchesHandler(didBeginTouch: {
                isPressed = true
                action()
                print(">> did begin")
            }, didEndTouch: {
                isPressed = false
                print("<< did end")
            }))
    }
    
}


extension View {
    func addTapGesture(action: @escaping () -> Void, isPressed: Binding<Bool>) -> some View {
        self.modifier(UIButtonPress(action: action, isPressed: isPressed))
    }
}
