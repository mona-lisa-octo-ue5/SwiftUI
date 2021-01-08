//
//  SetView.swift
//  Set
//
//  Created by 石玉龙 on 2021/1/8.
//

import SwiftUI

struct SetView: View {
    var body: some View {
        NavigationView{
            List{
                Section{
                    NavigationLink(destination: DetailView(message: "第一分区，第一行")){
                        HStack{
                            ZStack{
                                Image(systemName: "airplane")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.orange)
                            .cornerRadius(6)
                            Text("Airplane Mode")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第一分区，第二行")){
                        HStack{
                            ZStack{
                                Image(systemName: "wifi")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.blue)
                            .cornerRadius(6)
                            Text("Wi-Fi")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第一分区，第三行")){
                        HStack{
                            ZStack{
                                Image(systemName: "antenna.radiowaves.left.and.right")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.green)
                            .cornerRadius(6)
                            Text("Cellular")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第一分区，第四行")){
                        HStack{
                            ZStack{
                                Image(systemName: "personalhotspot")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.green)
                            .cornerRadius(6)
                            Text("Personal Hotspot")
                        }
                    }
                }
                Section{
                    NavigationLink(destination: DetailView(message: "第二分区，第一行")){
                        HStack{
                            ZStack{
                                Image(systemName: "app.badge")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.red)
                            .cornerRadius(6)
                            Text("Notifications")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第二分区，第二行")){
                        HStack{
                            ZStack{
                                Image(systemName: "moon.fill")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.purple)
                            .cornerRadius(6)
                            Text("Do Not Disturb")
                        }
                    }
                }
                Section{
                    NavigationLink(destination: DetailView(message: "第三分区，第一行")){
                        HStack{
                            ZStack{
                                Image(systemName: "gear")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("General")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第三分区，第二行")){
                        HStack{
                            ZStack{
                                Image(systemName: "faceid")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("Face ID & Passcode")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第三分区，第三行")){
                        HStack{
                            ZStack{
                                Image(systemName: "battery.100")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("Battery")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第三分区，第四行")){
                        HStack{
                            ZStack{
                                Image(systemName: "hand.raised.fill")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("Privacy")
                        }
                    }
                }
                Section{
                    NavigationLink(destination: DetailView(message: "第四分区，第一行")){
                        HStack{
                            ZStack{
                                Image(systemName: "key.fill")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("Passwords & Accounts")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第四分区，第二行")){
                        HStack{
                            ZStack{
                                Image(systemName: "envelope.fill")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("Mail")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第四分区，第三行")){
                        HStack{
                            ZStack{
                                Image(systemName: "phone.fill")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("Phone")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第四分区，第四行")){
                        HStack{
                            ZStack{
                                Image(systemName: "message.fill")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("Message")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第四分区，第五行")){
                        HStack{
                            ZStack{
                                Image(systemName: "video.fill")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("FaceTime")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第四分区，第六行")){
                        HStack{
                            ZStack{
                                Image(systemName: "camera.fill")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("Camera")
                        }
                    }
                    NavigationLink(destination: DetailView(message: "第四分区，第七行")){
                        HStack{
                            ZStack{
                                Image(systemName: "book.fill")
                                    .font(.callout)
                                    .colorScheme(.dark)
                            }
                            .frame(width: 28, height: 28)
                            .background(Color.gray)
                            .cornerRadius(6)
                            Text("Books")
                        }
                    }
                }
            }
            .navigationBarTitle("Settings")
            .listStyle(GroupedListStyle())
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SetView_Previews: PreviewProvider {
    static var previews: some View {
        SetView()
    }
}
