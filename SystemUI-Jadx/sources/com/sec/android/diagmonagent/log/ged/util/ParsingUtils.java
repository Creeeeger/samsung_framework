package com.sec.android.diagmonagent.log.ged.util;

import android.util.Log;
import com.sec.android.diagmonagent.log.ged.servreinterface.model.response.TokenResponse;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ParsingUtils {
    public static TokenResponse parseTokenResponse(String str) {
        TokenResponse tokenResponse = new TokenResponse();
        try {
            tokenResponse.token = new JSONObject(str).getString("token");
        } catch (JSONException unused) {
            Log.e(DeviceUtils.TAG, "JSONException occurred while parsing token response");
        }
        return tokenResponse;
    }
}
