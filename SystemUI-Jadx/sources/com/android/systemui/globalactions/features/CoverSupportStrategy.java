package com.android.systemui.globalactions.features;

import android.R;
import android.view.Window;
import android.view.WindowInsets;
import com.android.systemui.basic.util.CoverUtilWrapper;
import com.android.systemui.basic.util.ModuleType;
import com.android.systemui.globalactions.util.SystemUIConditions;
import com.android.systemui.util.CoverUtil;
import com.samsung.android.globalactions.presentation.SamsungGlobalActions;
import com.samsung.android.globalactions.presentation.strategies.DefaultActionsCreationStrategy;
import com.samsung.android.globalactions.presentation.strategies.DisposingStrategy;
import com.samsung.android.globalactions.presentation.strategies.InitializationStrategy;
import com.samsung.android.globalactions.presentation.strategies.SecureConfirmStrategy;
import com.samsung.android.globalactions.presentation.strategies.WindowDecorationStrategy;
import com.samsung.android.globalactions.presentation.strategies.WindowManagerFunctionStrategy;
import com.samsung.android.globalactions.presentation.viewmodel.ActionViewModel;
import com.samsung.android.globalactions.util.ConditionChecker;
import com.samsung.android.globalactions.util.KeyGuardManagerWrapper;
import com.samsung.android.globalactions.util.LogWrapper;
import com.samsung.android.globalactions.util.ResourcesWrapper;
import com.samsung.android.globalactions.util.SystemConditions;
import com.samsung.android.globalactions.util.ToastController;
import java.util.HashMap;
import java.util.function.BiConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverSupportStrategy implements DefaultActionsCreationStrategy, InitializationStrategy, DisposingStrategy, WindowManagerFunctionStrategy, SecureConfirmStrategy, WindowDecorationStrategy {
    public final ConditionChecker mConditionChecker;
    public final CoverUtilWrapper mCoverUtilWrapper;
    public final SamsungGlobalActions mGlobalActions;
    public final KeyGuardManagerWrapper mKeyGuardManagerWrapper;
    public final LogWrapper mLogWrapper;
    public final ResourcesWrapper mResourceWrapper;
    public final ToastController mToastController;

    public CoverSupportStrategy(ConditionChecker conditionChecker, CoverUtilWrapper coverUtilWrapper, SamsungGlobalActions samsungGlobalActions, LogWrapper logWrapper, KeyGuardManagerWrapper keyGuardManagerWrapper, ToastController toastController, ResourcesWrapper resourcesWrapper) {
        this.mConditionChecker = conditionChecker;
        this.mCoverUtilWrapper = coverUtilWrapper;
        this.mGlobalActions = samsungGlobalActions;
        this.mLogWrapper = logWrapper;
        this.mKeyGuardManagerWrapper = keyGuardManagerWrapper;
        this.mToastController = toastController;
        this.mResourceWrapper = resourcesWrapper;
    }

    public final boolean doActionBeforeSecureConfirm(final ActionViewModel actionViewModel, SamsungGlobalActions samsungGlobalActions) {
        final String str;
        int i;
        int i2;
        if (actionViewModel.getActionInfo().getName() == "power") {
            str = "shutdown";
        } else {
            str = "reboot";
        }
        String name = actionViewModel.getActionInfo().getName();
        name.getClass();
        if (name.equals("power") || name.equals("restart")) {
            ConditionChecker conditionChecker = this.mConditionChecker;
            SystemUIConditions systemUIConditions = SystemUIConditions.IS_CLEAR_SIDE_VIEW_COVER_CLOSED;
            if (conditionChecker.isEnabled(systemUIConditions) || this.mConditionChecker.isEnabled(SystemUIConditions.IS_MINI_SVIEW_COVER_CLOSED)) {
                ToastController toastController = this.mToastController;
                ResourcesWrapper resourcesWrapper = this.mResourceWrapper;
                if (actionViewModel.getActionInfo().getName() == "power") {
                    i = R.string.permdesc_sendSms;
                } else {
                    i = R.string.permdesc_setTimeZone;
                }
                toastController.showToast(resourcesWrapper.getString(i), 1);
            }
            if (this.mConditionChecker.isEnabled(systemUIConditions)) {
                ToastController toastController2 = this.mToastController;
                ResourcesWrapper resourcesWrapper2 = this.mResourceWrapper;
                if (actionViewModel.getActionInfo().getName() == "power") {
                    i2 = R.string.permdesc_recordAudio;
                } else {
                    i2 = R.string.permdesc_register_call_provider;
                }
                toastController2.showToast(resourcesWrapper2.getString(i2), 1);
            }
            if (this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_COVER_CLOSED) || this.mConditionChecker.isEnabled(systemUIConditions) || this.mConditionChecker.isEnabled(SystemUIConditions.IS_MINI_SVIEW_COVER_CLOSED)) {
                this.mCoverUtilWrapper.mActionBeforeSecureConfirm = new Runnable() { // from class: com.android.systemui.globalactions.features.CoverSupportStrategy$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        CoverSupportStrategy coverSupportStrategy = CoverSupportStrategy.this;
                        ActionViewModel actionViewModel2 = actionViewModel;
                        String str2 = str;
                        coverSupportStrategy.mKeyGuardManagerWrapper.setRegisterState(false);
                        coverSupportStrategy.mGlobalActions.registerSecureConfirmAction(actionViewModel2);
                        if (coverSupportStrategy.mConditionChecker.isEnabled(SystemConditions.IS_SECURE_KEYGUARD)) {
                            coverSupportStrategy.mKeyGuardManagerWrapper.setPendingIntentAfterUnlock(str2);
                        }
                    }
                };
                this.mKeyGuardManagerWrapper.setRegisterState(true);
            }
        }
        return true;
    }

    public final boolean onCreateBugReportAction() {
        if (!this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_COVER_CLOSED) && !this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_SIDE_VIEW_COVER_CLOSED) && !this.mConditionChecker.isEnabled(SystemUIConditions.IS_MINI_SVIEW_COVER_CLOSED)) {
            return true;
        }
        return false;
    }

    public final boolean onCreateEmergencyAction() {
        if (!this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_COVER_CLOSED) && !this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_SIDE_VIEW_COVER_CLOSED) && !this.mConditionChecker.isEnabled(SystemUIConditions.IS_MINI_SVIEW_COVER_CLOSED)) {
            return true;
        }
        return false;
    }

    public final boolean onCreateEmergencyCallAction() {
        if (!this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_COVER_CLOSED) && !this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_SIDE_VIEW_COVER_CLOSED) && !this.mConditionChecker.isEnabled(SystemUIConditions.IS_MINI_SVIEW_COVER_CLOSED)) {
            return true;
        }
        return false;
    }

    public final boolean onCreateMedicalInfoAction() {
        if (!this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_COVER_CLOSED) && !this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_SIDE_VIEW_COVER_CLOSED) && !this.mConditionChecker.isEnabled(SystemUIConditions.IS_MINI_SVIEW_COVER_CLOSED)) {
            return true;
        }
        return false;
    }

    public final void onDecorateWindow(Window window) {
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_CLEAR_SIDE_VIEW_COVER_CLOSED)) {
            window.getDecorView().getWindowInsetsController().hide(WindowInsets.Type.navigationBars());
        }
    }

    public final void onDispose() {
        CoverUtilWrapper coverUtilWrapper = this.mCoverUtilWrapper;
        ((HashMap) coverUtilWrapper.mListeners).remove(ModuleType.GLOBALACTIONS);
    }

    public final void onInitialize(boolean z) {
        CoverUtilWrapper coverUtilWrapper = this.mCoverUtilWrapper;
        CoverUtil coverUtil = coverUtilWrapper.mCoverUtil;
        if (coverUtil != null) {
            coverUtilWrapper.mCoverState = coverUtil.mCoverState;
        }
        ((HashMap) coverUtilWrapper.mListeners).put(ModuleType.GLOBALACTIONS, new BiConsumer() { // from class: com.android.systemui.globalactions.features.CoverSupportStrategy$$ExternalSyntheticLambda1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                CoverSupportStrategy.this.mGlobalActions.dismissDialog(false);
            }
        });
        this.mKeyGuardManagerWrapper.setRegisterState(false);
    }

    public final void onReboot() {
        if (this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_COVER_CLOSED)) {
            this.mLogWrapper.v("CoverSupportStrategy", "onReboot");
        }
    }

    public final void onShutdown() {
        if (this.mConditionChecker.isEnabled(SystemUIConditions.IS_CLEAR_COVER_CLOSED)) {
            this.mLogWrapper.v("CoverSupportStrategy", "onShutdown");
        }
    }
}
