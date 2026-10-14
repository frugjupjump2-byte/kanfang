// 只保護資料 API：網頁本體直接送出，資料要帶正確密碼才拿得到
export async function onRequest({ request, env, next }) {
  const { pathname } = new URL(request.url);
  if (!pathname.startsWith('/api/')) return next();
  if (env.APP_PASSWORD && request.headers.get('X-App-Password') === env.APP_PASSWORD) return next();
  return new Response(JSON.stringify({ error: 'unauthorized' }), {
    status: 401,
    headers: { 'content-type': 'application/json' },
  });
}

