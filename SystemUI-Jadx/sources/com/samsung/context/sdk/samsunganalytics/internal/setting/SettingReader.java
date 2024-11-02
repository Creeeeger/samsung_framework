package com.samsung.context.sdk.samsunganalytics.internal.setting;

import android.content.Context;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import java.util.HashSet;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class SettingReader {
    public final String THREE_DEPTH_ENTITY_DELIMETER;
    public final String TWO_DEPTH_DELIMETER;
    public final String TWO_DEPTH_ENTITY_DELIMETER;
    public final Set appPrefNames;
    public final Context context;

    public SettingReader(Context context) {
        this.context = context;
        this.appPrefNames = context.getSharedPreferences("SamsungAnalyticsPrefs", 0).getStringSet("AppPrefs", new HashSet());
        Utils.Depth depth = Utils.Depth.TWO_DEPTH;
        this.TWO_DEPTH_DELIMETER = depth.getKeyValueDLM();
        this.TWO_DEPTH_ENTITY_DELIMETER = depth.getCollectionDLM();
        this.THREE_DEPTH_ENTITY_DELIMETER = Utils.Depth.THREE_DEPTH.getCollectionDLM();
    }
}
