package com.sec.android.diagmonagent.log.ged.servreinterface.model.client;

import android.content.Context;
import com.sec.android.diagmonagent.common.logger.AppLog;
import com.sec.android.diagmonagent.log.ged.servreinterface.model.response.Response;
import com.sec.android.diagmonagent.log.ged.util.RestUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class TokenClient {
    public final HttpURLConnection mURLConnection;
    public final Response response;

    public TokenClient(Context context, String str) {
        this.mURLConnection = null;
        try {
            String str2 = RestUtils.DEVICE_KEY;
            URL url = new URL("https://diagmon-serviceapi.samsungdm.com".concat(str));
            this.response = new Response();
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            this.mURLConnection = httpURLConnection;
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setRequestProperty("Accept", "application/json");
            AppLog.d("getJwtAuth(): " + RestUtils.makeAuth(context, str));
            httpURLConnection.setRequestProperty("Authorization", RestUtils.makeAuth(context, str));
            httpURLConnection.setConnectTimeout(2000);
            httpURLConnection.setReadTimeout(2000);
            httpURLConnection.setDoInput(true);
        } catch (IOException e) {
            AppLog.e(e + " constructor?");
        }
    }
}
