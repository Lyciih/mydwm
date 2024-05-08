# mydwm
把 dwm.desktop 放到 /usr/share/xessions/ 下  
把 dwm.desktop 中 dwm.sh 路徑中的 home 使用者名稱改為本地的  
安裝 feh 用來把圖片當作桌布  
安裝 picom 用來將終端機的透明度與背景合成  



如果覺得太暗  
想變更 ls 指令輸出的資料夾顏色  
在 .bashrc 中加入以下指令  
其中 di 代表資料夾的顏色，改變其後的色碼就行  
LS\_COLORS='di=33:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'  
export LS_COLORS  


# 讓新安裝的程式或可執行檔能被dmenu找到
1. 先確保目標的權限可被執行   
sudo chmod a+x 目標  
2. 創建該執行檔的鍊接放到 &nbsp; /usr/bin/ &nbsp; 中 &nbsp; (全部用戶都能找到)  
或 &nbsp; /home/使用者/.local/bin/ &nbsp; 中 &nbsp; (只有使用者自己能找到)  
sudo ln -s 目標絕對路徑 &nbsp;  &nbsp; /usr/bin/目標名  
or  
sudo ln -s 目標絕對路徑 &nbsp;  &nbsp; /home/使用者/.local/bin/目標名 


