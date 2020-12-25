//
//  RegistrationView.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/24.
//

import SwiftUI

struct RegistrationView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var selectedImage : Image?
    
    @State private var email : String = ""
    @State private var password : String = ""
    @State private var fullname : String = ""
    @State private var username : String = ""
    
    @State private var showPicker = false
  
    
    var body: some View {
        
        VStack {
            
            Button(action: {showPicker.toggle()}) {
                
                if selectedImage != nil {
                    selectedImage!
                        .resizable()
                        .scaledToFill()
                        .frame(width: 140, height: 140)
                        .clipped()
                        .clipShape(Circle())
                       
                    
                } else {
                    Image("plus_photo")
                        .resizable()
                        .renderingMode(.template)
                        .scaledToFill()
                        .frame(width: 140, height: 140)
                        .foregroundColor(.white)
                }
                
            }
            .padding(.top, 88)
            .padding(.bottom,16)
            .sheet(isPresented: $showPicker, content: {
                ImagePicker(image: $selectedImage)
            })
            
            
            
            VStack(spacing : 16) {
                
                CustomTextField(text: $email, placeholder: "Email", imageName: "envelope")
                
                CustomTextField(text: $password, placeholder: "Password", imageName: "lock",isSecure: true)
                
                CustomTextField(text: $fullname, placeholder: "Fullname", imageName: "person",isSecure: false)

                CustomTextField(text: $username, placeholder: "UserName", imageName: "person",isSecure: false)

                
            }
            
            Button(action: {}) {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .frame(width: 360, height: 50)
                    .background(Color.white)
                    .cornerRadius(25)
                    .clipShape(Capsule())
                    .padding()
            }

            
            Spacer()

            Button(action: {presentationMode.wrappedValue.dismiss()}) {
                HStack {
                    Text("Already Have an Account")
                        .font(.system(size: 14))
                    
                    Text("Sign In")
                        .font(.system(size: 12,weight : .semibold))
                }
                .foregroundColor(.white)
                .padding(.bottom,40)
            }
            
            
            Spacer()
        }
        .background(Color(#colorLiteral(red: 0.1198849156, green: 0.6302657127, blue: 0.951220572, alpha: 1)))
        .ignoresSafeArea(.all)
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

//MARK: - Image Picker

struct ImagePicker : UIViewControllerRepresentable {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var image : Image?
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)

    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
  
}

extension ImagePicker {
    
    class Coordinator : NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        let parent : ImagePicker
        
        init(_ parent : ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            guard let image = info[.originalImage] as? UIImage else {return}
            parent.image = Image(uiImage: image)
            
            parent.presentationMode.wrappedValue.dismiss()

        }
    }
    
    
}
