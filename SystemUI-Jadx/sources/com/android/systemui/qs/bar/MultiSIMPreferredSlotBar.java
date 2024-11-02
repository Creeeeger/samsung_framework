package com.android.systemui.qs.bar;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.keyguard.CustomizationProvider$$ExternalSyntheticOutline0;
import com.android.systemui.qs.bar.BarController;
import com.android.systemui.settings.multisim.MultiSIMController;
import com.android.systemui.settings.multisim.MultiSIMController$$ExternalSyntheticLambda1;
import com.android.systemui.settings.multisim.MultiSIMData;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.SimCardManagerServiceProvider;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.appconfig.ApplicationRestrictionsManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MultiSIMPreferredSlotBar extends BarItemImpl implements TunerService.Tunable, MultiSIMController.MultiSIMDataChangedCallback {
    public final BroadcastDispatcher mBroadcastDispatcher;
    public final Context mContext;
    public final MultiSIMController mController;
    public int mCurrentOrientation;
    public final MultiSIMData mData;
    public boolean mExpanded;
    public final AnonymousClass1 mIntentReceiver;
    public boolean mIsMultiSIMBarHideByKnoxRequest;
    public boolean mIsMultiSIMBarShowOnQSPanel;
    public AnonymousClass2 mSettingsListener;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.qs.bar.MultiSIMPreferredSlotBar$1, android.content.BroadcastReceiver] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.systemui.qs.bar.MultiSIMPreferredSlotBar$2] */
    public MultiSIMPreferredSlotBar(Context context, BroadcastDispatcher broadcastDispatcher) {
        super(context);
        this.mIsMultiSIMBarShowOnQSPanel = true;
        this.mIsMultiSIMBarHideByKnoxRequest = false;
        this.mExpanded = false;
        ?? r0 = new BroadcastReceiver() { // from class: com.android.systemui.qs.bar.MultiSIMPreferredSlotBar.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                Log.d("MultiSIMPreferredSlotBar", "onReceive() - action = " + action);
                if (EnterpriseDeviceManager.ACTION_KNOX_RESTRICTIONS_CHANGED.equals(action)) {
                    MultiSIMPreferredSlotBar multiSIMPreferredSlotBar = MultiSIMPreferredSlotBar.this;
                    multiSIMPreferredSlotBar.getClass();
                    boolean z = false;
                    Bundle applicationRestrictions = ApplicationRestrictionsManager.getInstance(context2).getApplicationRestrictions("com.samsung.android.app.telephonyui", 0);
                    if (applicationRestrictions != null && !applicationRestrictions.isEmpty()) {
                        if (applicationRestrictions.containsKey("telephonyui_simcard_manager_data_preference") && applicationRestrictions.getBundle("telephonyui_simcard_manager_data_preference") != null && (applicationRestrictions.getBundle("telephonyui_simcard_manager_data_preference").getBoolean("grayout") || applicationRestrictions.getBundle("telephonyui_simcard_manager_data_preference").getBoolean("hide"))) {
                            multiSIMPreferredSlotBar.mIsMultiSIMBarHideByKnoxRequest = true;
                        } else if (applicationRestrictions.containsKey("telephonyui_simcard_manager_call_preference") && applicationRestrictions.getBundle("telephonyui_simcard_manager_call_preference") != null && (applicationRestrictions.getBundle("telephonyui_simcard_manager_call_preference").getBoolean("grayout") || applicationRestrictions.getBundle("telephonyui_simcard_manager_call_preference").getBoolean("hide"))) {
                            multiSIMPreferredSlotBar.mIsMultiSIMBarHideByKnoxRequest = true;
                        } else {
                            if (applicationRestrictions.containsKey("telephonyui_simcard_manager_text_preference") && applicationRestrictions.getBundle("telephonyui_simcard_manager_text_preference") != null && (applicationRestrictions.getBundle("telephonyui_simcard_manager_text_preference").getBoolean("grayout") || applicationRestrictions.getBundle("telephonyui_simcard_manager_text_preference").getBoolean("hide"))) {
                                z = true;
                            }
                            multiSIMPreferredSlotBar.mIsMultiSIMBarHideByKnoxRequest = z;
                        }
                    } else {
                        multiSIMPreferredSlotBar.mIsMultiSIMBarHideByKnoxRequest = false;
                    }
                    ((TunerService) Dependency.get(TunerService.class)).setValue(multiSIMPreferredSlotBar.mIsMultiSIMBarHideByKnoxRequest ? 1 : 0, "multi_sim_bar_hide_by_knox_restrictions");
                    multiSIMPreferredSlotBar.updateBarVisibilities();
                }
            }
        };
        this.mIntentReceiver = r0;
        Uri[] uriArr = {Settings.System.getUriFor("emergency_mode")};
        this.mSettingsListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.qs.bar.MultiSIMPreferredSlotBar.2
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                if (uri != null && uri.equals(Settings.System.getUriFor("emergency_mode"))) {
                    Log.d("MultiSIMPreferredSlotBar", "onChanged() - emergency_mode : ");
                    MultiSIMPreferredSlotBar.this.updateBarVisibilities();
                }
            }
        };
        if (!QpRune.QUICK_BAR_MULTISIM) {
            return;
        }
        this.mContext = context;
        this.mBroadcastDispatcher = broadcastDispatcher;
        MultiSIMController multiSIMController = (MultiSIMController) Dependency.get(MultiSIMController.class);
        this.mController = multiSIMController;
        if (multiSIMController.mData == null) {
            multiSIMController.mData = new MultiSIMData();
        }
        MultiSIMData multiSIMData = new MultiSIMData();
        multiSIMData.copyFrom(multiSIMController.mData);
        multiSIMController.reverseSlotIfNeed(multiSIMData);
        this.mData = multiSIMData;
        multiSIMController.registerCallback(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(EnterpriseDeviceManager.ACTION_KNOX_RESTRICTIONS_CHANGED);
        broadcastDispatcher.registerReceiver(intentFilter, r0);
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).registerCallback(this.mSettingsListener, uriArr);
        ((TunerService) Dependency.get(TunerService.class)).addTunable(this, "multi_sim_bar_show_on_qspanel");
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final void destroy() {
        this.mCallback = null;
        if (!QpRune.QUICK_BAR_MULTISIM) {
            return;
        }
        this.mBroadcastDispatcher.unregisterReceiver(this.mIntentReceiver);
        ((SettingsHelper) Dependency.get(SettingsHelper.class)).unregisterCallback(this.mSettingsListener);
        this.mSettingsListener = null;
        ((TunerService) Dependency.get(TunerService.class)).removeTunable(this);
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final int getBarHeight() {
        return this.mContext.getResources().getDimensionPixelSize(R.dimen.multi_sim_bar_height);
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final int getBarLayout() {
        return R.layout.qs_panel_multi_sim_preffered_slot;
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final void inflateViews(ViewGroup viewGroup) {
        LinearLayout linearLayout;
        Context context = this.mContext;
        View inflate = LayoutInflater.from(context).inflate(R.layout.qs_panel_multi_sim_preffered_slot, viewGroup, false);
        this.mBarRootView = inflate;
        if (inflate != null && (linearLayout = (LinearLayout) inflate.findViewById(R.id.slot_button_group)) != null) {
            linearLayout.setBackground(context.getDrawable(R.drawable.sec_large_button_ripple_background));
        }
        updateHeightMargins();
        updateBarVisibilities();
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final boolean isAvailable() {
        return QpRune.QUICK_BAR_MULTISIM;
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final void onConfigChanged(Configuration configuration) {
        int i = this.mCurrentOrientation;
        int i2 = configuration.orientation;
        if (i != i2) {
            this.mCurrentOrientation = i2;
            if (this.mBarRootView == null) {
                return;
            }
            updateHeightMargins();
            BarController.AnonymousClass4 anonymousClass4 = this.mCallback;
            if (anonymousClass4 != null) {
                anonymousClass4.onBarHeightChanged();
            }
        }
    }

    @Override // com.android.systemui.settings.multisim.MultiSIMController.MultiSIMDataChangedCallback
    public final void onDataChanged(MultiSIMData multiSIMData) {
        MultiSIMData multiSIMData2 = this.mData;
        boolean z = multiSIMData2.isMultiSimReady;
        boolean z2 = multiSIMData.isMultiSimReady;
        if (z != z2 || multiSIMData2.isSecondaryUser != multiSIMData.isSecondaryUser) {
            multiSIMData2.isMultiSimReady = z2;
            multiSIMData2.isSecondaryUser = multiSIMData.isSecondaryUser;
            updateBarVisibilities();
        }
    }

    @Override // com.android.systemui.tuner.TunerService.Tunable
    public final void onTuningChanged(String str, String str2) {
        CustomizationProvider$$ExternalSyntheticOutline0.m("onTuningChanged() : key = ", str, ", newValue = ", str2, "MultiSIMPreferredSlotBar");
        if (str2 != null && str.equals("multi_sim_bar_show_on_qspanel")) {
            boolean z = true;
            try {
                if (Integer.parseInt(str2) == 0) {
                    z = false;
                }
            } catch (NumberFormatException unused) {
            }
            this.mIsMultiSIMBarShowOnQSPanel = z;
            updateBarVisibilities();
        }
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final void setExpanded(boolean z) {
        if (this.mExpanded != z) {
            ActionBarContextView$$ExternalSyntheticOutline0.m(RowView$$ExternalSyntheticOutline0.m("setExpanded : ", z, " mShowing : "), this.mShowing, "MultiSIMPreferredSlotBar");
            this.mExpanded = z;
        }
        MultiSIMController multiSIMController = this.mController;
        if (z && this.mShowing) {
            if (multiSIMController.mSimCardManagerService == null) {
                multiSIMController.mSimCardManagerService = SimCardManagerServiceProvider.getService(multiSIMController.mContext);
                Log.d("MultiSIMController", "registerSimCardManagerCallback SimCardManagerService " + multiSIMController.mSimCardManagerService);
            }
            MultiSIMController.AnonymousClass13 anonymousClass13 = SimCardManagerServiceProvider.sSimCardManagerServiceCallback;
            multiSIMController.mSimCardCallback = anonymousClass13;
            if (anonymousClass13 == null) {
                MultiSIMController.AnonymousClass13 anonymousClass132 = new MultiSIMController.AnonymousClass13();
                multiSIMController.mSimCardCallback = anonymousClass132;
                if (multiSIMController.mSimCardManagerService != null) {
                    try {
                        SimCardManagerServiceProvider.sSimCardManagerServiceCallback = anonymousClass132;
                        return;
                    } catch (Exception e) {
                        Log.d("MultiSIMController", "Caught exception from registerSimCardManagerCallback", e);
                        return;
                    }
                }
                Log.d("MultiSIMController", "registerSimCardManagerCallback : mSimCardManagerService is null ");
                return;
            }
            Log.d("MultiSIMController", "registerSimCardManagerCallback : mSimCardCallback is not null ");
            return;
        }
        if (multiSIMController.mSimCardManagerService != null) {
            try {
                if (multiSIMController.mSimCardCallback != null && !SimCardManagerServiceProvider.mIsRemainCallbackCall) {
                    SimCardManagerServiceProvider.sSimCardManagerServiceCallback = null;
                }
                if (SimCardManagerServiceProvider.isServiceRunningCheck(multiSIMController.mContext)) {
                    SimCardManagerServiceProvider.CloseService();
                }
            } catch (Exception e2) {
                Log.d("MultiSIMController", "Caught exception from unRegisterSimCardManagerCallback", e2);
            }
        }
        multiSIMController.mSimCardManagerService = null;
        multiSIMController.mSimCardCallback = null;
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final void showBar(boolean z) {
        super.showBar(z);
        MultiSIMController multiSIMController = this.mController;
        MultiSIMController.AnonymousClass12 anonymousClass12 = multiSIMController.mUIHandler;
        if (z && !multiSIMController.mUIVisible) {
            multiSIMController.mUIVisible = true;
            anonymousClass12.post(new MultiSIMController$$ExternalSyntheticLambda1(multiSIMController, 2));
        }
        multiSIMController.mUIVisible = z;
        MultiSIMController$$ExternalSyntheticLambda1 multiSIMController$$ExternalSyntheticLambda1 = multiSIMController.mNotifyVisToCallbackRunnable;
        anonymousClass12.removeCallbacks(multiSIMController$$ExternalSyntheticLambda1);
        anonymousClass12.post(multiSIMController$$ExternalSyntheticLambda1);
    }

    public final void updateBarVisibilities() {
        boolean z;
        if (QpRune.QUICK_BAR_MULTISIM && this.mController.isMultiSimAvailable() && !this.mIsMultiSIMBarHideByKnoxRequest && this.mIsMultiSIMBarShowOnQSPanel) {
            z = true;
        } else {
            z = false;
        }
        Log.d("MultiSIMPreferredSlotBar", "updateBarVisibilities " + z);
        showBar(z);
    }

    @Override // com.android.systemui.qs.bar.BarItemImpl
    public final void updateHeightMargins() {
        if (this.mBarRootView == null) {
            return;
        }
        Context context = this.mContext;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.multi_sim_bar_height);
        context.getResources().getDimensionPixelSize(R.dimen.bar_side_margin);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dimensionPixelSize);
        layoutParams.topMargin = context.getResources().getDimensionPixelSize(R.dimen.bar_top_margin);
        this.mBarRootView.setLayoutParams(layoutParams);
    }
}
