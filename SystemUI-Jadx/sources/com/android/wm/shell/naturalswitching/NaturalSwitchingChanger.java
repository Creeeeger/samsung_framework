package com.android.wm.shell.naturalswitching;

import android.app.ActivityManager;
import android.graphics.Rect;
import android.view.SurfaceControl;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.rune.CoreRune;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class NaturalSwitchingChanger {
    public Consumer mHideLayoutCallback;
    public boolean mIsMainDisplay;
    public SplitScreenController mSplitController;
    public SyncTransactionQueue mSyncQueue;
    public ActivityManager.RunningTaskInfo mTask;
    public int mToPosition = 0;
    public int mCurrentSplitMode = 0;
    public int mRequestedCreateMode = -1;
    public final Rect mDropBounds = new Rect();
    public boolean mNeedToReparentCell = false;
    public NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0 mRunAfterTransitionStarted = null;
    public final SurfaceControl.Transaction mTransaction = new SurfaceControl.Transaction();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FreeformToFreeformChanger extends NaturalSwitchingChanger {
        @Override // com.android.wm.shell.naturalswitching.NaturalSwitchingChanger
        public final void changeLayout() {
            if (CoreRune.MW_NATURAL_SWITCHING_SA_LOGGING) {
                CoreSaLogger.logForAdvanced("1041", "Layout changed");
            }
            Rect bounds = this.mTask.configuration.windowConfiguration.getBounds();
            Rect rect = this.mDropBounds;
            bounds.offsetTo(((rect.width() - bounds.width()) / 2) + rect.left, rect.top);
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            windowContainerTransaction.setBounds(this.mTask.token, bounds);
            this.mSyncQueue.queue(windowContainerTransaction);
            this.mSyncQueue.runInSync(new NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0(this, 1));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FreeformToSplitChanger extends NaturalSwitchingChanger {
        @Override // com.android.wm.shell.naturalswitching.NaturalSwitchingChanger
        public final void changeLayout() {
            int i;
            if (CoreRune.MW_NATURAL_SWITCHING_SA_LOGGING) {
                CoreSaLogger.logForAdvanced("1041", "Freeform -> Split");
                CoreSaLogger.logForAdvanced("1000", "From Popup view_HandleGesture");
                if (CoreRune.MW_NATURAL_SWITCHING_MULTI_SPLIT && this.mIsMainDisplay && ((i = this.mCurrentSplitMode) == 2 || i == 1)) {
                    CoreSaLogger.logForAdvanced("1021", "From Popup view_HandleGesture");
                }
            }
            this.mSplitController.onFreeformToSplitRequested(this.mTask, false, this.mToPosition, this.mNeedToReparentCell, this.mDropBounds, true);
            this.mRunAfterTransitionStarted = new NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0(this, 1);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FullToFreeformChanger extends NaturalSwitchingChanger {
        @Override // com.android.wm.shell.naturalswitching.NaturalSwitchingChanger
        public final void changeLayout() {
            if (CoreRune.MW_NATURAL_SWITCHING_SA_LOGGING) {
                CoreSaLogger.logForAdvanced("1041", "Fullscreen -> Freeform");
            }
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            windowContainerTransaction.setWindowingMode(this.mTask.token, 5);
            windowContainerTransaction.setChangeTransitMode(this.mTask.token, 4, "ns_full_to_freeform");
            WindowContainerToken windowContainerToken = this.mTask.token;
            Rect rect = this.mDropBounds;
            windowContainerTransaction.setBounds(windowContainerToken, rect);
            windowContainerTransaction.setChangeTransitStartBounds(this.mTask.token, rect);
            this.mSyncQueue.queue(windowContainerTransaction);
            this.mSyncQueue.runInSync(new NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0(this, 2));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PipToPipChanger extends NaturalSwitchingChanger {
        @Override // com.android.wm.shell.naturalswitching.NaturalSwitchingChanger
        public final void changeLayout() {
            if (CoreRune.MW_NATURAL_SWITCHING_SA_LOGGING) {
                CoreSaLogger.logForAdvanced("1041", "Layout changed");
            }
            Rect bounds = this.mTask.configuration.windowConfiguration.getBounds();
            Rect rect = this.mDropBounds;
            bounds.offsetTo(((rect.width() - bounds.width()) / 2) + rect.left, rect.top);
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            windowContainerTransaction.setBounds(this.mTask.token, bounds);
            this.mSyncQueue.queue(windowContainerTransaction);
            this.mSyncQueue.runInSync(new NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0(this, 0));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PipToSplitChanger extends NaturalSwitchingChanger {
        @Override // com.android.wm.shell.naturalswitching.NaturalSwitchingChanger
        public final void changeLayout() {
            boolean z = CoreRune.MW_NATURAL_SWITCHING_SA_LOGGING;
            this.mSplitController.onPipToSplitRequested(this.mTask, false, this.mToPosition, this.mNeedToReparentCell, this.mDropBounds, true);
            this.mRunAfterTransitionStarted = new NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0(this, 0);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SplitToFreeformChanger extends NaturalSwitchingChanger {
        @Override // com.android.wm.shell.naturalswitching.NaturalSwitchingChanger
        public final void changeLayout() {
            if (CoreRune.MW_NATURAL_SWITCHING_SA_LOGGING) {
                CoreSaLogger.logForAdvanced("1041", "Split -> Freeform");
                CoreSaLogger.logForAdvanced("2004", "From Split view_HandleGesture");
            }
            this.mSplitController.moveSplitToFreeform(this.mTask.token, this.mDropBounds, true);
            this.mRunAfterTransitionStarted = new NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0(this, 2);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SplitToSplitChanger extends NaturalSwitchingChanger {
        public static boolean isOneDirectionPosition(int i) {
            if (i != 8 && i != 16 && i != 32 && i != 64) {
                return false;
            }
            return true;
        }

        public final void applyTransactionWithAnimation(WindowContainerTransaction windowContainerTransaction) {
            this.mSyncQueue.queue(windowContainerTransaction);
            this.mSyncQueue.runInSync(new NaturalSwitchingChanger$PipToPipChanger$$ExternalSyntheticLambda0(this, 3));
        }

        /* JADX WARN: Code restructure failed: missing block: B:206:0x02c6, code lost:
        
            r4 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00b1, code lost:
        
            if (r11 != 5) goto L45;
         */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x016a  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0176  */
        @Override // com.android.wm.shell.naturalswitching.NaturalSwitchingChanger
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void changeLayout() {
            /*
                Method dump skipped, instructions count: 933
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.naturalswitching.NaturalSwitchingChanger.SplitToSplitChanger.changeLayout():void");
        }
    }

    public abstract void changeLayout();

    public final String toString() {
        return getClass().getSimpleName();
    }
}
