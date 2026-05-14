# Campaign Brief Generator
### 活動素材需求單生成系統 v2.0

把行銷策略、心理學、漏斗邏輯、文案框架、視覺規格、渠道尺寸全部模組化，
讓 AI 替代「懂行銷的人坐在設計師旁邊」的角色。

---

## 目錄

- [這套系統解決什麼問題](#這套系統解決什麼問題)
- [檔案架構](#檔案架構)
- [執行流程](#執行流程)
- [如何使用](#如何使用)
- [知識庫更新規則](#知識庫更新規則)
- [下一步計畫](#下一步計畫)
- [維護 FAQ](#維護-faq)

---

## 這套系統解決什麼問題

傳統做法：企劃提供底圖，設計師換素材，所有階段說同一件事，只是換背景色和折扣數字。

這套系統做的事：把活動時序、受眾心理狀態、漏斗機制，翻譯成設計師不需要再問問題就能動手的素材規格。

具體來說，它把以下知識全部編碼進系統：

- 廣告漏斗邏輯（TOFU / MOFU / BOFU × 活動階段）
- 心理機制（Hook Model、損失厭惡、價格錨定、稀缺感、Nudge）
- 文案框架（SCQA、PAS、勾魂開場三法則）
- 視覺規格（五層結構：主體 / 場景 / 光線 / 技術 / 風格）
- 渠道尺寸（Meta、TikTok、EDM、Banner、LP、LINE@）
- AI 生圖 Prompt 語言

---

## 檔案架構

```
campaign-brief-generator/
│
├── README.md                        ← 本說明書
├── SKILL.md                         ← 主程式（薄，< 800 字元，只管流程）
├── build.sh                         ← 合併腳本（給 ChatGPT / Gemini 用）
│
├── references/                      ← 知識庫（胖，AI 依需要載入）
│   ├── 01_marketing-logic.md        ← 漏斗邏輯 × 活動階段規則
│   ├── 02_creative-psychology.md    ← 心理機制庫
│   ├── 03_copywriting-rules.md      ← 文案框架庫
│   ├── 04_channel-specs.md          ← 渠道規格
│   └── 05_visual-prompt-engine.md   ← 視覺描述五層結構
│
├── assets/
│   └── brief-template.md            ← 輸出模板（含矩陣展開規則）
│
└── updates/                         ← 知識更新區（貼進去即生效）
    ├── psychology-updates.md        ← 新增心理學原則
    ├── copywriting-updates.md       ← 新增文案技巧與活動案例
    └── brand-cases.md               ← 品牌案例、TA 原話、成效數據
```

### 設計原則

`SKILL.md` = 薄的流程控制器，只管何時啟動、問什麼、載入什麼。

`references/` = 所有知識的正確位置，SKILL.md 不塞知識。

`brief-template.md` = 承接輸出邏輯，確保每份 Brief 設計師不需要再問問題。

`updates/` = 系統持續進化的入口，活動跑完把數據和學習貼進來。

---

## 執行流程

```
啟動
  → AI 主導 13 題問答（Phase 1–3）
  → 整理摘要確認
  → 問使用者「先從哪個渠道開始？」
  → 確認渠道與版位
  → 展開該渠道的矩陣清單（階段 × 漏斗層 × 版位）
  → 逐份產出 Brief（每份含訴求邏輯 + 文案草稿 + 五層視覺規格 + 版面示意）
  → 完成後問「要繼續下一個渠道嗎？」
  → 繼續下一個渠道
```

### 矩陣展開邏輯

| 渠道 | 展開方式 |
|---|---|
| Meta FB/IG | 活動階段數 × 漏斗層數（TOFU/MOFU/BOFU）× 版位（Feed方形/橫版/Story/Reels）|
| TikTok | 活動階段數 × 1 |
| EDM | 活動階段數 × 1 |
| 官網 Banner | 活動階段數 × 2（PC + Mobile）|
| Landing Page | 1 份（全活動期通用）|
| LINE@ | 活動階段數 × 1 |

---

## 如何使用

### Claude（推薦，最完整）

**方法一：Claude Project（一次設定永久有效）**

1. 建立一個 Project，命名「Campaign Brief Generator」
2. 上傳所有檔案到 Project 知識庫
3. System Prompt 貼入 `SKILL.md` 全文
4. 輸入「開始」即可使用

**方法二：單次對話**

上傳所有檔案後，輸入「請依照 SKILL.md 的流程，幫我產出活動 Brief」

---

### ChatGPT / Gemini

**步驟一：產出合併版本**

```bash
cd /你的專案資料夾路徑
bash build.sh
```

產出 `chatgpt-merged-version.md`

**步驟二：啟動**

打開新對話，把 `chatgpt-merged-version.md` 全文貼入第一則訊息，加上：

```
請依照這份文件裡 SKILL.md 的流程運作，等我說「開始」後問我第一個問題。
```

**注意**：ChatGPT / Gemini 沒有記憶，每次新對話都要重新貼。

**步驟三：更新後重新合併**

任何 references/ 或 updates/ 有修改，重跑一次 `bash build.sh`。

---

## 知識庫更新規則

### 什麼時候更新

| 情境 | 更新位置 |
|---|---|
| 讀完新書，有新的心理學或行為科學原則 | `updates/psychology-updates.md` |
| 活動結束，有文案技巧或案例沉澱 | `updates/copywriting-updates.md` |
| 累積 TA 的真實說法（原話語錄）| `updates/brand-cases.md` |
| 素材跑出數據，記錄哪種 Hook CTR 高 | `updates/brand-cases.md` |
| 平台規格有變動 | `references/04_channel-specs.md`（直接修改）|
| 問答流程需要調整 | `SKILL.md`（直接修改）|

### 更新格式

在對應的 `updates/` 檔案末尾貼入：

```markdown
---

## [YYYY/MM/DD] [來源]

### 核心原則
[1–3 句說明]

### 適用漏斗層 / 活動階段
[TOFU / MOFU / BOFU]

### 素材應用方式
[具體例子]
```

更新後如果用 ChatGPT / Gemini，重跑 `bash build.sh` 產出新的合併版本。

---

## 下一步計畫

以下是這套系統已知的進化方向，依優先順序：

**1. TA 原話資料庫（高優先）**

目前系統有行銷理論和心理學，但缺少「台灣真實消費者怎麼講話」。
高爾夫玩家真正說的是：
「這件下場不會黏背」「桿面容錯比較高」「跟客戶打球穿這個比較穩」

這些語言進入系統後，AI 的輸出會從「懂行銷」變成「像真的人在講」。
→ 累積到 `updates/brand-cases.md`

**2. 決策優先級規則**

當前系統規則太多，AI 容易「全都要」。
需要加入取捨邏輯，例如：
- 高端品牌：品牌感 > CTR
- 衝刺期：轉換率 > 美感
- TikTok：停留率 > 品牌完整性

→ 未來新增至 `references/01_marketing-logic.md`

**3. 素材成效反饋閉環**

活動跑完後，把以下數據寫回系統：
哪種 Hook CTR 高、哪種開場 ROAS 高、哪種視覺停留久、哪種 CTA 最容易加購

→ 累積到 `updates/brand-cases.md`，讓系統每次活動後都更準

---

## 維護 FAQ

**Q：同事要怎麼拿到這套系統？**

把整個資料夾 clone 下來（或下載 ZIP）。
用 Claude 就上傳所有檔案；用 ChatGPT / Gemini 就跑 `build.sh` 產出合併版本。

**Q：只用 SKILL.md 夠用嗎？**

不夠。SKILL.md 只是流程，沒有知識。
一定要搭配 references/ 一起使用，效果才完整。

**Q：每次對話都要重新上傳嗎？**

Claude Project：不用，設定一次永久有效。
ChatGPT / Gemini：每次新對話都要重新貼合併版本。

**Q：brief-template.md 可以改欄位嗎？**

可以，但改完要確認：每個欄位仍然要求具體內容，禁止模糊描述。

**Q：活動結束後要做什麼？**

把這次活動的有效素材（哪個訴求有效、哪個沒效、設計師的反饋）
整理到 `updates/brand-cases.md`。三次以上的高頻規律才考慮升級到 reference 主檔案。

---

*版本：v2.0*
*最後更新：2026 年 5 月*
*適用品類：高爾夫 / 專業運動用品（可擴展至其他品類）*
