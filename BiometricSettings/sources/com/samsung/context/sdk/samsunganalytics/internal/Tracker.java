package com.samsung.context.sdk.samsunganalytics.internal;

import android.app.Application;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.samsung.context.sdk.samsunganalytics.Configuration;
import com.samsung.context.sdk.samsunganalytics.UserAgreement;
import com.samsung.context.sdk.samsunganalytics.internal.policy.PolicyUtils;
import com.samsung.context.sdk.samsunganalytics.internal.sender.Sender;
import com.samsung.context.sdk.samsunganalytics.internal.util.Debug;
import com.samsung.context.sdk.samsunganalytics.internal.util.Preferences;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class Tracker {
    private Application application;
    private Configuration configuration;

    /* renamed from: com.samsung.context.sdk.samsunganalytics.internal.Tracker$1, reason: invalid class name */
    final class AnonymousClass1 implements UserAgreement {
        final /* synthetic */ Context val$context;

        AnonymousClass1(Context context) {
            this.val$context = context;
        }

        @Override // com.samsung.context.sdk.samsunganalytics.UserAgreement
        public final boolean isAgreement() {
            return Settings.System.getInt(this.val$context.getContentResolver(), "samsung_errorlog_agree", 0) == 1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x01d7, code lost:
    
        if ((java.lang.Long.valueOf(java.lang.System.currentTimeMillis()).longValue() > (((long) 6) * 3600000) + r13.longValue()) != false) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0221 A[LOOP:0: B:33:0x021b->B:35:0x0221, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public Tracker(android.app.Application r22, com.samsung.context.sdk.samsunganalytics.Configuration r23) {
        /*
            Method dump skipped, instructions count: 617
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.context.sdk.samsunganalytics.internal.Tracker.<init>(android.app.Application, com.samsung.context.sdk.samsunganalytics.Configuration):void");
    }

    public final int sendLog(Map map) {
        boolean z;
        if (!((AnonymousClass1) this.configuration.getUserAgreement()).isAgreement()) {
            Debug.LogD("user do not agree");
            return -2;
        }
        if (map != null) {
            HashMap hashMap = (HashMap) map;
            if (!hashMap.isEmpty()) {
                boolean z2 = false;
                if (PolicyUtils.getSenderType() < 2 && TextUtils.isEmpty(this.configuration.getDeviceId())) {
                    Debug.LogD("did is empty");
                    z = false;
                } else {
                    z = true;
                }
                if (!z) {
                    return -5;
                }
                if (((String) hashMap.get("t")).equals("pp")) {
                    if (Utils.compareDays(1, Long.valueOf(Preferences.getPreferences(this.application).getLong("property_sent_date", 0L)))) {
                        Preferences.getPreferences(this.application).edit().putLong("property_sent_date", System.currentTimeMillis()).apply();
                        z2 = true;
                    } else {
                        Debug.LogD("do not send property < 1day");
                    }
                    if (!z2) {
                        return -9;
                    }
                }
                return Sender.get(this.application, PolicyUtils.getSenderType(), this.configuration).send(map);
            }
        }
        Debug.LogD("Failure to send Logs : No data");
        return -3;
    }
}
