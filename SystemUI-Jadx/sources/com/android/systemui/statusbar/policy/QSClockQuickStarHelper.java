package com.android.systemui.statusbar.policy;

import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import com.android.systemui.Dependency;
import com.android.systemui.shade.SecPanelExpansionStateNotifier;
import com.android.systemui.slimindicator.SlimIndicatorViewMediator;
import com.android.systemui.slimindicator.SlimIndicatorViewMediatorImpl;
import com.android.systemui.slimindicator.SlimIndicatorViewSubscriber;
import com.samsung.systemui.splugins.slimindicator.SPluginSlimIndicatorModel;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class QSClockQuickStarHelper implements SlimIndicatorViewSubscriber {
    public final Runnable mRingBellOfTowerRunnable;
    public final AnonymousClass2 mSecondTick = new Runnable() { // from class: com.android.systemui.statusbar.policy.QSClockQuickStarHelper.2
        @Override // java.lang.Runnable
        public final void run() {
            QSClockQuickStarHelper.this.mRingBellOfTowerRunnable.run();
            QSClockQuickStarHelper qSClockQuickStarHelper = QSClockQuickStarHelper.this;
            Handler handler = qSClockQuickStarHelper.mSecondsHandler;
            if (handler != null) {
                qSClockQuickStarHelper.getClass();
                handler.postAtTime(this, (SystemClock.uptimeMillis() + 1000) - (System.currentTimeMillis() % 1000));
            }
        }
    };
    public Handler mSecondsHandler;
    public boolean mShouldShowSecondsClockByQuickStar;
    public final SlimIndicatorViewMediator mSlimIndicatorViewMediator;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.statusbar.policy.QSClockQuickStarHelper$2] */
    public QSClockQuickStarHelper(SlimIndicatorViewMediator slimIndicatorViewMediator, Runnable runnable) {
        this.mSlimIndicatorViewMediator = slimIndicatorViewMediator;
        this.mRingBellOfTowerRunnable = runnable;
    }

    public final boolean shouldShowSecondsClock() {
        boolean z;
        if (!this.mShouldShowSecondsClockByQuickStar) {
            return false;
        }
        int i = ((SecPanelExpansionStateNotifier) Dependency.get(SecPanelExpansionStateNotifier.class)).mModel.panelOpenState;
        if (i != 2 && i != 1) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    @Override // com.android.systemui.slimindicator.SlimIndicatorViewSubscriber
    public final void updateQuickStarStyle() {
        boolean z;
        SlimIndicatorViewMediatorImpl slimIndicatorViewMediatorImpl = (SlimIndicatorViewMediatorImpl) this.mSlimIndicatorViewMediator;
        String iconBlacklist = slimIndicatorViewMediatorImpl.mSettingsHelper.getIconBlacklist();
        if (slimIndicatorViewMediatorImpl.mPluginMediator.mIsSPluginConnected && iconBlacklist != null && iconBlacklist.contains(SPluginSlimIndicatorModel.DB_KEY_SHOW_SECONDS)) {
            z = true;
        } else {
            z = false;
        }
        Log.d("QSClockBellTower", "updateQuickStarStyle() shouldShowSecondsClock(" + this.mShouldShowSecondsClockByQuickStar + " >> " + z + ")");
        if (this.mShouldShowSecondsClockByQuickStar != z) {
            this.mShouldShowSecondsClockByQuickStar = z;
            updateSecondsClockHandler();
        }
        this.mRingBellOfTowerRunnable.run();
    }

    public final void updateSecondsClockHandler() {
        boolean shouldShowSecondsClock = shouldShowSecondsClock();
        AnonymousClass2 anonymousClass2 = this.mSecondTick;
        if (shouldShowSecondsClock) {
            if (this.mSecondsHandler == null) {
                Handler handler = new Handler();
                this.mSecondsHandler = handler;
                handler.post(anonymousClass2);
                return;
            }
            return;
        }
        Handler handler2 = this.mSecondsHandler;
        if (handler2 != null) {
            handler2.removeCallbacks(anonymousClass2);
            this.mSecondsHandler = null;
        }
    }
}
