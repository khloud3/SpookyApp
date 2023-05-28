//
//  ProfilePage.swift
//  SpookyApp
//
//  Created by khloud on 07/11/1444 AH.
//

import SwiftUI

struct ProfilePage: View {
    @State var shouldShowImagePicker = false
    @State var image: UIImage?
    
    var body: some View {
        NavigationStack{
            VStack{
                ImageProfileButton()
                NavigationLink(destination: EventPageView()){
                    ZStack{
                        Rectangle()
                            .fill(Color("Color1"))
                            .frame(width: 120 ,height: 40)
                            .cornerRadius(10)
                        Text("Lest's Start")
                            .foregroundColor(.white)
                            .font(.system(size: 15 ).bold())
                    }
                }
            }
        }
    }
}

struct MyProfile1_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
     struct ImagePicker : UIViewControllerRepresentable {
        @Binding var image: UIImage?
        
        private let controller = UIImagePickerController ()
        
        func makeCoordinator () -> Coordinator {
            return Coordinator(parent: self)
            
        }
        class Coordinator: NSObject, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
            let parent: ImagePicker
            init (parent: ImagePicker) {
                self.parent = parent
            }
            func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:
                                       [UIImagePickerController.InfoKey : Any]) {
                parent.image = info[.originalImage] as? UIImage
                picker.dismiss(animated: true)
            }
            
            func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
                picker.dismiss (animated: true)
            }
        }
         
         func makeUIViewController(context: Context) -> some UIViewController {
             controller.delegate = context.coordinator
             return controller
         }
         func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
         }
    }
