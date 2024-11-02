package com.android.systemui.subscreen;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.android.systemui.Dependency;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.WakefulnessLifecycle;
import com.android.systemui.log.SecPanelLogger;
import com.android.systemui.log.SecPanelLoggerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CoverPanelIntentReceiver extends BroadcastReceiver implements WakefulnessLifecycle.Observer {
    public final Runnable mCollapsePanel;
    public final IntentFilter mFilter;
    public final Runnable mOnPocketModeChanged;
    public final SecPanelLogger mPanelLogger;
    public boolean mIsInPocket = false;
    public boolean mClockFaceShowing = false;
    public final BroadcastDispatcher mBroadcastDispatcher = (BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class);
    public final WakefulnessLifecycle mWakefulnessLifecycle = (WakefulnessLifecycle) Dependency.get(WakefulnessLifecycle.class);

    public CoverPanelIntentReceiver(Runnable runnable, Runnable runnable2, SecPanelLogger secPanelLogger) {
        this.mOnPocketModeChanged = runnable;
        this.mCollapsePanel = runnable2;
        this.mPanelLogger = secPanelLogger;
        IntentFilter intentFilter = new IntentFilter();
        this.mFilter = intentFilter;
        intentFilter.addAction("com.samsung.intent.action.KSO_SHOW_POPUP_SUB");
        intentFilter.addAction("com.samsung.intent.action.KSO_CLOSE_POPUP_SUB");
        intentFilter.addAction("com.samsung.android.app.aodservice.ACTION_COVER_HOME_QUICK_PANEL_TOUCH_AREA_CHANGED");
        intentFilter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        action.getClass();
        boolean z = true;
        char c = 65535;
        switch (action.hashCode()) {
            case -403228793:
                if (action.equals("android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
                    c = 0;
                    break;
                }
                break;
            case -306325952:
                if (action.equals("com.samsung.android.app.aodservice.ACTION_COVER_HOME_QUICK_PANEL_TOUCH_AREA_CHANGED")) {
                    c = 1;
                    break;
                }
                break;
            case -239023190:
                if (action.equals("com.samsung.intent.action.KSO_SHOW_POPUP_SUB")) {
                    c = 2;
                    break;
                }
                break;
            case 1845785511:
                if (action.equals("com.samsung.intent.action.KSO_CLOSE_POPUP_SUB")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                ((SecPanelLoggerImpl) this.mPanelLogger).addCoverPanelStateLog("ACTION_CLOSE_SYSTEM_DIALOGS");
                this.mCollapsePanel.run();
                return;
            case 1:
                this.mClockFaceShowing = intent.getBooleanExtra("isSmallQuickPanelTouchArea", false);
                ((SecPanelLoggerImpl) this.mPanelLogger).addCoverPanelStateLog("CLOCK_FACE: " + this.mClockFaceShowing);
                return;
            case 2:
            case 3:
                boolean z2 = this.mIsInPocket;
                String action2 = intent.getAction();
                action2.getClass();
                if (!action2.equals("com.samsung.intent.action.KSO_SHOW_POPUP_SUB")) {
                    if (!action2.equals("com.samsung.intent.action.KSO_CLOSE_POPUP_SUB")) {
                        z = z2;
                    } else {
                        ((SecPanelLoggerImpl) this.mPanelLogger).addCoverPanelStateLog("NO_POCKET_ACTION");
                        z = false;
                    }
                } else {
                    ((SecPanelLoggerImpl) this.mPanelLogger).addCoverPanelStateLog("IN_POCKET_ACTION");
                }
                if (this.mIsInPocket != z) {
                    this.mIsInPocket = z;
                    this.mOnPocketModeChanged.run();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.android.systemui.keyguard.WakefulnessLifecycle.Observer
    public final void onStartedGoingToSleep() {
        if (this.mIsInPocket) {
            this.mIsInPocket = false;
            this.mOnPocketModeChanged.run();
        }
    }
}
