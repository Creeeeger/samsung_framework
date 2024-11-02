package com.android.systemui.facewidget.plugin;

import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.plugins.keyguardstatusview.PluginLockPatternUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class FaceWidgetLockPatternUtilsWrapper implements PluginLockPatternUtils {
    public final LockPatternUtils mLockPatternUtils;
    public final KeyguardUpdateMonitor mUpdateMonitor;

    public FaceWidgetLockPatternUtilsWrapper(LockPatternUtils lockPatternUtils, KeyguardUpdateMonitor keyguardUpdateMonitor) {
        this.mLockPatternUtils = lockPatternUtils;
        this.mUpdateMonitor = keyguardUpdateMonitor;
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginLockPatternUtils
    public final String getDeviceOwnerInfo() {
        return this.mUpdateMonitor.getDeviceOwnerInfo();
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginLockPatternUtils
    public final String getOwnerInfo(int i) {
        return this.mUpdateMonitor.getOwnerInfo();
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginLockPatternUtils
    public final boolean isDeviceOwnerInfoEnabled() {
        return this.mUpdateMonitor.isDeviceOwnerInfoEnabled();
    }

    @Override // com.android.systemui.plugins.keyguardstatusview.PluginLockPatternUtils
    public final boolean isOwnerInfoEnabled(int i) {
        return this.mUpdateMonitor.isOwnerInfoEnabled();
    }
}
