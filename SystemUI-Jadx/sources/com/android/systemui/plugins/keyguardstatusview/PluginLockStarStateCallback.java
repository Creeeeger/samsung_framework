package com.android.systemui.plugins.keyguardstatusview;

import android.os.Bundle;
import com.android.systemui.plugins.annotations.SupportVersionChecker;
import com.android.systemui.plugins.annotations.VersionCheck;
import com.samsung.android.knox.EnterpriseContainerCallback;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@SupportVersionChecker
/* loaded from: classes2.dex */
public interface PluginLockStarStateCallback {
    @VersionCheck(version = 1017)
    default Bundle onUiInfoRequested() {
        return new Bundle();
    }

    @VersionCheck(version = EnterpriseContainerCallback.CONTAINER_PACKAGE_INFORMATION)
    default void onClockChanged(Bundle bundle) {
    }

    @VersionCheck(version = EnterpriseContainerCallback.CONTAINER_PACKAGE_INFORMATION)
    default void onFaceWidgetChanged(Bundle bundle) {
    }

    @VersionCheck(version = EnterpriseContainerCallback.CONTAINER_PACKAGE_INFORMATION)
    default void onLockStarEnabled(boolean z) {
    }

    @VersionCheck(version = 1017)
    default void onMusicChanged(Bundle bundle) {
    }

    @VersionCheck(version = EnterpriseContainerCallback.CONTAINER_PACKAGE_INFORMATION)
    default void onViewModeChanged(int i) {
    }
}
