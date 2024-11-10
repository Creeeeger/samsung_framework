package com.android.server.wm;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.Slog;
import android.window.DisplayAreaInfo;
import android.window.TransitionRequestInfo;
import android.window.WindowContainerTransaction;
import com.android.server.wm.DeviceStateController;
import com.android.server.wm.RemoteDisplayChangeController;

/* loaded from: classes3.dex */
public class PhysicalDisplaySwitchTransitionLauncher {
    public final ActivityTaskManagerService mAtmService;
    public final Context mContext;
    public DeviceStateController.DeviceState mDeviceState;
    public final DisplayContent mDisplayContent;
    public boolean mFoldChanging;
    public boolean mShouldRequestTransitionOnDisplaySwitch;
    public Transition mTransition;
    public final TransitionController mTransitionController;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public PhysicalDisplaySwitchTransitionLauncher(com.android.server.wm.DisplayContent r3, com.android.server.wm.TransitionController r4) {
        /*
            r2 = this;
            com.android.server.wm.WindowManagerService r0 = r3.mWmService
            com.android.server.wm.ActivityTaskManagerService r1 = r0.mAtmService
            android.content.Context r0 = r0.mContext
            r2.<init>(r3, r1, r0, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.PhysicalDisplaySwitchTransitionLauncher.<init>(com.android.server.wm.DisplayContent, com.android.server.wm.TransitionController):void");
    }

    public PhysicalDisplaySwitchTransitionLauncher(DisplayContent displayContent, ActivityTaskManagerService activityTaskManagerService, Context context, TransitionController transitionController) {
        this.mShouldRequestTransitionOnDisplaySwitch = false;
        this.mDeviceState = DeviceStateController.DeviceState.UNKNOWN;
        this.mDisplayContent = displayContent;
        this.mAtmService = activityTaskManagerService;
        this.mContext = context;
        this.mTransitionController = transitionController;
    }

    public void foldStateChanged(DeviceStateController.DeviceState deviceState) {
        if (this.mDeviceState == DeviceStateController.DeviceState.FOLDED && (deviceState == DeviceStateController.DeviceState.HALF_FOLDED || deviceState == DeviceStateController.DeviceState.OPEN)) {
            this.mShouldRequestTransitionOnDisplaySwitch = true;
        } else if (deviceState != DeviceStateController.DeviceState.HALF_FOLDED && deviceState != DeviceStateController.DeviceState.OPEN) {
            this.mShouldRequestTransitionOnDisplaySwitch = false;
        }
        this.mDeviceState = deviceState;
    }

    public void requestDisplaySwitchTransitionIfNeeded(int i, int i2, int i3, int i4, int i5) {
        if (this.mShouldRequestTransitionOnDisplaySwitch && this.mTransitionController.isShellTransitionsEnabled() && this.mDisplayContent.getLastHasContent()) {
            if (this.mContext.getResources().getBoolean(17891885) && ValueAnimator.areAnimatorsEnabled()) {
                TransitionRequestInfo.DisplayChange displayChange = new TransitionRequestInfo.DisplayChange(i);
                displayChange.setStartAbsBounds(new Rect(0, 0, i2, i3));
                displayChange.setEndAbsBounds(new Rect(0, 0, i4, i5));
                displayChange.setPhysicalDisplayChanged(true);
                TransitionController transitionController = this.mTransitionController;
                DisplayContent displayContent = this.mDisplayContent;
                Transition requestTransitionIfNeeded = transitionController.requestTransitionIfNeeded(6, 0, displayContent, displayContent, null, displayChange);
                if (requestTransitionIfNeeded != null) {
                    this.mDisplayContent.mAtmService.startLaunchPowerMode(2);
                    this.mTransition = requestTransitionIfNeeded;
                }
                this.mShouldRequestTransitionOnDisplaySwitch = false;
            }
        }
    }

    public void onDisplayUpdated(int i, int i2, DisplayAreaInfo displayAreaInfo) {
        if (this.mTransition == null || this.mDisplayContent.mRemoteDisplayChangeController.performRemoteDisplayChange(i, i2, displayAreaInfo, new RemoteDisplayChangeController.ContinueRemoteDisplayChangeCallback() { // from class: com.android.server.wm.PhysicalDisplaySwitchTransitionLauncher$$ExternalSyntheticLambda0
            @Override // com.android.server.wm.RemoteDisplayChangeController.ContinueRemoteDisplayChangeCallback
            public final void onContinueRemoteDisplayChange(WindowContainerTransaction windowContainerTransaction) {
                PhysicalDisplaySwitchTransitionLauncher.this.continueDisplayUpdate(windowContainerTransaction);
            }
        })) {
            return;
        }
        markTransitionAsReady();
    }

    public final void continueDisplayUpdate(WindowContainerTransaction windowContainerTransaction) {
        if (this.mTransition == null) {
            return;
        }
        if (windowContainerTransaction != null) {
            this.mAtmService.mWindowOrganizerController.applyTransaction(windowContainerTransaction);
        }
        markTransitionAsReady();
    }

    public final void markTransitionAsReady() {
        Transition transition = this.mTransition;
        if (transition == null) {
            return;
        }
        transition.setAllReady();
        this.mTransition = null;
    }

    public void unsetFoldChanging(String str) {
        if (this.mFoldChanging) {
            Slog.d(StartingSurfaceController.TAG, "unsetFoldChanging, reason=" + str + ", d=" + this.mDisplayContent);
            this.mFoldChanging = false;
        }
    }
}
