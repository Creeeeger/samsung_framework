package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.hardware.devicestate.DeviceStateManager;
import android.os.Trace;
import com.android.systemui.LsRune;
import com.android.systemui.shade.ShadeControllerImpl;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FoldStateListener implements DeviceStateManager.DeviceStateCallback {
    public final int[] foldedDeviceStates;
    public final int[] goToSleepDeviceStates;
    public final OnFoldStateChangeListener listener;
    public Boolean wasFolded;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface OnFoldStateChangeListener {
    }

    public FoldStateListener(Context context, OnFoldStateChangeListener onFoldStateChangeListener) {
        this.listener = onFoldStateChangeListener;
        this.foldedDeviceStates = context.getResources().getIntArray(17236216);
        this.goToSleepDeviceStates = context.getResources().getIntArray(17236165);
    }

    public final void onStateChanged(int i) {
        boolean contains = ArraysKt___ArraysKt.contains(i, this.foldedDeviceStates);
        if (Intrinsics.areEqual(this.wasFolded, Boolean.valueOf(contains))) {
            return;
        }
        this.wasFolded = Boolean.valueOf(contains);
        ArraysKt___ArraysKt.contains(i, this.goToSleepDeviceStates);
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) ((CentralSurfacesImpl$$ExternalSyntheticLambda0) this.listener).f$0;
        centralSurfacesImpl.getClass();
        Trace.beginSection("CentralSurfaces#onFoldedStateChanged");
        centralSurfacesImpl.mIsFolded = contains;
        centralSurfacesImpl.mSecLightRevealScrimHelper.isFolded = contains;
        if (LsRune.AOD_SUB_DISPLAY_LOCK || LsRune.AOD_SUB_DISPLAY_COVER) {
            centralSurfacesImpl.mAODAmbientWallpaperHelper.isFolded = contains;
            centralSurfacesImpl.mWallpaperChangedReceiver.onReceive(centralSurfacesImpl.mContext, null);
        }
        ShadeControllerImpl shadeControllerImpl = (ShadeControllerImpl) centralSurfacesImpl.mShadeController;
        boolean isShadeFullyExpanded = shadeControllerImpl.mNotificationPanelViewController.isShadeFullyExpanded();
        boolean isExpandingOrCollapsing = shadeControllerImpl.mNotificationPanelViewController.isExpandingOrCollapsing();
        if (centralSurfacesImpl.mState != 0 && (isShadeFullyExpanded || isExpandingOrCollapsing)) {
            centralSurfacesImpl.mCloseQsBeforeScreenOff = true;
        }
        Trace.endSection();
    }
}
