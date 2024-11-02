package com.android.systemui.qs.footer.ui.viewmodel;

import androidx.lifecycle.DefaultLifecycleObserver;
import com.android.systemui.globalactions.GlobalActionsDialogLite;
import com.android.systemui.statusbar.phone.ConfigurationControllerImpl;
import com.android.systemui.telephony.TelephonyListenerManager;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FooterActionsViewModel$Factory$create$1 implements DefaultLifecycleObserver {
    public final /* synthetic */ GlobalActionsDialogLite $globalActionsDialogLite;

    public FooterActionsViewModel$Factory$create$1(GlobalActionsDialogLite globalActionsDialogLite) {
        this.$globalActionsDialogLite = globalActionsDialogLite;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public final void onDestroy$1() {
        GlobalActionsDialogLite globalActionsDialogLite = this.$globalActionsDialogLite;
        globalActionsDialogLite.mBroadcastDispatcher.unregisterReceiver(globalActionsDialogLite.mBroadcastReceiver);
        TelephonyListenerManager telephonyListenerManager = globalActionsDialogLite.mTelephonyListenerManager;
        ((ArrayList) telephonyListenerManager.mTelephonyCallback.mServiceStateListeners).remove(globalActionsDialogLite.mPhoneStateListener);
        telephonyListenerManager.updateListening();
        globalActionsDialogLite.mGlobalSettings.unregisterContentObserver(globalActionsDialogLite.mAirplaneModeObserver);
        ((ConfigurationControllerImpl) globalActionsDialogLite.mConfigurationController).removeCallback(globalActionsDialogLite);
    }
}
