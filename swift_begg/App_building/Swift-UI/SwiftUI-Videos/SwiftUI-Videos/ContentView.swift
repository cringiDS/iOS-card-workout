import SwiftUI

struct ContentView: View {
    var videos: [Video] = VideoList.topTwelve
    
    var body: some View {
        NavigationView {
            
            List(videos) { video in
                HStack(alignment: .top, spacing: 11) {
                    
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90.0)
                        .cornerRadius(8)
                    
                VStack(alignment: .leading) {
                    Text(video.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.75)
                    
                        Spacer().frame(height: 5)
                        
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    
                }
                
                //.padding(.vertical, 5) // Optional padding for each list item
                
            }.navigationTitle("Cringi Videos")
            
        }.listStyle(PlainListStyle()) // Use PlainListStyle to remove default padding
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(videos: VideoList.topTwelve)
    }
}

