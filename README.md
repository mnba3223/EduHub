# edutec_hub
 this is a tutoring school system 
 build by flutter 
 
 flutter version: 
 3.24.3(stable)
 
 # Framework 
 bloc state management
 dio, retrofit for api
 go_router route config
 easy_localization mutiple languages
 

# 目錄結構  Directory structure 

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



# gen file command
flutter packages pub run build_runner build --delete-conflicting-outputs  