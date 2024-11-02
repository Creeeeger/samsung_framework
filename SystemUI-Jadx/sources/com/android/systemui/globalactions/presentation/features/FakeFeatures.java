package com.android.systemui.globalactions.presentation.features;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.samsung.android.globalactions.presentation.features.Features;
import com.samsung.android.globalactions.util.LogWrapper;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FakeFeatures implements Features {
    public static final HashMap sConditionMap = new HashMap();
    public static FakeFeatures sInstance;
    public final Features mDefaultFeatures;
    public final LogWrapper mLogWrapper;
    public AnonymousClass1 mReceiver;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.globalactions.presentation.features.FakeFeatures$1, android.content.BroadcastReceiver] */
    public FakeFeatures(Context context, Features features, LogWrapper logWrapper) {
        this.mDefaultFeatures = features;
        this.mLogWrapper = logWrapper;
        if (this.mReceiver == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.android.systemui.globalactions.ACTION_UPDATE_SYSTEM_FEATURE");
            intentFilter.addAction("com.android.systemui.globalactions.ACTION_REMOVE_SYSTEM_FEATURE");
            ?? r0 = new BroadcastReceiver() { // from class: com.android.systemui.globalactions.presentation.features.FakeFeatures.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context2, Intent intent) {
                    String action = intent.getAction();
                    String stringExtra = intent.getStringExtra("key");
                    Boolean valueOf = Boolean.valueOf(intent.getBooleanExtra("enabled", false));
                    LogWrapper logWrapper2 = FakeFeatures.this.mLogWrapper;
                    StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("onReceive: ", action, ",", stringExtra, ",");
                    m.append(valueOf);
                    logWrapper2.v("FakeFeatures", m.toString());
                    if ("com.android.systemui.globalactions.ACTION_UPDATE_SYSTEM_FEATURE".equals(action)) {
                        FakeFeatures.this.updateFeature(stringExtra, valueOf);
                    } else if ("com.android.systemui.globalactions.ACTION_REMOVE_SYSTEM_FEATURE".equals(action)) {
                        FakeFeatures fakeFeatures = FakeFeatures.this;
                        fakeFeatures.getClass();
                        FakeFeatures.sConditionMap.remove(stringExtra);
                        fakeFeatures.mLogWrapper.v("FakeFeatures", "removed");
                    }
                }
            };
            this.mReceiver = r0;
            context.registerReceiver(r0, intentFilter, 2);
            logWrapper.v("FakeFeatures", "initialized");
        }
        sInstance = this;
    }

    public final boolean isEnabled(String str) {
        HashMap hashMap = sConditionMap;
        if (hashMap.containsKey(str)) {
            boolean booleanValue = ((Boolean) hashMap.get(str)).booleanValue();
            this.mLogWrapper.v("FakeFeatures", "[Fake : " + str + "] " + booleanValue);
            return booleanValue;
        }
        return this.mDefaultFeatures.isEnabled(str);
    }

    public final void updateFeature(String str, Boolean bool) {
        HashMap hashMap = sConditionMap;
        if (!hashMap.containsKey(str)) {
            hashMap.put(str, bool);
            this.mLogWrapper.v("FakeFeatures", "added");
        } else {
            hashMap.replace(str, bool);
            this.mLogWrapper.v("FakeFeatures", "updated");
        }
    }
}
