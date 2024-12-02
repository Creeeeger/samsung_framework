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

/* loaded from: classes.dex */
public final class GetPolicyClient implements AsyncTaskClient {
    private API api;
    private Callback<Void, Boolean> callback;
    private HttpsURLConnection conn = null;
    private SharedPreferences pref;
    private Map<String, String> qParams;

    public GetPolicyClient(API api, Map<String, String> map, SharedPreferences sharedPreferences, Callback<Void, Boolean> callback) {
        this.api = api;
        this.qParams = map;
        this.pref = sharedPreferences;
        this.callback = callback;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00cb A[ADDED_TO_REGION] */
    @Override // com.samsung.context.sdk.samsunganalytics.internal.executor.AsyncTaskClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int onFinish() {
        /*
            Method dump skipped, instructions count: 239
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.context.sdk.samsunganalytics.internal.policy.GetPolicyClient.onFinish():int");
    }

    @Override // com.samsung.context.sdk.samsunganalytics.internal.executor.AsyncTaskClient
    public final void run() {
        try {
            Uri.Builder buildUpon = Uri.parse(this.api.getUrl()).buildUpon();
            for (String str : this.qParams.keySet()) {
                buildUpon.appendQueryParameter(str, this.qParams.get(str));
            }
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(buildUpon.build().toString()).openConnection();
            this.conn = httpsURLConnection;
            httpsURLConnection.setSSLSocketFactory(CertificateManager.getInstance().getSSLContext().getSocketFactory());
            this.conn.setRequestMethod(this.api.getMethod());
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
