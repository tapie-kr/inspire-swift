//
//  ImagePreviewInput.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/3/25.
//

import SwiftUI
import PhotosUI

public struct ImagePreviewInput: View {
    @State var previewImage: UIImage?
    @State var isShowingPicker = false
    @State var isPressed: Bool = false
    @State var isLoading: Bool = false
    
    @Binding var selectedImage: UIImage?
    let placeholder: String?
    let shape: ImagePreviewInputShape
    let size: CGFloat
    let preview: String?
    let disabled: Bool
    
    public init(
        image selectedImage: Binding<UIImage?>,
        placeholder: String? = nil,
        shape: ImagePreviewInputShape = .default,
        size: CGFloat = 100,
        preview: String? = nil,
        disabled: Bool = false
    ) {
        self._selectedImage = selectedImage
        self.placeholder = placeholder
        self.shape = shape
        self.size = size
        self.preview = preview
        self.disabled = disabled
    }
    
    public var body: some View {
        Button {
            isShowingPicker = true
        } label: {
            photoContent
        }
        .disabled(disabled)
        .pressedBindable(isPressed: $isPressed)
        .sheet(isPresented: $isShowingPicker) {
            PHPickerView(selectedImage: $selectedImage)
        }
        .task {
            await loadPreviewImage()
        }
    }
    
    @ViewBuilder
    private var photoContent: some View {
        if let selectedImage {
            selectedImageView(image: selectedImage)
        } else if let previewImage {
            selectedImageView(image: previewImage)
        } else {
            placeholderView
        }
    }
    
    private func loadPreviewImage() async {
        guard let preview = preview,
              let url = URL(string: preview),
              previewImage == nil else { return }
        
        isLoading = true
        defer { isLoading = false }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let image = UIImage(data: data) {
                await MainActor.run {
                    self.previewImage = image
                }
            }
        } catch {
            print("Error loading preview image: \(error.localizedDescription)")
        }
    }
    
    private func selectedImageView(image: UIImage) -> some View {
        ZStack {
            Image(uiImage: image)
                .resizable()
                .scaledToFill()
                .interaction(disabled: disabled, pressed: isPressed, inverted: true)
                .frame(width: size, height: size)
                .radius(shape.radius)
                .borderRadius(.line.border, width: 1, radius: shape.radius)
            
            Typo("클릭해 바꾸기", size: .micro, weight: .medium, color: .solid.translucent.white._90)
                .padding(.vertical, spacingVars.mini)
                .padding(.horizontal, spacingVars.micro)
                .background(.ultraThinMaterial)
                .radius(.pill)
        }
    }
    
    private var foregroundColor: Color {
        disabled ? .content.disabled : .content.emphasized
    }
    
    private var placeholderView: some View {
        VStack(spacing: spacingVars.mini) {
            Icon(name: GlyphIcon.ADD_PHOTO_ALTERNATE, size: 24, color: foregroundColor)
            if let placeholder {
                Typo(placeholder, size: .petite, weight: .medium, color: foregroundColor)
            }
        }
        .frame(width: size, height: size)
        .interaction(disabled: disabled, pressed: isPressed, inverted: false)
        .background(Color.surface.default)
        .radius(shape.radius)
        .borderRadius(isPressed ? .grayscale.translucent._30 : .line.border, width: 1, radius: shape.radius)
    }
}

private struct PHPickerView: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedImage: UIImage?
    
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var configuration = PHPickerConfiguration(photoLibrary: .shared())
        configuration.filter = .images
        configuration.selectionLimit = 1
        
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        let parent: PHPickerView
        
        init(_ parent: PHPickerView) {
            self.parent = parent
        }
        
        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            parent.presentationMode.wrappedValue.dismiss()
            
            guard let provider = results.first?.itemProvider else { return }
            
            if provider.canLoadObject(ofClass: UIImage.self) {
                provider.loadObject(ofClass: UIImage.self) { [weak self] image, error in
                    if let error = error {
                        print("Error loading image: \(error.localizedDescription)")
                        return
                    }
                    
                    if let image = image as? UIImage {
                        DispatchQueue.main.async {
                            self?.parent.selectedImage = image
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var image: UIImage? = nil
    @Previewable @State var image1: UIImage? = nil
    @Previewable @State var image2: UIImage? = nil
    @Previewable @State var image3: UIImage? = nil
    
    VStack {
        ImagePreviewInput(image: $image, placeholder: "Placeholder", preview: "https://tapie.kr/thumbnails/sunrin_today.webp")
        ImagePreviewInput(image: $image1, placeholder: "Placeholder", shape: .circle)
        ImagePreviewInput(image: $image2, placeholder: "Placeholder", disabled: true)
        ImagePreviewInput(image: $image3, placeholder: "Placeholder", shape: .circle)
    }
}
