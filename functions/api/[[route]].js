const J = (d, s = 200) => new Response(JSON.stringify(d), { status: s, headers: { 'content-type': 'application/json' } });
const F = ['title','address','price_wan','layout','area_ping','age_years','parking','rating','status','pros','cons','notes','visit_date'];

export async function onRequest({ request, env, params }) {
  const [res, id] = params.route, db = env.DB, m = request.method;
  try {
    if (res === 'guides' && m === 'GET')
      return J((await db.prepare('SELECT * FROM guides ORDER BY sort_order').all()).results);
    if (res !== 'properties') return J({ error: 'not found' }, 404);
    if (m === 'GET' && !id)
      return J((await db.prepare('SELECT * FROM properties ORDER BY visit_date DESC').all()).results);
    if (m === 'DELETE' && id) {
      await db.prepare('DELETE FROM properties WHERE id=?').bind(id).run();
      return J({ ok: 1 });
    }
    const b = await request.json(), v = F.map(k => b[k] ?? null);
    if (m === 'POST') {
      if (!b.title) return J({ error: 'title required' }, 400);
      const r = await db.prepare(`INSERT INTO properties(${F}) VALUES(${F.map(() => '?')})`).bind(...v).run();
      return J({ id: r.meta.last_row_id }, 201);
    }
    if (m === 'PUT' && id) {
      await db.prepare(`UPDATE properties SET ${F.map(k => k + '=?')},updated_at=datetime('now') WHERE id=?`).bind(...v, id).run();
      return J({ ok: 1 });
    }
    return J({ error: 'bad request' }, 400);
  } catch (e) { return J({ error: String(e) }, 500); }
}
