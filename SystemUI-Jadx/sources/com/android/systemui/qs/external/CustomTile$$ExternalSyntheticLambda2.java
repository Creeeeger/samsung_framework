package com.android.systemui.qs.external;

import android.os.RemoteException;
import com.android.systemui.QpRune;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.qs.tileimpl.SQSTileImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CustomTile$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CustomTile f$0;

    public /* synthetic */ CustomTile$$ExternalSyntheticLambda2(CustomTile customTile, int i) {
        this.$r8$classId = i;
        this.f$0 = customTile;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                CustomTile customTile = this.f$0;
                customTile.getClass();
                CustomTile$$ExternalSyntheticLambda2 customTile$$ExternalSyntheticLambda2 = new CustomTile$$ExternalSyntheticLambda2(customTile, 2);
                if (QpRune.QUICK_PANEL_SUBSCREEN) {
                    DisplayLifecycle displayLifecycle = customTile.mDisplayLifecycle;
                    if (displayLifecycle != null) {
                        z = displayLifecycle.mIsFolderOpened;
                    }
                    if (!z) {
                        j = 0;
                        ((SQSTileImpl) customTile).mHandler.postDelayed(customTile$$ExternalSyntheticLambda2, j);
                        return;
                    }
                }
                j = 200;
                ((SQSTileImpl) customTile).mHandler.postDelayed(customTile$$ExternalSyntheticLambda2, j);
                return;
            case 1:
                CustomTile customTile2 = this.f$0;
                if (customTile2.mTileServices.mIsBootCompleted) {
                    customTile2.mInitialized = true;
                    customTile2.mServiceManager.setBindRequested(true);
                    TileLifecycleManager tileLifecycleManager = customTile2.mService;
                    tileLifecycleManager.onStartListening();
                    tileLifecycleManager.refreshDetailInfo();
                    return;
                }
                return;
            case 2:
                CustomTile customTile3 = this.f$0;
                customTile3.getClass();
                try {
                    customTile3.mService.onUnlockComplete();
                    customTile3.mServiceManager.setWaitingUnlockState(false);
                    ((SQSTileImpl) customTile3).mHandler.postDelayed(customTile3.mStopUnlockAndRun, 1000L);
                    return;
                } catch (RemoteException unused) {
                    return;
                }
            case 3:
                this.f$0.updateDefaultTileAndIcon();
                return;
            default:
                CustomTile customTile4 = this.f$0;
                customTile4.mInitialized = true;
                customTile4.mServiceManager.setBindRequested(true);
                TileLifecycleManager tileLifecycleManager2 = customTile4.mService;
                tileLifecycleManager2.onStartListening();
                tileLifecycleManager2.refreshDetailInfo();
                return;
        }
    }
}
