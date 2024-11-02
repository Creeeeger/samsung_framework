package com.samsung.context.sdk.samsunganalytics;

import android.text.TextUtils;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LogBuilders$SettingPrefBuilder {
    public final Map map = new HashMap();

    public final void addKey(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            Utils.throwException("Failure to build logs [setting preference] : Setting key cannot be null.");
        }
        HashMap hashMap = (HashMap) this.map;
        if (!hashMap.containsKey(str) && !TextUtils.isEmpty(str)) {
            hashMap.put(str, new HashSet());
        } else if (TextUtils.isEmpty(str)) {
            Utils.throwException("Failure to build logs [setting preference] : Preference name cannot be null.");
        }
        ((Set) hashMap.get(str)).add(str2);
    }
}
