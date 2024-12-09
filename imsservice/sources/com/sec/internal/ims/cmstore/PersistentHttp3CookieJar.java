package com.sec.internal.ims.cmstore;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.helper.httpclient.SerializableCookie;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.interfaces.ims.cmstore.CookiePersister;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;

/* loaded from: classes.dex */
public class PersistentHttp3CookieJar implements CookieJar, CookiePersister {
    private static final String COOKIE_NAME_PREFIX = "cookie_";
    private static final String COOKIE_PREFS = "CookiePrefsFile";
    private static final String LOG_TAG = "PersistentHttp3CookieJar";
    private final SharedPreferences cookiePrefs;
    protected final ConcurrentHashMap<String, ConcurrentHashMap<String, Cookie>> cookies;

    public PersistentHttp3CookieJar(Context context, int i) {
        Cookie decodeCookie;
        if (CmsUtil.isMcsSupported(context, i) && i == 1) {
            this.cookiePrefs = context.getSharedPreferences(COOKIE_PREFS + i, 0);
        } else {
            this.cookiePrefs = context.getSharedPreferences(COOKIE_PREFS, 0);
        }
        this.cookies = new ConcurrentHashMap<>();
        for (Map.Entry<String, ?> entry : this.cookiePrefs.getAll().entrySet()) {
            if (entry.getValue() != null && !((String) entry.getValue()).startsWith(COOKIE_NAME_PREFIX)) {
                for (String str : TextUtils.split((String) entry.getValue(), ",")) {
                    String string = this.cookiePrefs.getString(COOKIE_NAME_PREFIX + str, null);
                    if (string != null && (decodeCookie = new SerializableCookie().decodeCookie(string)) != null) {
                        String domain = decodeCookie.domain();
                        if (TextUtils.isEmpty(domain)) {
                            Cookie.Builder builder = new Cookie.Builder();
                            builder.domain(entry.getKey());
                            builder.build();
                            domain = decodeCookie.domain();
                        }
                        try {
                            this.cookies.putIfAbsent(domain, new ConcurrentHashMap<>());
                        } catch (NullPointerException e) {
                            IMSLog.e(LOG_TAG, e.toString());
                        }
                        this.cookies.get(domain).put(str, decodeCookie);
                    }
                }
            }
        }
    }

    @Override // okhttp3.CookieJar
    public List<Cookie> loadForRequest(HttpUrl httpUrl) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, ConcurrentHashMap<String, Cookie>> entry : this.cookies.entrySet()) {
            if (httpUrl.host().endsWith(entry.getKey())) {
                arrayList.addAll(this.cookies.get(entry.getKey()).values());
            }
        }
        IMSLog.i(LOG_TAG, "load cookie, url:" + IMSLog.numberChecker(String.valueOf(httpUrl)) + " cookie:" + arrayList);
        return arrayList;
    }

    private Cookie setCookieDomain(Cookie cookie, String str) {
        IMSLog.d(LOG_TAG, "setCookieDomain: " + cookie + " host:" + str);
        Cookie.Builder builder = new Cookie.Builder();
        builder.expiresAt(cookie.expiresAt()).name(cookie.name()).path(cookie.path()).domain(str);
        if (cookie.httpOnly()) {
            builder.httpOnly();
        }
        if (cookie.secure()) {
            builder.secure();
        }
        return builder.build();
    }

    @Override // okhttp3.CookieJar
    public void saveFromResponse(HttpUrl httpUrl, List<Cookie> list) {
        IMSLog.i(LOG_TAG, "saveFromResponse - url: " + IMSLog.numberChecker(String.valueOf(httpUrl)) + ", cookie: " + list.toString());
        Iterator<Cookie> it = list.iterator();
        while (it.hasNext()) {
            Cookie next = it.next();
            if (TextUtils.isEmpty(next.domain())) {
                next = setCookieDomain(next, httpUrl.host());
            }
            if (ATTGlobalVariables.isAmbsPhaseIV()) {
                Log.d(LOG_TAG, "Before==================================");
                for (Map.Entry<String, ConcurrentHashMap<String, Cookie>> entry : this.cookies.entrySet()) {
                    try {
                        Iterator<Map.Entry<String, Cookie>> it2 = entry.getValue().entrySet().iterator();
                        while (it2.hasNext()) {
                            IMSLog.s(LOG_TAG, "Domain=" + entry.getKey() + " ,name=" + it2.next().getKey());
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                IMSLog.i(LOG_TAG, "==================================");
                ArrayList<String> arrayList = new ArrayList();
                for (Cookie cookie : getCookies()) {
                    if (next.name().equals(cookie.name())) {
                        String name = next.name();
                        String name2 = cookie.name();
                        if (!name.equals(name2)) {
                            if (name.endsWith(name2)) {
                                next = setCookieDomain(next, name2);
                            } else if (name2.endsWith(name) && !arrayList.contains(name2)) {
                                arrayList.add(name2);
                            }
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    for (String str : arrayList) {
                        ConcurrentHashMap<String, Cookie> concurrentHashMap = this.cookies.get(str);
                        if (concurrentHashMap != null) {
                            try {
                                this.cookies.putIfAbsent(next.name(), new ConcurrentHashMap<>());
                            } catch (NullPointerException e2) {
                                IMSLog.e(LOG_TAG, e2.toString());
                            }
                            Iterator<Map.Entry<String, Cookie>> it3 = concurrentHashMap.entrySet().iterator();
                            while (it3.hasNext()) {
                                Cookie cookieDomain = setCookieDomain(it3.next().getValue(), next.domain());
                                this.cookies.get(next.domain()).put(getCookieToken(cookieDomain), cookieDomain);
                            }
                        }
                        this.cookies.remove(str);
                    }
                }
                IMSLog.d(LOG_TAG, "After==================================");
                for (Map.Entry<String, ConcurrentHashMap<String, Cookie>> entry2 : this.cookies.entrySet()) {
                    try {
                        Iterator<Map.Entry<String, Cookie>> it4 = entry2.getValue().entrySet().iterator();
                        while (it4.hasNext()) {
                            IMSLog.s(LOG_TAG, "Domain=" + entry2.getKey() + " ,name=" + it4.next().getKey());
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                IMSLog.i(LOG_TAG, "==================================");
            }
            String cookieToken = getCookieToken(next);
            IMSLog.i(LOG_TAG, "cookieName:" + cookieToken + " expired:" + isCookieExpired(next));
            if (!isCookieExpired(next)) {
                try {
                    this.cookies.putIfAbsent(next.domain(), new ConcurrentHashMap<>());
                    IMSLog.d(LOG_TAG, "cookie domain addition in pref");
                } catch (NullPointerException e4) {
                    IMSLog.e(LOG_TAG, e4.toString());
                }
                this.cookies.get(next.domain()).put(cookieToken, next);
            } else if (this.cookies.containsKey(next.domain())) {
                this.cookies.get(next.domain()).remove(cookieToken);
            }
            SharedPreferences.Editor edit = this.cookiePrefs.edit();
            edit.putString(next.domain(), TextUtils.join(",", this.cookies.get(next.domain()).keySet()));
            edit.putString(COOKIE_NAME_PREFIX + cookieToken, new SerializableCookie().encodeCookie(next));
            edit.apply();
        }
    }

    public List<Cookie> getCookies() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, ConcurrentHashMap<String, Cookie>>> it = this.cookies.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getValue().values());
        }
        return arrayList;
    }

    protected String getCookieToken(Cookie cookie) {
        return cookie.name() + cookie.domain();
    }

    private static boolean isCookieExpired(Cookie cookie) {
        return cookie.expiresAt() < System.currentTimeMillis();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.CookiePersister
    public void removeAll() {
        SharedPreferences.Editor edit = this.cookiePrefs.edit();
        edit.clear();
        edit.apply();
        this.cookies.clear();
    }
}
