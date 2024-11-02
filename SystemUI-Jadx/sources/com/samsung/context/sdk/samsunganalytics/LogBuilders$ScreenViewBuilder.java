package com.samsung.context.sdk.samsunganalytics;

import android.text.TextUtils;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LogBuilders$ScreenViewBuilder extends LogBuilders$LogBuilder {
    public final Map build() {
        Map map = this.logs;
        if (TextUtils.isEmpty((CharSequence) ((HashMap) map).get("pn"))) {
            Utils.throwException("Failure to build Log : Screen name cannot be null");
        } else {
            set("t", "pv");
        }
        set("ts", String.valueOf(System.currentTimeMillis()));
        return map;
    }

    @Override // com.samsung.context.sdk.samsunganalytics.LogBuilders$LogBuilder
    public final LogBuilders$LogBuilder getThis() {
        return this;
    }
}
