# edutec_hub

 New version: 
 3.24.3(stable)
 

# 目錄結構

/                         
└─ lib                    # test
   ├─ data                # 資料層
   │  ├─ models           # 資料模型
   │  └─ repositories     # 資料存取
   ├─ presentation        # 表現層
   │  ├─ screens          # 完整頁面
   │  └─ ui               # UI 組件
   ├─ state_management    # 狀態管理
   │  ├─ blocs            
   │  └─ cubit            
   ├─ config              # 設定區資料夾
   ├─ theme               # 主題
   └─ utils               # 工具類


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




# gen file command
flutter packages pub run build_runner build --delete-conflicting-outputs  