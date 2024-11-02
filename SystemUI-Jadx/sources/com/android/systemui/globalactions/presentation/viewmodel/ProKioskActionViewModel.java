package com.android.systemui.globalactions.presentation.viewmodel;

import android.R;
import android.app.AlertDialog;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.systemui.globalactions.util.ProKioskManagerWrapper;
import com.android.systemui.globalactions.util.SystemUIConditions;
import com.samsung.android.globalactions.presentation.SamsungGlobalActions;
import com.samsung.android.globalactions.presentation.viewmodel.ActionInfo;
import com.samsung.android.globalactions.presentation.viewmodel.ActionViewModel;
import com.samsung.android.globalactions.util.AlertDialogFactory;
import com.samsung.android.globalactions.util.ConditionChecker;
import com.samsung.android.globalactions.util.InputMethodManagerWrapper;
import com.samsung.android.globalactions.util.ResourcesWrapper;
import com.samsung.android.globalactions.util.SamsungGlobalActionsAnalytics;
import com.samsung.android.globalactions.util.SystemController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ProKioskActionViewModel implements ActionViewModel {
    public final AlertDialogFactory mAlertDialogFactory;
    public final ConditionChecker mConditionChecker;
    public final SamsungGlobalActions mGlobalActions;
    public ActionInfo mInfo;
    public final InputMethodManagerWrapper mInputMethodManagerWrapper;
    public final ProKioskManagerWrapper mProKioskManagerWrapper;
    public final ResourcesWrapper mResourcesWrapper;
    public final SamsungGlobalActionsAnalytics mSAnalytics;
    public final SystemController mSystemController;
    public ActionViewModel.ToggleState mToggleState;

    public ProKioskActionViewModel(SamsungGlobalActions samsungGlobalActions, AlertDialogFactory alertDialogFactory, SystemController systemController, ProKioskManagerWrapper proKioskManagerWrapper, InputMethodManagerWrapper inputMethodManagerWrapper, ConditionChecker conditionChecker, ResourcesWrapper resourcesWrapper, SamsungGlobalActionsAnalytics samsungGlobalActionsAnalytics) {
        this.mAlertDialogFactory = alertDialogFactory;
        this.mSystemController = systemController;
        this.mProKioskManagerWrapper = proKioskManagerWrapper;
        this.mInputMethodManagerWrapper = inputMethodManagerWrapper;
        this.mGlobalActions = samsungGlobalActions;
        this.mConditionChecker = conditionChecker;
        this.mResourcesWrapper = resourcesWrapper;
        this.mSAnalytics = samsungGlobalActionsAnalytics;
    }

    public final ActionInfo getActionInfo() {
        return this.mInfo;
    }

    public final void onPress() {
        if (this.mConditionChecker.isEnabled(SystemUIConditions.GET_PROKIOSK_STATE)) {
            this.mSAnalytics.sendEventLog("611", "6111", "Pro kiosk", 7L);
            final int i = 0;
            final int i2 = 1;
            AlertDialog proKioskModeDialog = this.mAlertDialogFactory.getProKioskModeDialog(new Runnable(this) { // from class: com.android.systemui.globalactions.presentation.viewmodel.ProKioskActionViewModel$$ExternalSyntheticLambda0
                public final /* synthetic */ ProKioskActionViewModel f$0;

                {
                    this.f$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i3;
                    switch (i) {
                        case 0:
                            ProKioskActionViewModel proKioskActionViewModel = this.f$0;
                            String proKioskPasswordText = proKioskActionViewModel.mAlertDialogFactory.getProKioskPasswordText();
                            ProKioskManagerWrapper proKioskManagerWrapper = proKioskActionViewModel.mProKioskManagerWrapper;
                            try {
                                i3 = proKioskManagerWrapper.mProKioskManager.stopProKioskMode(proKioskPasswordText);
                            } catch (Exception e) {
                                proKioskManagerWrapper.mLogWrapper.e("ProKioskManagerWrapper", "setProKioskState() : Exception = " + e);
                                i3 = -1;
                            }
                            proKioskActionViewModel.mInputMethodManagerWrapper.hideSoftInputFromWindow(proKioskActionViewModel.mAlertDialogFactory.getProKioskPasswordWindowToken());
                            if (i3 == 0) {
                                proKioskActionViewModel.mSystemController.goToHome();
                                return;
                            }
                            return;
                        default:
                            ProKioskActionViewModel proKioskActionViewModel2 = this.f$0;
                            proKioskActionViewModel2.mInputMethodManagerWrapper.hideSoftInputFromWindow(proKioskActionViewModel2.mAlertDialogFactory.getProKioskPasswordWindowToken());
                            return;
                    }
                }
            }, new Runnable(this) { // from class: com.android.systemui.globalactions.presentation.viewmodel.ProKioskActionViewModel$$ExternalSyntheticLambda0
                public final /* synthetic */ ProKioskActionViewModel f$0;

                {
                    this.f$0 = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i3;
                    switch (i2) {
                        case 0:
                            ProKioskActionViewModel proKioskActionViewModel = this.f$0;
                            String proKioskPasswordText = proKioskActionViewModel.mAlertDialogFactory.getProKioskPasswordText();
                            ProKioskManagerWrapper proKioskManagerWrapper = proKioskActionViewModel.mProKioskManagerWrapper;
                            try {
                                i3 = proKioskManagerWrapper.mProKioskManager.stopProKioskMode(proKioskPasswordText);
                            } catch (Exception e) {
                                proKioskManagerWrapper.mLogWrapper.e("ProKioskManagerWrapper", "setProKioskState() : Exception = " + e);
                                i3 = -1;
                            }
                            proKioskActionViewModel.mInputMethodManagerWrapper.hideSoftInputFromWindow(proKioskActionViewModel.mAlertDialogFactory.getProKioskPasswordWindowToken());
                            if (i3 == 0) {
                                proKioskActionViewModel.mSystemController.goToHome();
                                return;
                            }
                            return;
                        default:
                            ProKioskActionViewModel proKioskActionViewModel2 = this.f$0;
                            proKioskActionViewModel2.mInputMethodManagerWrapper.hideSoftInputFromWindow(proKioskActionViewModel2.mAlertDialogFactory.getProKioskPasswordWindowToken());
                            return;
                    }
                }
            });
            String exitUI = this.mProKioskManagerWrapper.mProKioskManager.getExitUI(221);
            String exitUI2 = this.mProKioskManagerWrapper.mProKioskManager.getExitUI(222);
            ActionViewModel.ToggleState toggleState = this.mToggleState;
            ActionViewModel.ToggleState toggleState2 = ActionViewModel.ToggleState.on;
            if (toggleState == toggleState2) {
                this.mToggleState = ActionViewModel.ToggleState.off;
            } else {
                this.mToggleState = toggleState2;
            }
            if (exitUI != null && exitUI2 != null && !exitUI.isEmpty() && !exitUI2.isEmpty()) {
                if (!exitUI2.startsWith(exitUI)) {
                    if (exitUI2.startsWith(".")) {
                        exitUI2 = exitUI.concat(exitUI2);
                    } else {
                        exitUI2 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(exitUI, ".", exitUI2);
                    }
                }
                if (!this.mSystemController.startProKioskExitUI(exitUI, exitUI2)) {
                    proKioskModeDialog.show();
                }
            } else {
                proKioskModeDialog.show();
            }
            this.mGlobalActions.dismissDialog(true);
        }
    }

    public final void setActionInfo(ActionInfo actionInfo) {
        this.mInfo = actionInfo;
    }

    public final void setState(ActionViewModel.ToggleState toggleState) {
        this.mToggleState = toggleState;
        String proKioskString = this.mProKioskManagerWrapper.mProKioskManager.getProKioskString(111);
        String proKioskString2 = this.mProKioskManagerWrapper.mProKioskManager.getProKioskString(112);
        String proKioskString3 = this.mProKioskManagerWrapper.mProKioskManager.getProKioskString(113);
        if (proKioskString != null) {
            this.mInfo.setLabel(proKioskString);
        } else {
            this.mInfo.setLabel(this.mResourcesWrapper.getString(R.string.permdesc_readPhoneNumbers));
        }
        if (this.mConditionChecker.isEnabled(SystemUIConditions.GET_PROKIOSK_STATE)) {
            if (proKioskString2 != null) {
                this.mInfo.setStateLabel(proKioskString2);
                return;
            } else {
                this.mInfo.setStateLabel(this.mResourcesWrapper.getString(R.string.permdesc_mediaLocation));
                return;
            }
        }
        if (proKioskString3 != null) {
            this.mInfo.setStateLabel(proKioskString3);
        } else {
            this.mInfo.setStateLabel(this.mResourcesWrapper.getString(R.string.permdesc_manageProfileAndDeviceOwners));
        }
    }

    public final boolean showBeforeProvisioning() {
        return true;
    }
}
