package com.android.systemui.globalactions.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.samsung.android.globalactions.util.ConditionChecker;
import com.samsung.android.globalactions.util.LogWrapper;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FakeConditionChecker implements ConditionChecker {
    public static final HashMap sConditionMap = new HashMap();
    public static FakeConditionChecker sInstance;
    public final ConditionChecker mDefaultSystemCondition;
    public final LogWrapper mLogWrapper;
    public AnonymousClass1 mReceiver;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.globalactions.util.FakeConditionChecker$1, android.content.BroadcastReceiver] */
    public FakeConditionChecker(Context context, ConditionChecker conditionChecker, LogWrapper logWrapper) {
        this.mDefaultSystemCondition = conditionChecker;
        this.mLogWrapper = logWrapper;
        if (this.mReceiver == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.android.systemui.globalactions.ACTION_UPDATE_SYSTEM_CONDITION");
            intentFilter.addAction("com.android.systemui.globalactions.ACTION_REMOVE_SYSTEM_CONDITION");
            ?? r0 = new BroadcastReceiver() { // from class: com.android.systemui.globalactions.util.FakeConditionChecker.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context2, Intent intent) {
                    String action = intent.getAction();
                    String stringExtra = intent.getStringExtra("key");
                    Boolean valueOf = Boolean.valueOf(intent.getBooleanExtra("enabled", false));
                    LogWrapper logWrapper2 = FakeConditionChecker.this.mLogWrapper;
                    StringBuilder m = KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("onReceive: ", action, ",", stringExtra, ",");
                    m.append(valueOf);
                    logWrapper2.v("FakeConditionChecker", m.toString());
                    if ("com.android.systemui.globalactions.ACTION_UPDATE_SYSTEM_CONDITION".equals(action)) {
                        FakeConditionChecker.this.updateCondition(stringExtra, valueOf);
                    } else if ("com.android.systemui.globalactions.ACTION_REMOVE_SYSTEM_CONDITION".equals(action)) {
                        FakeConditionChecker fakeConditionChecker = FakeConditionChecker.this;
                        fakeConditionChecker.getClass();
                        FakeConditionChecker.sConditionMap.remove(stringExtra);
                        fakeConditionChecker.mLogWrapper.v("FakeConditionChecker", "removed");
                    }
                }
            };
            this.mReceiver = r0;
            context.registerReceiver(r0, intentFilter, 2);
            logWrapper.v("FakeConditionChecker", "initialized");
        }
        sInstance = this;
    }

    public final boolean isEnabled(Object obj) {
        String obj2 = obj.toString();
        HashMap hashMap = sConditionMap;
        if (hashMap.containsKey(obj2)) {
            boolean booleanValue = ((Boolean) hashMap.get(obj2)).booleanValue();
            this.mLogWrapper.v("FakeConditionChecker", "[Fake : " + obj2.toLowerCase() + "] " + booleanValue);
            return booleanValue;
        }
        return this.mDefaultSystemCondition.isEnabled(obj);
    }

    public final void updateCondition(String str, Boolean bool) {
        HashMap hashMap = sConditionMap;
        if (!hashMap.containsKey(str)) {
            hashMap.put(str, bool);
            this.mLogWrapper.v("FakeConditionChecker", "added");
        } else {
            hashMap.replace(str, bool);
            this.mLogWrapper.v("FakeConditionChecker", "updated");
        }
    }
}
