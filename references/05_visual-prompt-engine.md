# 05_visual-prompt-engine.md
## 視覺描述模組：素材視覺方向 + AI 生圖 Prompt 框架

本文件整合自 `design-image-prompt-engineer.md`（msitarzewski/agency-agents）
加上針對行銷素材與高端運動品類的應用規則。

---

## 一、視覺描述的五層結構

產出每份 Brief 的「視覺方向」欄位時，依以下五層逐一填寫：

```
Layer 1：主體（Subject）
Layer 2：環境與場景（Environment）
Layer 3：光線（Lighting）
Layer 4：技術規格（Technical）
Layer 5：風格與調性（Style & Tone）
```

---

## 二、各層填寫指引

### Layer 1：主體（Subject）
描述畫面中心是什麼。

| 素材類型 | 主體描述方式 |
|---|---|
| 商品圖 | 「[品牌] [商品名] 正面全露，展示 [材質/顏色/細節]」 |
| 穿搭圖 | 「[性別] 模特，[年齡感]，穿著 [品牌] 完整球場穿搭，[姿態/動作]」 |
| 場景氛圍 | 「[場景描述]，焦點放在 [具體元素]，人物為次要或無人」 |

**禁止**：避免「高端感商品圖」這種模糊描述，要具體到材質、細節、角度。

---

### Layer 2：環境與場景（Environment）
描述畫面發生在哪裡、什麼時間、什麼氛圍。

**高爾夫品類常用場景**：
- `精心修剪的高爾夫球道，清晨薄霧，遠景是綠色起伏山丘`
- `室內高端球具店，淺色木質陳列架，明亮但非刺眼的展示燈光`
- `純白攝影棚，大面積留白，強調商品本身的質感`
- `球場果嶺附近，黃昏暖色光，投影落在草地上`

**場景選擇原則**：
- 預熱期：神秘感 / 氛圍感為主，不要太具體
- 開賣期：商品全露 + 真實使用場景
- 衝刺期：可回歸商品主視覺，加上緊迫感視覺元素

---

### Layer 3：光線（Lighting）
光線是決定高端感 vs 廉價感最關鍵的元素。

**商品攝影光線**（高端感）：
- `大型柔光箱打頂光，側面加反光板填充，背景漸層白`
- `雙側條形燈打邊緣光，突顯商品輪廓與材質紋理`
- `自然窗光側面入射，柔和陰影，暖白色調`

**人物 / 場景光線**（高爾夫品類）：
- `清晨黃金時段側光（Golden Hour Sidelight），皮膚暖色，長陰影`
- `多雲天的漫射光（Overcast Diffused Light），均勻無強對比，適合穿搭展示`
- `林道間的透光（Dappled Forest Light），光影交錯，有律動感`

**禁止**：
- ❌ 正面硬閃（Harsh Front Flash）→ 臉部扁平、廉價感
- ❌ 過飽和色溫（Oversaturated Color）→ 破壞高端品牌調性

---

### Layer 4：技術規格（Technical）
這些描述告訴 AI 生圖工具如何「拍」這張照片。

| 效果 | 描述方式 |
|---|---|
| 背景模糊（商品人像常用） | `shallow depth of field, f/1.8 bokeh, blurred background` |
| 全景清晰（場景圖） | `deep depth of field, f/11, sharp foreground to background` |
| 廣角（場景感強） | `wide angle, 24mm equivalent, slight distortion` |
| 標準人像 | `85mm equivalent, eye-level perspective` |
| 細節特寫 | `macro shot, extreme close-up, texture emphasis` |
| 構圖 | `rule of thirds / centered composition / leading lines` |

---

### Layer 5：風格與調性（Style & Tone）

**高爾夫 / 高端運動品類的視覺語言**：

| 維度 | 建議方向 | 禁止方向 |
|---|---|---|
| 色調 | 深色（墨綠 / 炭黑 / 海軍藍）+ 金色或白色點綴 | 螢光色、過度鮮豔 |
| 字體風格 | 高端 Serif 標題 + 現代 Sans 內文 | 圓潤卡通感字體 |
| 攝影風格 | 真實球場情境、質地特寫、乾淨白底商品圖 | 過度修圖、假景合成感 |
| 版面氣質 | 留白充足、層次清晰、商品呼吸空間足夠 | 塞滿元素、一眼看到太多東西 |
| 促銷標示 | 數字大但 Badge 精緻小巧 | 大紅大黃廉價促銷感 |

**各階段情緒遞進**：
```
預熱期：平靜期待感（深色 + 輕柔光源 + 神秘感）
    ↓
開賣期：自信活躍感（商品全露 + 乾淨有力排版 + 清晰折扣數字）
    ↓
衝刺期：緊迫行動感（高對比 + 紅色強調元素 + 倒數視覺語言）
```

---

## 三、各渠道視覺方向快速模板

### IG Feed 方形（1080×1080）
```
主體：[商品/人物] 居中或三分之一構圖
環境：[乾淨背景/球場場景]
光線：[柔光箱頂光/自然側光]
技術：85mm equivalent, centered composition, slight bokeh
風格：[品牌主色調]，留白 40% 以上，CTA 文字放右下角
```

### IG Story（1080×1920）
```
主體：[商品/人物] 佔畫面 50–70%
環境：模糊或簡約背景，突顯主體
光線：偏暗背景，主體打亮，製造戲劇感
技術：vertical 9:16，safe zone 上方 250px / 下方 250px
風格：文字資訊集中在安全區中段，動態版本每個資訊點 1.5 秒
```

### EDM Banner（600px 寬）
```
主體：品牌 Logo + 主推商品 + 核心折扣數字
環境：品牌色為底，或白色乾淨背景
光線：靜態圖不需描述光線，直接用後製色調
技術：靜態 JPG，文字需嵌入圖片（EDM 環境不穩定）
風格：主標文字佔視覺 30%，商品圖佔 50%，留白 20%
```

### PC Hero Banner（1920×600）
```
主體：左側放標題文案，右側放商品圖（或反之）
環境：品牌氛圍大圖為底，或品牌色塊
光線：全域調色，非單一光源
技術：安全區集中在中央 1200px，兩側可裁
風格：文案 ≤ 3 行，CTA 按鈕清晰可見，倒數計時器預留位置
```

---

## 四、AI 生圖 Prompt 完整模板

設計師若使用 Midjourney / DALL-E / Stable Diffusion 輔助生圖，
可套用以下結構組合 Prompt：

### 商品主視覺 Prompt 結構
```
[商品名稱與描述] | [材質細節] | [背景與環境] | 
[光線設置：softbox overhead, edge lights, gradient background] | 
[鏡頭：shot at [angle], [lens]mm equivalent, focus stacked] | 
[風格：commercial advertising quality, clean post-processing, [品牌調性]] |
8k resolution, product photography
```

### 情境 / 生活化 Prompt 結構
```
[人物描述：性別、年齡感、穿著] | [動作與姿態] | 
[場景：具體球場或運動環境] | [時間：golden hour/morning/overcast] | 
[光線：natural side lighting, soft shadows] |
[鏡頭：85mm, eye level, shallow depth of field, f/1.8 bokeh] |
[後製風格：warm color grade, slightly desaturated greens, editorial quality] |
inspired by [參考風格] | commercial photography, high-end sportswear campaign
```

### 負向 Prompt（避免廉價感）
```
--no fluorescent colors, cartoon style, oversaturated, harsh flash, 
       fake background, stock photo look, generic sports photo,
       low quality, blurry, text overlay, watermark
```

---

## 【知識更新區】

> 此區塊供維護者新增視覺描述規則、新品類規範或新工具語法。
> 直接在此行下方貼入更新內容，並標注更新日期。
