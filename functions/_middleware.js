export async function onRequest({ request, env, next }) {
  if (!env.APP_PASSWORD) return new Response('請先在 Cloudflare 設定 APP_PASSWORD', { status: 503 });
  const auth = request.headers.get('Authorization') || '';
  if (auth.startsWith('Basic ')) {
    try {
      const dec = atob(auth.slice(6));
      if (dec.slice(dec.indexOf(':') + 1) === env.APP_PASSWORD) return next();
    } catch {}
  }
  return new Response('需要密碼', {
    status: 401,
    headers: { 'WWW-Authenticate': 'Basic realm="kanfang", charset="UTF-8"' },
  });
}
