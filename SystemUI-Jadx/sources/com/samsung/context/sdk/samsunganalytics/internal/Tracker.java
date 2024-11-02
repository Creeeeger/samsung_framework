package com.samsung.context.sdk.samsunganalytics.internal;

import android.app.Application;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.samsung.context.sdk.samsunganalytics.Configuration;
import com.samsung.context.sdk.samsunganalytics.internal.executor.SingleThreadExecutor;
import com.samsung.context.sdk.samsunganalytics.internal.policy.PolicyUtils;
import com.samsung.context.sdk.samsunganalytics.internal.policy.Validation;
import com.samsung.context.sdk.samsunganalytics.internal.property.PropertyLogBuildClient;
import com.samsung.context.sdk.samsunganalytics.internal.property.PropertyRegisterClient;
import com.samsung.context.sdk.samsunganalytics.internal.sender.Sender;
import com.samsung.context.sdk.samsunganalytics.internal.util.Debug;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Tracker {
    public final Application application;
    public final Configuration configuration;
    public final Context mContext;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.samsung.context.sdk.samsunganalytics.internal.Tracker$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public final class AnonymousClass1 {
        public AnonymousClass1() {
        }

        public final boolean isAgreement() {
            if (Settings.System.getInt(Tracker.this.mContext.getContentResolver(), "samsung_errorlog_agree", 0) != 1) {
                return false;
            }
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x012e, code lost:
    
        if (r0 != false) goto L44;
     */
    /* JADX WARN: Type inference failed for: r8v12, types: [com.samsung.context.sdk.samsunganalytics.internal.Tracker$2] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public Tracker(android.app.Application r18, com.samsung.context.sdk.samsunganalytics.Configuration r19) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.context.sdk.samsunganalytics.internal.Tracker.<init>(android.app.Application, com.samsung.context.sdk.samsunganalytics.Configuration):void");
    }

    public final int sendLog(Map map) {
        boolean z;
        String str;
        HashMap hashMap;
        Application application = this.application;
        boolean isDMADataProvideVersion = Utils.isDMADataProvideVersion(application.getApplicationContext());
        Configuration configuration = this.configuration;
        if (!isDMADataProvideVersion) {
            if (!configuration.userAgreement.isAgreement()) {
                Debug.LogD("user do not agree");
                return -2;
            }
            HashMap hashMap2 = (HashMap) map;
            if (hashMap2.containsKey("pd")) {
                hashMap2.remove("pd");
            }
            if (hashMap2.containsKey("ps")) {
                hashMap2.remove("ps");
            }
        }
        if (map != null) {
            HashMap hashMap3 = (HashMap) map;
            if (!hashMap3.isEmpty()) {
                if (PolicyUtils.senderType < 2 && TextUtils.isEmpty(configuration.deviceId)) {
                    Debug.LogD("did is empty");
                    z = false;
                } else {
                    z = true;
                }
                if (!z) {
                    return -5;
                }
                boolean equals = "pp".equals(hashMap3.get("t"));
                Context context = this.mContext;
                if (equals) {
                    SingleThreadExecutor.getInstance().execute(new PropertyRegisterClient(context, map));
                    SingleThreadExecutor.getInstance().execute(new PropertyLogBuildClient(context, configuration));
                    return 0;
                }
                if ("ev".equals(hashMap3.get("t")) && (str = (String) hashMap3.get("et")) != null && (str.equals(String.valueOf(10)) || str.equals(String.valueOf(11)))) {
                    String string = context.getSharedPreferences("SAProperties", 0).getString("guid", "");
                    if (!TextUtils.isEmpty(string)) {
                        String str2 = (String) hashMap3.get("cd");
                        if (TextUtils.isEmpty(str2)) {
                            hashMap = new HashMap();
                        } else {
                            Utils.Depth depth = Utils.Depth.TWO_DEPTH;
                            HashMap hashMap4 = new HashMap();
                            for (String str3 : str2.split(depth.getCollectionDLM())) {
                                String[] split = str3.split(depth.getKeyValueDLM());
                                if (split.length > 1) {
                                    hashMap4.put(split[0], split[1]);
                                }
                            }
                            hashMap = hashMap4;
                        }
                        hashMap.put("guid", string);
                        hashMap3.put("cd", Utils.makeDelimiterString(Validation.checkSizeLimit(hashMap), Utils.Depth.TWO_DEPTH));
                    }
                }
                return Sender.get(application, PolicyUtils.senderType, configuration).send(map);
            }
        }
        Debug.LogD("Failure to send Logs : No data");
        return -3;
    }
}
