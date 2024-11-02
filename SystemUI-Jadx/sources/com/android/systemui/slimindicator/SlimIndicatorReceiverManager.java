package com.android.systemui.slimindicator;

import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SlimIndicatorReceiverManager {
    public boolean mIsRegistered = false;
    public final ArrayList receivers;

    public SlimIndicatorReceiverManager(SlimIndicatorSettingsBackUpManager slimIndicatorSettingsBackUpManager) {
        SlimIndicatorIconBlacklistReceiver slimIndicatorIconBlacklistReceiver = new SlimIndicatorIconBlacklistReceiver(slimIndicatorSettingsBackUpManager);
        SlimIndicatorPackageReceiver slimIndicatorPackageReceiver = new SlimIndicatorPackageReceiver(slimIndicatorSettingsBackUpManager);
        ArrayList arrayList = new ArrayList();
        this.receivers = arrayList;
        arrayList.add(slimIndicatorIconBlacklistReceiver);
        arrayList.add(slimIndicatorPackageReceiver);
    }
}
