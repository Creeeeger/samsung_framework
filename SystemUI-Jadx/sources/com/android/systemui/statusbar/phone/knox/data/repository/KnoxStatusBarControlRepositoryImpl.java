package com.android.systemui.statusbar.phone.knox.data.repository;

import com.android.systemui.knox.CustomSdkMonitor;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.knox.KnoxStateMonitorImpl;
import com.android.systemui.statusbar.phone.knox.data.model.KnoxStatusBarControlModel;
import com.android.systemui.util.DeviceType;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KnoxStatusBarControlRepositoryImpl implements KnoxStatusBarControlRepository {
    public final boolean enableLog = DeviceType.isEngOrUTBinary();
    public final KnoxStateMonitor knoxStateMonitor;
    public final KnoxStatusBarControlModel knoxStatusBarControlModel;
    public final ReadonlyStateFlow knoxStatusBarState;

    public KnoxStatusBarControlRepositoryImpl(KnoxStateMonitor knoxStateMonitor, CoroutineScope coroutineScope) {
        boolean z;
        String str;
        int i;
        int i2;
        int i3;
        this.knoxStateMonitor = knoxStateMonitor;
        KnoxStateMonitorImpl knoxStateMonitorImpl = (KnoxStateMonitorImpl) knoxStateMonitor;
        boolean isStatusBarHidden = knoxStateMonitorImpl.isStatusBarHidden();
        CustomSdkMonitor customSdkMonitor = knoxStateMonitorImpl.mCustomSdkMonitor;
        if (customSdkMonitor != null && customSdkMonitor.mStatusBarIconsState) {
            z = true;
        } else {
            z = false;
        }
        if (customSdkMonitor == null) {
            str = null;
        } else {
            str = customSdkMonitor.mStatusBarText;
        }
        if (customSdkMonitor == null) {
            i = 0;
        } else {
            i = customSdkMonitor.mStatusBarTextStyle;
        }
        if (customSdkMonitor == null) {
            i2 = 0;
        } else {
            i2 = customSdkMonitor.mStatusBarTextSize;
        }
        if (customSdkMonitor == null) {
            i3 = 0;
        } else {
            i3 = customSdkMonitor.mStatusBarTextWidth;
        }
        KnoxStatusBarControlModel knoxStatusBarControlModel = new KnoxStatusBarControlModel(isStatusBarHidden, z, str, i, i2, i3);
        this.knoxStatusBarControlModel = knoxStatusBarControlModel;
        this.knoxStatusBarState = FlowKt.stateIn(FlowKt.callbackFlow(new KnoxStatusBarControlRepositoryImpl$knoxStatusBarState$1(this, null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(SharingStarted.Companion), knoxStatusBarControlModel);
    }
}
