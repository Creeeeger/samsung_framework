package com.samsung.context.sdk.samsunganalytics.internal.policy;

import android.content.SharedPreferences;
import android.net.Uri;
import com.samsung.context.sdk.samsunganalytics.internal.Callback;
import com.samsung.context.sdk.samsunganalytics.internal.connection.API;
import com.samsung.context.sdk.samsunganalytics.internal.connection.Directory;
import com.samsung.context.sdk.samsunganalytics.internal.connection.Domain;
import com.samsung.context.sdk.samsunganalytics.internal.executor.AsyncTaskClient;
import com.samsung.context.sdk.samsunganalytics.internal.security.CertificateManager;
import com.samsung.context.sdk.samsunganalytics.internal.util.Debug;
import java.net.URL;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class GetPolicyClient implements AsyncTaskClient {
    public final API api;
    public final Callback callback;
    public HttpsURLConnection conn = null;
    public final SharedPreferences pref;
    public final Map qParams;

    public GetPolicyClient(API api, Map<String, String> map, SharedPreferences sharedPreferences, Callback callback) {
        this.api = api;
        this.qParams = map;
        this.pref = sharedPreferences;
        this.callback = callback;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00c7 A[ADDED_TO_REGION] */
    @Override // com.samsung.context.sdk.samsunganalytics.internal.executor.AsyncTaskClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int onFinish() {
        /*
            r10 = this;
            java.lang.String r0 = "lgt"
            java.lang.String r1 = ""
            android.content.SharedPreferences r2 = r10.pref
            java.lang.String r3 = "Fail to get Policy; Invalid Message. Result code : "
            java.lang.String r4 = "Fail to get Policy. Response code : "
            r5 = -61
            r6 = 0
            javax.net.ssl.HttpsURLConnection r7 = r10.conn     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            int r7 = r7.getResponseCode()     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            r8 = 200(0xc8, float:2.8E-43)
            if (r7 == r8) goto L2e
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            r7.<init>(r4)     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            javax.net.ssl.HttpsURLConnection r4 = r10.conn     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            int r4 = r4.getResponseCode()     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            r7.append(r4)     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            java.lang.String r4 = r7.toString()     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            com.samsung.context.sdk.samsunganalytics.internal.util.Debug.LogE(r4)     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            r4 = r5
            goto L2f
        L2e:
            r4 = 0
        L2f:
            java.io.BufferedReader r7 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            java.io.InputStreamReader r8 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            javax.net.ssl.HttpsURLConnection r9 = r10.conn     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            java.io.InputStream r9 = r9.getInputStream()     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            r8.<init>(r9)     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            r7.<init>(r8)     // Catch: java.lang.Throwable -> La7 java.lang.Exception -> La9
            java.lang.String r6 = r7.readLine()     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            com.samsung.context.sdk.samsunganalytics.internal.util.Debug.LogENG(r6)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            org.json.JSONObject r8 = new org.json.JSONObject     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            r8.<init>(r6)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            java.lang.String r6 = "rc"
            int r6 = r8.getInt(r6)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            r9 = 1000(0x3e8, float:1.401E-42)
            if (r6 == r9) goto L66
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            r0.<init>(r3)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            r0.append(r6)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            com.samsung.context.sdk.samsunganalytics.internal.util.Debug.LogE(r0)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            r4 = r5
            goto L91
        L66:
            java.lang.String r3 = "GetPolicyClient"
            java.lang.String r6 = "Get Policy Success"
            com.samsung.context.sdk.samsunganalytics.internal.util.Debug.LogD(r3, r6)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            java.lang.String r3 = r2.getString(r0, r1)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            if (r3 == 0) goto L8e
            com.samsung.context.sdk.samsunganalytics.internal.Callback r3 = r10.callback
            if (r3 == 0) goto L8e
            java.lang.String r0 = r8.getString(r0)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            if (r0 == 0) goto L8e
            java.lang.String r6 = "rtb"
            boolean r0 = r0.equals(r6)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            if (r0 == 0) goto L8e
            java.lang.Boolean r0 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            r3.onResult(r0)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
        L8e:
            r10.save(r8)     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
        L91:
            javax.net.ssl.HttpsURLConnection r0 = r10.conn     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
            if (r0 == 0) goto L98
            r0.disconnect()     // Catch: java.lang.Throwable -> La3 java.lang.Exception -> La5
        L98:
            r7.close()     // Catch: java.io.IOException -> Lbb
            javax.net.ssl.HttpsURLConnection r10 = r10.conn     // Catch: java.io.IOException -> Lbb
            if (r10 == 0) goto Lbb
            r10.disconnect()     // Catch: java.io.IOException -> Lbb
            goto Lbb
        La3:
            r0 = move-exception
            goto Ldc
        La5:
            r6 = r7
            goto La9
        La7:
            r0 = move-exception
            goto Ldb
        La9:
            java.lang.String r0 = "Fail to get Policy"
            com.samsung.context.sdk.samsunganalytics.internal.util.Debug.LogE(r0)     // Catch: java.lang.Throwable -> La7
            if (r6 == 0) goto Lb3
            r6.close()     // Catch: java.io.IOException -> Lba
        Lb3:
            javax.net.ssl.HttpsURLConnection r10 = r10.conn     // Catch: java.io.IOException -> Lba
            if (r10 == 0) goto Lba
            r10.disconnect()     // Catch: java.io.IOException -> Lba
        Lba:
            r4 = r5
        Lbb:
            java.lang.String r10 = "dom"
            java.lang.String r10 = r2.getString(r10, r1)
            boolean r10 = android.text.TextUtils.isEmpty(r10)
            if (r4 != r5) goto Lda
            if (r10 != 0) goto Lda
            android.content.SharedPreferences$Editor r10 = r2.edit()
            java.lang.String r0 = "policy_received_date"
            long r1 = java.lang.System.currentTimeMillis()
            android.content.SharedPreferences$Editor r10 = r10.putLong(r0, r1)
            r10.apply()
        Lda:
            return r4
        Ldb:
            r7 = r6
        Ldc:
            if (r7 == 0) goto Le1
            r7.close()     // Catch: java.io.IOException -> Le8
        Le1:
            javax.net.ssl.HttpsURLConnection r10 = r10.conn     // Catch: java.io.IOException -> Le8
            if (r10 == 0) goto Le8
            r10.disconnect()     // Catch: java.io.IOException -> Le8
        Le8:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.context.sdk.samsunganalytics.internal.policy.GetPolicyClient.onFinish():int");
    }

    @Override // com.samsung.context.sdk.samsunganalytics.internal.executor.AsyncTaskClient
    public final void run() {
        Map map = this.qParams;
        API api = this.api;
        try {
            Uri.Builder buildUpon = Uri.parse(api.getUrl()).buildUpon();
            for (String str : map.keySet()) {
                buildUpon.appendQueryParameter(str, (String) map.get(str));
            }
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(buildUpon.build().toString()).openConnection();
            this.conn = httpsURLConnection;
            httpsURLConnection.setSSLSocketFactory(CertificateManager.Singleton.instance.sslContext.getSocketFactory());
            this.conn.setRequestMethod(api.getMethod());
            this.conn.setConnectTimeout(3000);
        } catch (Exception unused) {
            Debug.LogE("Fail to get Policy");
        }
    }

    public final void save(JSONObject jSONObject) {
        try {
            this.pref.edit().putInt("oq-3g", jSONObject.getInt("oq-3g") * 1024).putInt("dq-3g", jSONObject.getInt("dq-3g") * 1024).putInt("oq-w", jSONObject.getInt("oq-w") * 1024).putInt("dq-w", jSONObject.getInt("dq-w") * 1024).putString("dom", "https://" + jSONObject.getString("dom")).putString("uri", jSONObject.getString("uri")).putString("bat-uri", jSONObject.getString("bat-uri")).putString("lgt", jSONObject.getString("lgt")).putInt("rint", jSONObject.getInt("rint")).putLong("policy_received_date", System.currentTimeMillis()).apply();
            Domain.DLS.setDomain("https://" + jSONObject.getString("dom"));
            Directory.DLS_DIR.setDirectory(jSONObject.getString("uri"));
            Directory.DLS_DIR_BAT.setDirectory(jSONObject.getString("bat-uri"));
            Debug.LogENG("dq-3g: " + (jSONObject.getInt("dq-3g") * 1024) + ", dq-w: " + (jSONObject.getInt("dq-w") * 1024) + ", oq-3g: " + (jSONObject.getInt("oq-3g") * 1024) + ", oq-w: " + (jSONObject.getInt("oq-w") * 1024));
        } catch (JSONException e) {
            Debug.LogE("Fail to get Policy");
            Debug.LogENG("[GetPolicyClient] " + e.getMessage());
        }
    }
}
