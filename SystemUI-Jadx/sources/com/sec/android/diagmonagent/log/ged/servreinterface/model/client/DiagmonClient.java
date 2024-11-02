package com.sec.android.diagmonagent.log.ged.servreinterface.model.client;

import android.content.Context;
import android.util.Log;
import com.sec.android.diagmonagent.common.logger.AppLog;
import com.sec.android.diagmonagent.log.ged.servreinterface.model.response.Response;
import com.sec.android.diagmonagent.log.ged.util.DeviceUtils;
import com.sec.android.diagmonagent.log.ged.util.PreferenceUtils;
import com.sec.android.diagmonagent.log.ged.util.RestUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class DiagmonClient {
    public final JSONObject mBody;
    public final String mMethod;
    public final HttpURLConnection mURLConnection;
    public final Response response;

    public DiagmonClient(String str, String str2) {
        this.mURLConnection = null;
        try {
            AppLog.d("URL : " + str);
            URL url = new URL(str);
            this.response = new Response();
            this.mMethod = str2;
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            this.mURLConnection = httpURLConnection;
            httpURLConnection.setRequestMethod(str2);
            httpURLConnection.setConnectTimeout(2000);
            httpURLConnection.setReadTimeout(2000);
            httpURLConnection.setDoInput(true);
        } catch (IOException e) {
            Log.e(DeviceUtils.TAG, e + "constructor?");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x01f3, code lost:
    
        if (r1 != null) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x021b, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0219, code lost:
    
        if (r1 == null) goto L129;
     */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0216 A[Catch: IOException -> 0x021f, TRY_ENTER, TryCatch #20 {IOException -> 0x021f, blocks: (B:122:0x01f0, B:124:0x021b, B:133:0x0216), top: B:2:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0232 A[Catch: IOException -> 0x0236, TRY_LEAVE, TryCatch #5 {IOException -> 0x0236, blocks: (B:145:0x022d, B:140:0x0232), top: B:144:0x022d }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x022d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x012a A[Catch: IOException -> 0x0126, TryCatch #15 {IOException -> 0x0126, blocks: (B:62:0x0122, B:52:0x012a, B:54:0x012f, B:56:0x0134), top: B:61:0x0122 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012f A[Catch: IOException -> 0x0126, TryCatch #15 {IOException -> 0x0126, blocks: (B:62:0x0122, B:52:0x012a, B:54:0x012f, B:56:0x0134), top: B:61:0x0122 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0134 A[Catch: IOException -> 0x0126, TRY_LEAVE, TryCatch #15 {IOException -> 0x0126, blocks: (B:62:0x0122, B:52:0x012a, B:54:0x012f, B:56:0x0134), top: B:61:0x0122 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015e A[Catch: IOException -> 0x015a, TryCatch #0 {IOException -> 0x015a, blocks: (B:83:0x0156, B:70:0x015e, B:72:0x0163, B:74:0x0168), top: B:82:0x0156 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0163 A[Catch: IOException -> 0x015a, TryCatch #0 {IOException -> 0x015a, blocks: (B:83:0x0156, B:70:0x015e, B:72:0x0163, B:74:0x0168), top: B:82:0x0156 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0168 A[Catch: IOException -> 0x015a, TRY_LEAVE, TryCatch #0 {IOException -> 0x015a, blocks: (B:83:0x0156, B:70:0x015e, B:72:0x0163, B:74:0x0168), top: B:82:0x0156 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0156 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.sec.android.diagmonagent.log.ged.servreinterface.model.response.Response execute() {
        /*
            Method dump skipped, instructions count: 570
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.android.diagmonagent.log.ged.servreinterface.model.client.DiagmonClient.execute():com.sec.android.diagmonagent.log.ged.servreinterface.model.response.Response");
    }

    public DiagmonClient(Context context, String str, String str2, String str3, String str4) {
        this.mURLConnection = null;
        try {
            String str5 = RestUtils.DEVICE_KEY;
            URL url = new URL("https://diagmon-serviceapi.samsungdm.com".concat(str).concat(str2));
            this.response = new Response();
            this.mMethod = str3;
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            this.mURLConnection = httpURLConnection;
            httpURLConnection.setRequestMethod(str3);
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setRequestProperty("Accept", "application/json");
            String diagmonPreference = PreferenceUtils.getDiagmonPreference(context, "JWT_TOKEN", "");
            AppLog.d("getAuth(): " + RestUtils.makeAuth(context, str, str4, "", diagmonPreference));
            httpURLConnection.setRequestProperty("Authorization", RestUtils.makeAuth(context, str, str4, "", diagmonPreference));
            httpURLConnection.setConnectTimeout(2000);
            httpURLConnection.setReadTimeout(2000);
            if (str3.equals("GET")) {
                httpURLConnection.setDoInput(true);
            } else {
                httpURLConnection.setDoOutput(true);
            }
        } catch (IOException unused) {
            AppLog.e(" constructor?");
        }
    }

    public DiagmonClient(Context context, String str, String str2, String str3, JSONObject jSONObject) {
        this.mURLConnection = null;
        try {
            String str4 = RestUtils.DEVICE_KEY;
            URL url = new URL("https://diagmon-serviceapi.samsungdm.com".concat(str));
            this.response = new Response();
            this.mBody = jSONObject;
            this.mMethod = str2;
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            this.mURLConnection = httpURLConnection;
            httpURLConnection.setRequestMethod(str2);
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setRequestProperty("Accept", "application/json");
            String jSONObject2 = jSONObject.toString();
            String diagmonPreference = PreferenceUtils.getDiagmonPreference(context, "JWT_TOKEN", "");
            AppLog.d("getAuth(): " + RestUtils.makeAuth(context, str, str3, jSONObject2, diagmonPreference));
            httpURLConnection.setRequestProperty("Authorization", RestUtils.makeAuth(context, str, str3, jSONObject2, diagmonPreference));
            httpURLConnection.setConnectTimeout(2000);
            httpURLConnection.setReadTimeout(2000);
            if (str2.equals("GET")) {
                httpURLConnection.setDoInput(true);
            } else {
                httpURLConnection.setDoOutput(true);
            }
        } catch (IOException e) {
            AppLog.e(e + " constructor?");
        }
    }
}
