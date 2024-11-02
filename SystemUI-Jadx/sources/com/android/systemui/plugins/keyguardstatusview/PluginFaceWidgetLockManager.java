package com.android.systemui.plugins.keyguardstatusview;

import android.os.Bundle;
import com.android.systemui.plugins.annotations.VersionCheck;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PluginFaceWidgetLockManager {
    void addLockStarStateCallback(PluginLockStarStateCallback pluginLockStarStateCallback);

    @VersionCheck(version = 1043)
    Consumer<?> getModifier(String str);

    @VersionCheck(version = 1043)
    Supplier<?> getSupplier(String str);

    @VersionCheck(version = PluginKeyguardStatusView.VERSION)
    Bundle onSendExtraData(Bundle bundle);

    void removeLockStarStateCallback(PluginLockStarStateCallback pluginLockStarStateCallback);
}
