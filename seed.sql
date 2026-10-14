INSERT OR REPLACE INTO properties(id,title,address,price_wan,layout,area_ping,age_years,parking,rating,status,pros,cons,notes,visit_date) VALUES(1,'捷運晴川三房','新北市板橋區莊敬路',2480,'3房2廳2衛',38.2,7,'含坡平車位',4.6,'心儀','採光極佳、格局方正、近捷運5分鐘','臨路稍微有車流聲、公設比略高',NULL,'2026-10-10');
INSERT OR REPLACE INTO properties(id,title,address,price_wan,layout,area_ping,age_years,parking,rating,status,pros,cons,notes,visit_date) VALUES(2,'文心景觀大樓','新北市新莊區思源路',2150,'3房2廳2衛',35.6,11,'含坡平車位',4.1,'考慮中','高樓層永久棟距、社區管理嚴謹','主臥衛浴無開窗、學區稍遠',NULL,'2026-10-08');
INSERT OR REPLACE INTO properties(id,title,address,price_wan,layout,area_ping,age_years,parking,rating,status,pros,cons,notes,visit_date) VALUES(3,'日光森鄰邊間','新北市中和區南山路',1890,'2房2廳1衛',26.4,18,'無車位',3.2,'考慮中','總價在預算內、生活機能成熟','無車位需另租、廚房偏小',NULL,'2026-10-04');
INSERT OR REPLACE INTO properties(id,title,address,price_wan,layout,area_ping,age_years,parking,rating,status,pros,cons,notes,visit_date) VALUES(4,'中央公園高樓戶','新北市新店區央北二路',2880,'3房2廳2衛',42.1,3,'含雙車位',4.8,'心儀','央北全新重劃區、雙車位、公設齊全','總價偏高逼近預算上限、管理費較高',NULL,'2026-09-28');
INSERT OR REPLACE INTO properties(id,title,address,price_wan,layout,area_ping,age_years,parking,rating,status,pros,cons,notes,visit_date) VALUES(5,'靜巷透天厝','新北市永和區文化路',2680,'4房3廳3衛',48.0,34,'門前停車',2.8,'已淘汰','室內使用坪數大、免管理費','屋齡老需整棟大翻修水電、巷道過窄',NULL,'2026-09-22');
INSERT OR REPLACE INTO properties(id,title,address,price_wan,layout,area_ping,age_years,parking,rating,status,pros,cons,notes,visit_date) VALUES(6,'敦南學苑二房','新北市三重區重新路',1680,'2房1廳1衛',23.5,12,'機械車位',3.6,'考慮中','低總價好入手、附簡易裝潢可直接入住','單面採光暗廳、機械車位保養費疑慮',NULL,'2026-09-17');
INSERT OR REPLACE INTO properties(id,title,address,price_wan,layout,area_ping,age_years,parking,rating,status,pros,cons,notes,visit_date) VALUES(7,'水岸第一排','新北市淡水區中正東路',1980,'3房2廳2衛',44.2,9,'含坡平車位',2.4,'已淘汰','海景壯觀陽台大、單價低','冬天下雨潮濕東北季風大、通勤北市過遠',NULL,'2026-09-11');
INSERT OR REPLACE INTO properties(id,title,address,price_wan,layout,area_ping,age_years,parking,rating,status,pros,cons,notes,visit_date) VALUES(8,'綠意微風四房','新北市土城區學府路',2320,'4房2廳2衛',45.8,15,'含坡平車位',3.9,'考慮中','房數充足適合長輩同住、樓下就是公園','裝潢偏老氣需局部重整、離捷運走12分',NULL,'2026-09-05');
INSERT OR REPLACE INTO guides(id,category,title,content,sort_order) VALUES(1,'購屋六大步驟','從看屋到交屋六大階段','1. 確認預算與貸款上限
先向銀行申請貸款試算，了解自己的最高核貸金額與每月還款能力，再決定目標總價區間。

2. 鎖定區域與條件
列出不可妥協的條件（通勤時間、學區、停車、坪數），縮小搜尋範圍，提高看屋效率。

3. 實地看屋與記錄
使用本 App 詳細記錄每間物件的優缺點、評分，並邀家人一起評估，避免衝動決策。

4. 斡旋出價與議價
確認心儀物件後，委託仲介代為出價。出價前查詢實價登錄周邊成交行情，掌握議價空間。

5. 簽約與用印
確認契約條款，特別注意：交屋日期、違約條款、車位規格、附贈設備清單。建議找代書或律師審約。

6. 辦理貸款與交屋
銀行估價核貸後簽訂撥款書，完成移轉登記。交屋時逐一驗收設備，拍照存證留底。',1);
INSERT OR REPLACE INTO guides(id,category,title,content,sort_order) VALUES(2,'現場看屋重點','現場看屋 5 大雷區防護','雷區 1：採光與通風
觀察各房間開窗方向，理想為南北向對流。注意採光是否遭鄰棟遮蔽，陰天仍需開燈才能閱讀即為警訊。

雷區 2：漏水與壁癌
重點檢查：頂樓天花板、衛浴四周牆角、廚房流理台下方、窗框邊緣。油漆新刷、矽利康塗得很厚，可能是遮掩痕跡。

雷區 3：管線老化
屋齡超過 20 年需特別注意水管材質（鐵管生鏽）及電線容量（是否升級220V）。開水龍頭觀察水壓與水色。

雷區 4：噪音與氣味
靜候 3 分鐘聆聽環境聲（電梯機械聲、樓上踩踏聲、外部車流）。廚房開排油煙機測試排氣效果。

雷區 5：公設品質
實際走訪健身房、停車場、大廳，了解管理人員素質與住戶組成，這直接影響日後居住品質。',2);
INSERT OR REPLACE INTO guides(id,category,title,content,sort_order) VALUES(3,'稅費與隱性成本','買房隱形開銷清單','除了房價本身，以下費用常被忽略，合計可能超過總價的 5-8%：

• 仲介服務費：買方通常 1-2%，賣方 2-4%（各家不同）
• 代書費：約 1-3 萬元（含移轉登記、抵押設定）
• 契稅：房屋評定契價 × 6%（非市價，通常較低）
• 印花稅：約 300-1,000 元
• 土地增值稅：由賣方負擔，但議價時需考量
• 房屋稅 + 地價稅：依地區與評定現值而定
• 火災保險 + 地震險：貸款期間銀行要求投保，每年約 5,000-15,000 元
• 搬家費：2-6 萬元視距離與物品量
• 裝潢費：視狀況，局部翻修 20-80 萬，全室裝潢 100 萬起
• 管理費：每月 3,000-8,000 元不等

建議在總預算外另備 10% 作為這些開銷的緩衝。',3);
INSERT OR REPLACE INTO guides(id,category,title,content,sort_order) VALUES(4,'看屋隨身工具','看屋必帶隨身工具組','1. 5 米鋼捲尺 / 雷射測距儀
丈量沙發牆、冰箱深度、床頭寬度，確認現有家具能否放入。

2. 強光手電筒
照天花板維修孔內部、管道間吊管材質，以及暗角有無漏水痕跡。

3. 彈珠或水準儀 App
放置地面與窗台測試地坪水平，確認地基是否有不均勻沉陷。

4. 三相驗電筆 / 小夜燈
測試室內每個插座是否正常通電，地線是否確實接妥有防漏電。

5. 本 App 的看屋筆記
邊看邊記錄，當下的第一印象往往最準確，不要等回家再憑記憶填寫。',4);
