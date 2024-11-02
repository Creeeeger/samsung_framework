package com.android.systemui.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PersistableBundle;
import android.telephony.CarrierConfigManager;
import android.telephony.SubscriptionManager;
import android.util.ArraySet;
import android.util.SparseBooleanArray;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.statusbar.phone.fragment.CollapsedStatusBarFragment;
import com.android.systemui.statusbar.policy.CallbackController;
import java.util.Iterator;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CarrierConfigTracker extends BroadcastReceiver implements CallbackController {
    public final CarrierConfigManager mCarrierConfigManager;
    public boolean mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfig;
    public boolean mDefaultAlwaysShowPrimarySignalBarInOpportunisticNetworkConfigLoaded;
    public boolean mDefaultCarrierProvisionsWifiMergedNetworks;
    public boolean mDefaultCarrierProvisionsWifiMergedNetworksLoaded;
    public final SparseBooleanArray mCallStrengthConfigs = new SparseBooleanArray();
    public final SparseBooleanArray mNoCallingConfigs = new SparseBooleanArray();
    public final SparseBooleanArray mCarrierProvisionsWifiMergedNetworks = new SparseBooleanArray();
    public final SparseBooleanArray mShowOperatorNameConfigs = new SparseBooleanArray();
    public final Set mListeners = new ArraySet();
    public final Set mDataListeners = new ArraySet();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DefaultDataSubscriptionChangedListener {
        void onDefaultSubscriptionChanged(int i);
    }

    public CarrierConfigTracker(CarrierConfigManager carrierConfigManager, BroadcastDispatcher broadcastDispatcher) {
        this.mCarrierConfigManager = carrierConfigManager;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.telephony.action.CARRIER_CONFIG_CHANGED");
        intentFilter.addAction("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED");
        broadcastDispatcher.registerReceiver(intentFilter, this);
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void addCallback(Object obj) {
        ((ArraySet) this.mListeners).add((CollapsedStatusBarFragment.AnonymousClass2) obj);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        PersistableBundle configForSubId;
        String action = intent.getAction();
        if ("android.telephony.action.CARRIER_CONFIG_CHANGED".equals(action)) {
            int intExtra = intent.getIntExtra("android.telephony.extra.SUBSCRIPTION_INDEX", -1);
            if (SubscriptionManager.isValidSubscriptionId(intExtra) && (configForSubId = this.mCarrierConfigManager.getConfigForSubId(intExtra)) != null) {
                synchronized (this.mCallStrengthConfigs) {
                    this.mCallStrengthConfigs.put(intExtra, configForSubId.getBoolean("display_call_strength_indicator_bool"));
                }
                synchronized (this.mNoCallingConfigs) {
                    this.mNoCallingConfigs.put(intExtra, configForSubId.getBoolean("use_ip_for_calling_indicator_bool"));
                }
                synchronized (this.mCarrierProvisionsWifiMergedNetworks) {
                    this.mCarrierProvisionsWifiMergedNetworks.put(intExtra, configForSubId.getBoolean("carrier_provisions_wifi_merged_networks_bool"));
                }
                synchronized (this.mShowOperatorNameConfigs) {
                    this.mShowOperatorNameConfigs.put(intExtra, configForSubId.getBoolean("show_operator_name_in_statusbar_bool"));
                }
                Iterator it = ((ArraySet) this.mListeners).iterator();
                while (it.hasNext()) {
                    CollapsedStatusBarFragment collapsedStatusBarFragment = CollapsedStatusBarFragment.this;
                    if (collapsedStatusBarFragment.mCarrierHomeLogoViewController == null) {
                        collapsedStatusBarFragment.initOperatorName();
                    }
                }
                return;
            }
            return;
        }
        if ("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED".equals(action)) {
            int intExtra2 = intent.getIntExtra("android.telephony.extra.SUBSCRIPTION_INDEX", -1);
            Iterator it2 = ((ArraySet) this.mDataListeners).iterator();
            while (it2.hasNext()) {
                ((DefaultDataSubscriptionChangedListener) it2.next()).onDefaultSubscriptionChanged(intExtra2);
            }
        }
    }

    @Override // com.android.systemui.statusbar.policy.CallbackController
    public final void removeCallback(Object obj) {
        ((ArraySet) this.mListeners).remove((CollapsedStatusBarFragment.AnonymousClass2) obj);
    }
}
