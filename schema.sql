CREATE TABLE IF NOT EXISTS properties(
 id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL, address TEXT, price_wan REAL,
 layout TEXT, area_ping REAL, age_years INTEGER, parking TEXT, rating REAL,
 status TEXT DEFAULT '考慮中', pros TEXT, cons TEXT, notes TEXT, visit_date TEXT,
 created_at TEXT DEFAULT (datetime('now')), updated_at TEXT DEFAULT (datetime('now')));
CREATE TABLE IF NOT EXISTS guides(
 id INTEGER PRIMARY KEY AUTOINCREMENT, category TEXT, title TEXT, content TEXT,
 sort_order INTEGER, created_at TEXT DEFAULT (datetime('now')));
