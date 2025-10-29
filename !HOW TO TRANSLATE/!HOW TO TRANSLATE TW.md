*如果在翻譯模組時遇到困難，請隨時向我提問，我一定會回覆你：*

## xsSplater 的 Discord: https://discord.gg/BGZagw3xnz
## Nexus 上的 Enhanced Descriptions: https://www.nexusmods.com/warhammer40kdarktide/mods/210

*感謝 Ebo 提供靈感！*

如果你正在閱讀這份文件，那麼你可能想要將「Enhanced Descriptions」模組翻譯成你的語言，而且你有非常多的熱情和時間。因為你會需要它們，你這個瘋子！

如果你踏上了這條道路，你的生活將不再一樣！

我警告過你了！
;)

# +++------------------------------------------------+++

# 準備工作

0. 軟體工具。我使用 Visual Studio Code 或 Notepad++ 來翻譯模組，也推薦給你。
   * Visual Studio Code 除了有語法高亮顯示和自動儲存外，還能顯示錯誤，但需要稍微學習如何使用。
   * Notepad++ 簡單易用，類似於一般記事本，但具有語法高亮顯示和便捷的快捷鍵（這些快捷鍵也可以加到 VSC）。
   * 你可以在任何地方進行翻譯，甚至是 Windows 內建的記事本。

1. 複製名為 "Loc_EN" 的資料夾，並將其重新命名為 "Loc_XX"。
   * XX - 你的語言代碼，例如 IT、DE 等。

2. 進入新資料夾，你會看到 4 個文件：
   - COLORS_KWords.lua
   - TALENTS_Enh_desc.lua
   - TALENTS_Enh_desc2.lua
   - TALENTS_Enh_desc_nodes.lua

將這些文件重新命名，加上你的語言代碼。例如：
   - COLORS_KWords_xx.lua
   - TALENTS_Enh_desc_xx.lua
   - TALENTS_Enh_desc2_xx.lua
   - TALENTS_Enh_desc_nodes_xx.lua
   * xx - 你的語言代碼（步驟 1），大小寫需一致！

3. 開啟 "Enhanced_descriptions.lua" 文件，找到 "--[+ Translations +]--"，並複製其中 3 行來啟用你在步驟 2 建立的翻譯文件。例如：
   ```lua
   TALENTS_Enh_desc_xx = mod:io_dofile("Enhanced_descriptions/Loc_XX/TALENTS_Enh_desc_xx") -- YourLanguage
   TALENTS_Enh_desc2_xx = mod:io_dofile("Enhanced_descriptions/Loc_XX/TALENTS_Enh_desc2_xx") -- YourLanguage
   TALENTS_Enh_desc_nodes_xx = mod:io_dofile("Enhanced_descriptions/Loc_XX/TALENTS_Enh_desc_nodes_xx") -- YourLanguage
   ```
   * xx/XX - 你的語言代碼，大小寫需一致！

4. 完成。
   現在你可以開始翻譯這個模組了。

*5. 在模組設定選單 (F4) 中啟用「開發者模式 (Developer Mode)」。*
   這將允許你即時檢查翻譯：
   1. 翻譯一行文本。
   2. 儲存變更。
   3. 切回遊戲（Alt+Tab）。
   4. 按下 Ctrl+Shift+R 重新載入模組。
   5. 等幾秒鐘，在遊戲內檢查翻譯結果。

   *注意：重新載入模組 (Ctrl+Shift+R) 時，不要將滑鼠游標直接停留在物件上，否則遊戲可能會崩潰。有些內容可能需要切換選單才能更新顯示。*

# +++------------------------------------------------+++

# 模組結構

為了幫助你找到需要翻譯的文件，以下是各文件的簡要說明：

1. "Loc_XX" 資料夾 *（只需關注你新建的資料夾，其餘可忽略）*
   - **COLORS_KWords_xx.lua** - **需要翻譯！**（關鍵詞，例如傷害、生命值等）
   - **TALENTS_Enh_desc_xx.lua** - **需要翻譯！**（Psyker + Zealot 擴展描述）
   - **TALENTS_Enh_desc_nodes_xx.lua** - **需要翻譯！**（節點擴展描述）
   - **TALENTS_Enh_desc2_xx.lua** - **需要翻譯！**（Veteran + Ogryn 擴展描述）

2. "NULL" 資料夾 *（可以忽略）*
   - 這是一個用來停用擴展描述的輔助文件。

3. !HOW TO TRANSLATE.md - **翻譯指南**。

4. !README.md - **GitHub 主要說明文件**。

5. COLORS_Numbers.lua - **不需要翻譯**（這裡存放數值變數）。

6. CURIOS_Blessings_Perks.lua - **需要翻譯！**（飾品、祝福、特性）。

7. Enhanced_descriptions.lua - **不要更動**（除了步驟 3 ）。

8. Enhanced_descriptions.mod - **不要更動**（模組載入文件）。

9. Enhanced_descriptions_data.lua - **不要更動**（模組主選單 F4）。

10. Enhanced_descriptions_localization.lua - **需要翻譯！**（模組主選單翻譯 F4）。

11. MENUS.lua - **選擇性翻譯**（修復遊戲菜單中的某些問題）。

12. TALENTS.lua - **需要翻譯！**（所有天賦）。

13. WEAPONS_Blessings_Perks.lua - **需要翻譯！**（武器祝福與特性）。

# +++------------------------------------------------+++

## 開始翻譯

現在，你可以正式開始翻譯。

### **示例 1：簡單的翻譯**

打開 `Enhanced_descriptions_localization.lua` 文件，找到：

```lua
mod_name = {
    en = "Enhanced Descriptions",
    fr = "Descriptions avancées",
},
```

在最後一行後添加你的語言：

```lua
mod_name = {
    en = "Enhanced Descriptions",
    fr = "Descriptions avancées",
    zh = "增強描述", -- 別忘了結尾的逗號！
},
```

這樣就完成了這一部分的翻譯！

# +++------------------------------------------------+++

## **經常儲存、向帝皇祈禱、適時休息！**

*如有任何問題、建議或需求，請聯繫我，相關鏈接在文件開頭。*

## **祝你成功、耐心和力量！**

# **感謝！**

