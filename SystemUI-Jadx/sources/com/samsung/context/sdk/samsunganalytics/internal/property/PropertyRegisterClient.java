package com.samsung.context.sdk.samsunganalytics.internal.property;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.samsung.context.sdk.samsunganalytics.internal.executor.AsyncTaskClient;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class PropertyRegisterClient implements AsyncTaskClient {
    public final Context mContext;
    public final Map mMap;

    public PropertyRegisterClient(Context context, Map<String, String> map) {
        this.mContext = context;
        map.remove("t");
        this.mMap = map;
    }

    @Override // com.samsung.context.sdk.samsunganalytics.internal.executor.AsyncTaskClient
    public final int onFinish() {
        return 0;
    }

    @Override // com.samsung.context.sdk.samsunganalytics.internal.executor.AsyncTaskClient
    public final void run() {
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("SAProperties", 0);
        for (Map.Entry entry : this.mMap.entrySet()) {
            if (TextUtils.isEmpty((CharSequence) entry.getValue())) {
                sharedPreferences.edit().remove((String) entry.getKey()).apply();
            } else {
                sharedPreferences.edit().putString((String) entry.getKey(), (String) entry.getValue()).apply();
            }
        }
    }
}
