package com.android.systemui.qs.tileimpl;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.ArraySet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.animation.GhostedViewLaunchAnimatorController;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.plugins.qs.DetailAdapter;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.qs.SQSTile;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.qs.QSHost;
import com.android.systemui.qs.QsEventLogger;
import com.android.systemui.qs.QsEventLoggerImpl;
import com.android.systemui.qs.logging.QSLogger;
import com.android.systemui.qs.tileimpl.QSTileImpl;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class SQSTileImpl extends QSTileImpl implements SQSTile {
    public static final Object ARG_SHOW_TRANSIENT_ENABLING = new Object();
    public final SHandler mHandler;
    public final LifecycleRegistry mLifecycle;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SHandler extends QSTileImpl.H {
        protected static final int STALE = 11;

        public SHandler(Looper looper) {
            super(looper);
        }

        @Override // com.android.systemui.qs.tileimpl.QSTileImpl.H, android.os.Handler
        public final void handleMessage(Message message) {
            try {
                int i = message.what;
                boolean z = true;
                int i2 = 0;
                if (i == 13) {
                    SQSTileImpl sQSTileImpl = SQSTileImpl.this;
                    if (message.arg1 == 0) {
                        z = false;
                    }
                    Object obj = SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING;
                    while (true) {
                        ArrayList arrayList = sQSTileImpl.mCallbacks;
                        if (i2 < arrayList.size()) {
                            ((SQSTile.SCallback) arrayList.get(i2)).onScanStateChanged(z);
                            i2++;
                        } else {
                            return;
                        }
                    }
                } else if (i == 99) {
                    Log.d(SQSTileImpl.this.TAG, "handleShowDetail from Handler is called:++++ ");
                    SQSTileImpl sQSTileImpl2 = SQSTileImpl.this;
                    if (message.arg1 == 0) {
                        z = false;
                    }
                    Object obj2 = SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING;
                    String str = sQSTileImpl2.TAG;
                    Log.d(str, "handleShowDetail is called:++++ ");
                    while (true) {
                        ArrayList arrayList2 = sQSTileImpl2.mCallbacks;
                        if (i2 < arrayList2.size()) {
                            Log.d(str, "onShowDetail(show) is called:++++ ");
                            ((SQSTile.SCallback) arrayList2.get(i2)).onShowDetail(z);
                            i2++;
                        } else {
                            return;
                        }
                    }
                } else if (i == 103) {
                    SQSTileImpl sQSTileImpl3 = SQSTileImpl.this;
                    int i3 = message.arg1;
                    int i4 = message.arg2;
                    Object obj3 = SQSTileImpl.ARG_SHOW_TRANSIENT_ENABLING;
                    while (true) {
                        ArrayList arrayList3 = sQSTileImpl3.mCallbacks;
                        if (i2 < arrayList3.size()) {
                            ((SQSTile.SCallback) arrayList3.get(i2)).onScrollToDetail(i3, i4);
                            i2++;
                        } else {
                            return;
                        }
                    }
                } else if (i == 101) {
                    SQSTileImpl.this.mHandler.removeMessages(101);
                    SQSTileImpl sQSTileImpl4 = SQSTileImpl.this;
                    while (true) {
                        ArrayList arrayList4 = sQSTileImpl4.mCallbacks;
                        if (i2 < arrayList4.size()) {
                            ((SQSTile.SCallback) arrayList4.get(i2)).onUpdateDetail();
                            i2++;
                        } else {
                            return;
                        }
                    }
                } else {
                    if (i == 100) {
                        SQSTileImpl sQSTileImpl5 = SQSTileImpl.this;
                        if (message.arg1 == 0) {
                            z = false;
                        }
                        SQSTileImpl.m1337$$Nest$mhandleToggleStateChanged(sQSTileImpl5, z);
                        return;
                    }
                    super.handleMessage(message);
                }
            } catch (Throwable th) {
                Log.w(SQSTileImpl.this.TAG, KeyAttributes$$ExternalSyntheticOutline0.m("Error in ", null), th);
            }
        }
    }

    /* renamed from: -$$Nest$mhandleToggleStateChanged, reason: not valid java name */
    public static void m1337$$Nest$mhandleToggleStateChanged(SQSTileImpl sQSTileImpl, boolean z) {
        int i = 0;
        while (true) {
            ArrayList arrayList = sQSTileImpl.mCallbacks;
            if (i < arrayList.size()) {
                try {
                    ((SQSTile.SCallback) arrayList.get(i)).onToggleStateChanged(z);
                } catch (ClassCastException unused) {
                    Log.d(sQSTileImpl.TAG, " ClassCastException occurs for : " + arrayList.get(i) + " state: " + z);
                }
                i++;
            } else {
                return;
            }
        }
    }

    public SQSTileImpl(QSHost qSHost, QsEventLogger qsEventLogger, Looper looper, Handler handler, FalsingManager falsingManager, MetricsLogger metricsLogger, StatusBarStateController statusBarStateController, ActivityStarter activityStarter, QSLogger qSLogger) {
        super(qSHost, qsEventLogger, looper, handler, falsingManager, metricsLogger, statusBarStateController, activityStarter, qSLogger);
        new ArraySet();
        this.mLifecycle = new LifecycleRegistry(this);
        this.mHandler = new SHandler(looper);
        ((QsEventLoggerImpl) qsEventLogger).sequence.newInstanceId();
        this.mUiHandler.post(new Runnable() { // from class: com.android.systemui.qs.tileimpl.SQSTileImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SQSTileImpl.this.mLifecycle.setCurrentState(Lifecycle.State.CREATED);
            }
        });
    }

    public String composeChangeAnnouncement() {
        return composeChangeAnnouncement(this.mState);
    }

    public final void fireScanStateChanged(boolean z) {
        this.mHandler.obtainMessage(13, z ? 1 : 0, 0).sendToTarget();
    }

    public final void fireToggleStateChanged(boolean z) {
        this.mHandler.obtainMessage(100, z ? 1 : 0, 0).sendToTarget();
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public DetailAdapter getDetailAdapter() {
        return null;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public void handleLongClick(View view) {
        GhostedViewLaunchAnimatorController ghostedViewLaunchAnimatorController;
        if (QpRune.QUICK_PANEL_SUBSCREEN && !((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened) {
            return;
        }
        Intent longClickIntent = getLongClickIntent();
        if (longClickIntent == null) {
            Log.d(this.TAG, "handleLongClick() : getLongClickIntent is null.");
            handleSecondaryClick(view);
        } else {
            if (view != null) {
                ghostedViewLaunchAnimatorController = ActivityLaunchAnimator.Controller.fromView(view, 32);
            } else {
                ghostedViewLaunchAnimatorController = null;
            }
            this.mActivityStarter.postStartActivityDismissingKeyguard(longClickIntent, 0, ghostedViewLaunchAnimatorController);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public void handleSecondaryClick(View view) {
        DetailAdapter detailAdapter = getDetailAdapter();
        String str = this.TAG;
        if (detailAdapter != null) {
            Log.d(str, "handleSecondaryClick showDetail(true) is called:++++");
            showDetail(true);
        } else {
            Log.d(str, "handleSecondaryClick normal click is called:++++ ");
            handleClick(view);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public void handleSetListening(boolean z) {
        String str = this.mTileSpec;
        if (str != null) {
            this.mQSLogger.logTileChangeListening(str, z);
        }
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void handleStateChanged() {
        String composeChangeAnnouncement;
        boolean shouldAnnouncementBeDelayed = shouldAnnouncementBeDelayed();
        ArrayList arrayList = this.mCallbacks;
        boolean z = false;
        if (arrayList.size() != 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                ((QSTile.Callback) arrayList.get(i)).onStateChanged(this.mState);
            }
            if (this.mAnnounceNextStateChange && !shouldAnnouncementBeDelayed && (composeChangeAnnouncement = composeChangeAnnouncement()) != null) {
                ((SQSTile.SCallback) arrayList.get(0)).onAnnouncementRequested(composeChangeAnnouncement);
            }
        }
        if (this.mAnnounceNextStateChange && shouldAnnouncementBeDelayed) {
            z = true;
        }
        this.mAnnounceNextStateChange = z;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void initialize() {
        this.mHandler.sendEmptyMessage(12);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl, com.android.systemui.plugins.qs.QSTile
    public boolean isAvailable() {
        return !this.mHost.shouldBeHiddenByKnox(this.mTileSpec);
    }

    public boolean shouldAnnouncementBeDelayed() {
        QSTile.State state = this.mState;
        if (state.isCustomTile && state.state == 0) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public final void showDetail(boolean z) {
        Log.d(this.TAG, "showDetail is called:++++");
        this.mHandler.obtainMessage(99, z ? 1 : 0, 0).sendToTarget();
    }

    public String composeChangeAnnouncement(QSTile.State state) {
        boolean z = state instanceof QSTile.BooleanState;
        Context context = this.mContext;
        if (z) {
            if (((QSTile.BooleanState) state).value) {
                return context.getString(R.string.accessibility_desc_on);
            }
            return context.getString(R.string.accessibility_desc_off);
        }
        if (state.state == 2) {
            return context.getString(R.string.accessibility_desc_on);
        }
        return context.getString(R.string.accessibility_desc_off);
    }

    @Override // com.android.systemui.qs.tileimpl.QSTileImpl
    public void handleInitialize() {
    }
}
