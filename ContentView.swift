
import SwiftUI

struct ContentView: View {
  
  var body: some View {
    VStack {
      HeaderView()
      
      ScrollView(.vertical) {
        HomeStories()
        Divider()
        PostView(content: "sea", description: "sea")
      }
      TabBarView()
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
struct HeaderView: View {
  var body: some View {
    HStack {
      Image("arrow")
        .resizable()
        .frame(width: 100, height: 48)
        .aspectRatio(contentMode: .fit)
      
      Spacer()
      
      HStack(spacing: 20) {
        Image(systemName: "plus")
        Image(systemName: "heart")
        Image(systemName: "message")
      }
    }
    .padding(.horizontal, 16)
    .padding(.vertical, 8)
  }
}
struct StoryView: View {
    var image: String
     var name: String
     private var imageSize: CGFloat = 60
     private var lineWidth: CGFloat = 70
     private var overlayColors: [Color] = [ .blue, .purple, .red, .pink, .yellow, .orange]
     
     public init(image: String, name: String) {
       self.image = image
       self.name = name
  }
  
    var body: some View {
     
        ZStack {
        VStack {
          Image("Screenshot 2024-06-18 at 10.16.07 AM")
            .resizable()
            .frame(width: 70, height: 70)
            .cornerRadius(200)
        }
          Spacer()
        .overlay(
          Circle()
            .stroke(
              LinearGradient(colors: overlayColors, startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: lineWidth)
            .frame(width:  8, height:  8)
        )
        .frame(width:  10, height:  10)
      }
    }
  }
struct HomeStories: View {
  
  var body: some View {
    ScrollView(.horizontal) {
      HStack(spacing: 16) {
        StoryView(image: "Screenshot 2024-06-18 at 10.16.07 AM", name: "ham")
        StoryView(image: "B8CB29AD-73C7-4943-99E4-4BC5B71B43CB", name: "sim")
        StoryView(image: "Screenshot 2024-06-18 at 10.16.07 AM", name: "sam")
        StoryView(image: "Screenshot 2024-06-18 at 10.16.07 AM", name: "rahul")
    
      }
      .padding(.horizontal, 8)
    }
    .padding(.vertical, 12)
  }
  
}

struct PostHeader: View {
  
  private var imageSize: CGFloat = 100
  
  var body: some View {
    HStack {
      HStack {
        Image("Screenshot 2024-06-18 at 10.16.07 AM")
          .resizable()
          .frame(width: 20, height: 20)
          .cornerRadius(20)
        
        Text("rachit")
          .font(.caption)
          .fontWeight(.bold)
      }
      
      Spacer()
      
      Image(systemName: "ellipsis")
    }
    .padding(.vertical, 12)
    .padding(.horizontal, 8)
  }
}

struct PostContent: View {
  
  var name: String
  
  public init(name: String) {
    self.name = name
  }
  var body: some View {
    
    VStack {
      Image("sea")
        .resizable()
        .frame(width: 300 , height: 400)
        .aspectRatio(contentMode: .fit)
      
      HStack {
        HStack {
            Button {
            }label: {
                 Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "envelope")
            }
        }
        Spacer()
        
        Image(systemName: "bookmark")
      }
      .padding(.horizontal, 12)
      .padding(.vertical, 10)
    }
  }
}
struct PostView: View {
  
  var postName: String
  var description: String
  
  public init(content: String, description: String) {
    self.postName = content
    self.description = description
  }
  var body: some View {
    VStack(alignment: .leading, spacing: 0) {
      PostHeader()
      
      PostContent(name: postName)
    }
  }
}

struct TabBarView: View {
  var body: some View {
    VStack(spacing: 0) {
      Divider()
      HStack {
        Image(systemName: "house")
        Spacer()
        Image(systemName: "magnifyingglass")
        Spacer()
        Image(systemName: "display")
        Spacer()
        Image(systemName: "bag")
        Spacer()
        Image("B8CB29AD-73C7-4943-99E4-4BC5B71B43CB")
          .resizable()
          .frame(width: 22, height: 22)
          .cornerRadius(50)
      }
      .padding(.horizontal, 24)
      .padding(.top, 12)
    }
  }
}
