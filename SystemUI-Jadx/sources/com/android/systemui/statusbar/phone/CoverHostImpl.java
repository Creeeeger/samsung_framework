package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.graphics.Point;
import android.util.Log;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.ViewMediatorCallback;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.basic.util.CoverUtilWrapper;
import com.android.systemui.basic.util.CoverUtilWrapper$$ExternalSyntheticLambda0;
import com.android.systemui.cover.CoverHost;
import com.android.systemui.doze.PluginAODManager;
import com.android.systemui.keyguard.KeyguardUnlockInfo;
import com.android.systemui.keyguard.KeyguardViewMediator;
import com.android.systemui.keyguard.KeyguardViewMediatorHelperImpl;
import com.android.systemui.pluginlock.PluginLockManager;
import com.android.systemui.pluginlock.PluginLockManagerImpl;
import com.android.systemui.shade.NotificationShadeWindowControllerImpl;
import com.android.systemui.shade.NotificationShadeWindowState;
import com.android.systemui.shade.SecNotificationShadeWindowControllerHelperImpl;
import com.android.systemui.shade.ShadeControllerImpl;
import com.android.systemui.statusbar.NotificationShadeWindowController;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.statusbar.window.StatusBarWindowController;
import com.android.systemui.util.CoverUtil;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.LogUtil;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.cover.CoverState;
import dagger.Lazy;
import java.util.HashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CoverHostImpl implements CoverHost {
    public final CentralSurfaces mCentralSurfaces;
    public final Context mContext;
    public CoverState mCoverState;
    public final CoverUtil mCoverUtil;
    public final IndicatorCoverManager mIndicatorCoverManager;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final KeyguardViewMediator mKeyguardViewMediator;
    public final ViewMediatorCallback mKeyguardViewMediatorCallback;
    public final NotificationShadeWindowController mNotificationShadeWindowController;
    public final Lazy mPluginAODManagerLazy;
    public final PluginLockManager mPluginLockManager;
    public final StatusBarKeyguardViewManager mStatusBarKeyguardViewManager;
    public final StatusBarWindowController mStatusBarWindowController;
    public final SysuiStatusBarStateController mSysuiStatusBarStateController;
    public boolean mIsCoverClosed = false;
    public boolean mIsCoverAppCovered = false;

    public CoverHostImpl(Context context, CentralSurfaces centralSurfaces, SysuiStatusBarStateController sysuiStatusBarStateController, KeyguardUpdateMonitor keyguardUpdateMonitor, KeyguardViewMediator keyguardViewMediator, ViewMediatorCallback viewMediatorCallback, NotificationShadeWindowController notificationShadeWindowController, IndicatorCoverManager indicatorCoverManager, StatusBarWindowController statusBarWindowController, StatusBarKeyguardViewManager statusBarKeyguardViewManager, KeyguardStateController keyguardStateController, CoverUtil coverUtil, Lazy lazy, PluginLockManager pluginLockManager) {
        this.mContext = context;
        this.mCentralSurfaces = centralSurfaces;
        this.mSysuiStatusBarStateController = sysuiStatusBarStateController;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mKeyguardViewMediator = keyguardViewMediator;
        this.mKeyguardViewMediatorCallback = viewMediatorCallback;
        this.mNotificationShadeWindowController = notificationShadeWindowController;
        this.mIndicatorCoverManager = indicatorCoverManager;
        this.mStatusBarWindowController = statusBarWindowController;
        this.mStatusBarKeyguardViewManager = statusBarKeyguardViewManager;
        this.mKeyguardStateController = keyguardStateController;
        this.mCoverUtil = coverUtil;
        this.mPluginAODManagerLazy = lazy;
        this.mPluginLockManager = pluginLockManager;
    }

    public final boolean isAutomaticUnlock(CoverState coverState) {
        if (coverState != null && coverState.getAttachState() && ((SettingsHelper) Dependency.get(SettingsHelper.class)).isAutomaticUnlockEnabled()) {
            KeyguardUpdateMonitor keyguardUpdateMonitor = this.mKeyguardUpdateMonitor;
            if (!keyguardUpdateMonitor.isSecure() || keyguardUpdateMonitor.getUserCanSkipBouncer(KeyguardUpdateMonitor.getCurrentUser())) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean isNeedScrimAnimation() {
        int i;
        if (LsRune.COVER_VIRTUAL_DISPLAY && this.mIsCoverClosed) {
            CoverState coverState = this.mCoverState;
            if (coverState == null) {
                i = 2;
            } else {
                i = coverState.type;
            }
            if (17 == i) {
                Log.d("CoverHostImpl", "isNeedScrimAnimation false");
                return false;
            }
        }
        return true;
    }

    public final void updateCoverState(final CoverState coverState) {
        boolean z;
        boolean z2;
        boolean z3;
        if (coverState == null) {
            return;
        }
        this.mCoverState = coverState;
        if (LsRune.COVER_SAFEMODE) {
            return;
        }
        boolean z4 = !coverState.switchState;
        int i = coverState.type;
        LogUtil.d("CoverHostImpl", "updateCoverState: attach = %s, cover closed = %s, type = %d", Boolean.valueOf(coverState.getAttachState()), Boolean.valueOf(z4), Integer.valueOf(i));
        this.mKeyguardUpdateMonitor.dispatchCoverState(this.mCoverState);
        boolean z5 = LsRune.WALLPAPER_VIRTUAL_DISPLAY;
        if (z5) {
            int type = this.mCoverState.getType();
            Point point = DeviceState.sDisplaySize;
            if (type == 17) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                PluginLockManager pluginLockManager = this.mPluginLockManager;
                CoverState coverState2 = this.mCoverState;
                PluginLockManagerImpl pluginLockManagerImpl = (PluginLockManagerImpl) pluginLockManager;
                pluginLockManagerImpl.getClass();
                Log.d("PluginLockManagerImpl", "onCoverStateChanged " + coverState2);
                if (z5) {
                    if (coverState2.getType() == 17) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2 && pluginLockManagerImpl.mCoverState != coverState2) {
                        pluginLockManagerImpl.mCoverState = coverState2;
                        if (coverState2.switchState) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        pluginLockManagerImpl.onFolderStateChanged(z3);
                    }
                }
            }
        }
        if (!coverState.getAttachState()) {
            this.mIsCoverClosed = false;
            this.mIsCoverAppCovered = false;
            this.mStatusBarKeyguardViewManager.onCoverSwitchStateChanged(false);
            if (DeviceState.isCoverUIType(i)) {
                updateCoverWindow();
            }
        } else if (this.mIsCoverClosed != z4) {
            this.mIsCoverClosed = z4;
            this.mStatusBarKeyguardViewManager.onCoverSwitchStateChanged(z4);
            if (DeviceState.isCoverUIType(i)) {
                if (DeviceState.isCoverUIType(this.mCoverState.type)) {
                    if (((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).isDesktopMode()) {
                        Log.d("CoverHostImpl", "Don't need to update doKeyguardLaterLocked by desktopMode");
                    } else if (!this.mStatusBarKeyguardViewManager.canHandleBackPressed() && !isAutomaticUnlock(this.mCoverState)) {
                        if (this.mCoverState.switchState) {
                            KeyguardViewMediatorHelperImpl keyguardViewMediatorHelperImpl = this.mKeyguardViewMediator.mHelper;
                            synchronized (keyguardViewMediatorHelperImpl.getLock()) {
                                keyguardViewMediatorHelperImpl.cancelLockWhenCoverIsOpened(true);
                                Unit unit = Unit.INSTANCE;
                            }
                        } else if (!this.mKeyguardUpdateMonitor.isKeyguardVisible()) {
                            this.mKeyguardViewMediator.mHelper.getViewMediatorProvider().doKeyguardLaterLocked.invoke();
                        }
                    }
                }
                updateCoverWindow();
            }
            if (!this.mIsCoverClosed) {
                if (((KeyguardStateControllerImpl) this.mKeyguardStateController).mShowing && isAutomaticUnlock(this.mCoverState)) {
                    KeyguardUnlockInfo.setUnlockTrigger(KeyguardUnlockInfo.UnlockTrigger.TRIGGER_COVER_OPENED);
                    KeyguardUnlockInfo.setAuthDetail(KeyguardSecurityModel.SecurityMode.None);
                    this.mKeyguardViewMediatorCallback.keyguardDone(KeyguardUpdateMonitor.getCurrentUser());
                    Log.d("CoverHostImpl", "updateCoverWindow: keyguard dismissed by cover");
                }
                if (((StatusBarStateControllerImpl) this.mSysuiStatusBarStateController).mState == 0) {
                    CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) this.mCentralSurfaces;
                    centralSurfacesImpl.mNotificationPanelViewController.instantCollapse();
                    ((ShadeControllerImpl) centralSurfacesImpl.mShadeController).runPostCollapseRunnables();
                }
            }
        }
        CoverUtil coverUtil = this.mCoverUtil;
        coverUtil.mCoverState = coverState;
        coverUtil.mCoverStateChangedListeners.forEach(new Consumer() { // from class: com.android.systemui.util.CoverUtil$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Runnable runnable;
                CoverState coverState3 = coverState;
                CoverUtilWrapper coverUtilWrapper = ((CoverUtilWrapper$$ExternalSyntheticLambda0) obj).f$0;
                HashMap hashMap = (HashMap) coverUtilWrapper.mListeners;
                if (!hashMap.isEmpty()) {
                    coverUtilWrapper.mCoverState = coverState3;
                    boolean z6 = true;
                    final boolean z7 = !coverState3.getSwitchState();
                    final int type2 = coverState3.getType();
                    if (z7 || (coverUtilWrapper.mCoverState.getType() != 15 && coverUtilWrapper.mCoverState.getType() != 16 && coverUtilWrapper.mCoverState.getType() != 8)) {
                        z6 = false;
                    }
                    if (z6 && (runnable = coverUtilWrapper.mActionBeforeSecureConfirm) != null) {
                        runnable.run();
                        coverUtilWrapper.mActionBeforeSecureConfirm = null;
                    }
                    hashMap.forEach(new BiConsumer() { // from class: com.android.systemui.basic.util.CoverUtilWrapper$$ExternalSyntheticLambda1
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj2, Object obj3) {
                            ((BiConsumer) obj3).accept(Boolean.valueOf(z7), Integer.valueOf(type2));
                        }
                    });
                }
            }
        });
    }

    public final void updateCoverWindow() {
        int i;
        boolean z;
        boolean z2;
        Log.d("CoverHostImpl", "updateCoverWindow: START");
        CoverState coverState = this.mCoverState;
        if (coverState == null) {
            i = 2;
        } else {
            i = coverState.type;
        }
        SecNotificationShadeWindowControllerHelperImpl secNotificationShadeWindowControllerHelperImpl = ((NotificationShadeWindowControllerImpl) this.mNotificationShadeWindowController).mHelper;
        boolean z3 = this.mIsCoverClosed;
        boolean z4 = this.mIsCoverAppCovered;
        NotificationShadeWindowState currentState = secNotificationShadeWindowControllerHelperImpl.getCurrentState();
        currentState.isCoverClosed = z3;
        currentState.coverAppShowing = z4;
        currentState.coverType = i;
        secNotificationShadeWindowControllerHelperImpl.apply(currentState);
        if (this.mIsCoverClosed && ((!this.mIsCoverAppCovered && DeviceState.isCoverUIType(i)) || i == 15 || i == 16)) {
            z = true;
        } else {
            z = false;
        }
        StatusBarWindowController statusBarWindowController = this.mStatusBarWindowController;
        StatusBarWindowController.State state = statusBarWindowController.mCurrentState;
        if (state.mChangeStatusBarHeight != z) {
            state.mChangeStatusBarHeight = z;
            statusBarWindowController.apply(state, false);
        }
        boolean z5 = this.mIsCoverClosed;
        IndicatorCoverManager indicatorCoverManager = this.mIndicatorCoverManager;
        Lazy lazy = this.mPluginAODManagerLazy;
        if (!z5 && !(z2 = this.mIsCoverAppCovered)) {
            indicatorCoverManager.updateCoverMargin(2, z2);
            ((PluginAODManager) lazy.get()).disableStatusBar(0);
        } else {
            ((PluginAODManager) lazy.get()).disableStatusBar(65536);
            CoverState coverState2 = this.mCoverState;
            if (coverState2 != null) {
                indicatorCoverManager.updateCoverMargin(coverState2.type, this.mIsCoverAppCovered);
            }
            this.mStatusBarKeyguardViewManager.onBackPressed();
        }
        Log.d("CoverHostImpl", "updateCoverWindow: END");
    }
}
