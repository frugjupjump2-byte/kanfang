# 看房筆記（Cloudflare Pages + D1）

純靜態前端（public/）＋ Pages Functions API（functions/）＋ D1 資料庫，不需要 build 步驟。

## 部署
1. 把這個資料夾推到 GitHub repo。
2. `npx wrangler login` → `npx wrangler d1 create kanfang`，把回傳的 database_id 貼進 wrangler.toml。
3. 建表與匯入你從 Glide 匯出的資料：
   `npx wrangler d1 execute kanfang --remote --file=schema.sql`
   `npx wrangler d1 execute kanfang --remote --file=seed.sql`
4. Cloudflare Dashboard → Workers & Pages → Create → Pages → Connect to Git，選這個 repo。Build command 留空，output directory 填 `public`。
5. 若專案沒有自動套用 D1：Settings → Bindings → 新增 D1，變數名稱 `DB`，選 kanfang。
6. **保護網址**：Zero Trust → Access → 新增 Application，只允許你（和家人）的 email。沒設的話，知道網址的人都能改你的資料。

## 結構
- public/index.html：看屋筆記、買房攻略、貸款試算（單檔）
- functions/api/[[route]].js：/api/properties（GET/POST/PUT/DELETE）、/api/guides（GET）
- schema.sql / seed.sql：資料表與你的 Glide 匯出資料
