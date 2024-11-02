package com.android.systemui.shade.carrier;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.telephony.CellLocation;
import android.telephony.ICellBroadcastService;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.keyguard.ActiveUnlockConfig$$ExternalSyntheticOutline0;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator;
import com.android.systemui.statusbar.pipeline.mobile.data.model.SubscriptionsOrder;
import com.android.systemui.statusbar.pipeline.shared.data.repository.ImsRegStateUtil;
import com.android.systemui.statusbar.policy.LocationController;
import com.android.systemui.statusbar.policy.LocationControllerImpl;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LatinNetworkNameProviderImpl implements LatinNetworkNameProvider, Dumpable {
    public final Executor backgroundExecutor;
    public final BroadcastDispatcher broadcastDispatcher;
    public final CarrierInfraMediator carrierInfraMediator;
    public final HashMap cbMsgBody;
    public ICellBroadcastService cellBroadcastService;
    public final Context context;
    public final DumpManager dumpManager;
    public final ImsRegStateUtil imsRegStateUtil;
    public boolean isAirplaneMode;
    public ShadeCarrierGroupController$$ExternalSyntheticLambda2 latinNetworkNameCallback;
    public final LocationController locationController;
    public final String mNetworkNameSeparator;
    public String networkManuallySelected;
    public boolean showCBMsg;
    public final SubscriptionManager subscriptionManager;
    public final SubscriptionsOrder subscriptionsOrder;
    public final TelephonyManager telephonyManager;
    public final HashMap serviceStateHash = new HashMap();
    public final HashMap networkNameHash = new HashMap();
    public final HashMap simState = new HashMap();
    public final LatinNetworkNameProviderImpl$broadcastReceiver$1 broadcastReceiver = new LatinNetworkNameProviderImpl$broadcastReceiver$1(this);
    public final CellLocationChangedCallback cellLocationCallback0 = new CellLocationChangedCallback(0, new LatinNetworkNameProviderImpl$cellLocationCallback0$1(this));
    public final CellLocationChangedCallback cellLocationCallback1 = new CellLocationChangedCallback(1, new LatinNetworkNameProviderImpl$cellLocationCallback1$1(this));
    public final LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1 cellBroadcastServiceConnection = new ServiceConnection() { // from class: com.android.systemui.shade.carrier.LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1
        @Override // android.content.ServiceConnection
        public final void onBindingDied(ComponentName componentName) {
            Log.d("LatinNetworkNameProvider", "Binding died");
        }

        @Override // android.content.ServiceConnection
        public final void onNullBinding(ComponentName componentName) {
            Log.d("LatinNetworkNameProvider", "Null binding");
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d("LatinNetworkNameProvider", "connected to CellBroadcastService");
            LatinNetworkNameProviderImpl.this.cellBroadcastService = ICellBroadcastService.Stub.asInterface(iBinder);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            Log.d("LatinNetworkNameProvider", "CellBroadcastService is disconnected unexpectedly");
            LatinNetworkNameProviderImpl.this.cellBroadcastService = null;
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CellLocationChangedCallback extends TelephonyCallback implements TelephonyCallback.CellLocationListener {
        public final Function1 callback;
        public final int slotId;

        public CellLocationChangedCallback(int i, Function1 function1) {
            this.slotId = i;
            this.callback = function1;
        }

        @Override // android.telephony.TelephonyCallback.CellLocationListener
        public final void onCellLocationChanged(CellLocation cellLocation) {
            this.callback.invoke(Integer.valueOf(this.slotId));
        }
    }

    /* JADX WARN: Type inference failed for: r2v7, types: [com.android.systemui.shade.carrier.LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1] */
    public LatinNetworkNameProviderImpl(Context context, BroadcastDispatcher broadcastDispatcher, CarrierInfraMediator carrierInfraMediator, TelephonyManager telephonyManager, LocationController locationController, SubscriptionManager subscriptionManager, Executor executor, DumpManager dumpManager, ImsRegStateUtil imsRegStateUtil, SubscriptionsOrder subscriptionsOrder) {
        this.context = context;
        this.broadcastDispatcher = broadcastDispatcher;
        this.carrierInfraMediator = carrierInfraMediator;
        this.telephonyManager = telephonyManager;
        this.locationController = locationController;
        this.subscriptionManager = subscriptionManager;
        this.backgroundExecutor = executor;
        this.dumpManager = dumpManager;
        this.imsRegStateUtil = imsRegStateUtil;
        this.subscriptionsOrder = subscriptionsOrder;
        this.mNetworkNameSeparator = context.getResources().getString(R.string.shade_carrier_divider);
        context.getResources().getString(android.R.string.quick_contacts_not_available);
        this.cbMsgBody = new HashMap();
    }

    public static final void access$handleCellLocationChanged(LatinNetworkNameProviderImpl latinNetworkNameProviderImpl, int i) {
        latinNetworkNameProviderImpl.getClass();
        Log.d("LatinNetworkNameProvider", "onCellLocationChanged [" + i + "]");
        ServiceStateInfo serviceStateInfo = (ServiceStateInfo) latinNetworkNameProviderImpl.serviceStateHash.get(Integer.valueOf(i));
        if (serviceStateInfo != null) {
            if (isLatinGSM(serviceStateInfo.networkType, serviceStateInfo.voiceNetworkType)) {
                if (latinNetworkNameProviderImpl.carrierInfraMediator.isEnabled(CarrierInfraMediator.Conditions.DISPLAY_CBCH50, 0, new Object[0])) {
                    latinNetworkNameProviderImpl.broadcastCBClear(i);
                    return;
                }
                return;
            }
            ShadeCarrierGroupController$$ExternalSyntheticLambda2 shadeCarrierGroupController$$ExternalSyntheticLambda2 = latinNetworkNameProviderImpl.latinNetworkNameCallback;
            if (shadeCarrierGroupController$$ExternalSyntheticLambda2 != null) {
                shadeCarrierGroupController$$ExternalSyntheticLambda2.updateCarrierInfo(latinNetworkNameProviderImpl.getCombinedNetworkName());
            }
        }
    }

    public static boolean isLatinGSM(int i, int i2) {
        if (i == 0 || i == 18) {
            i = i2;
        }
        if (i == 1 || i == 2 || i == 16) {
            return true;
        }
        return false;
    }

    public final void broadcastCBClear(int i) {
        Intent intent = new Intent("com.sec.android.app.mms.CB_CLEAR");
        intent.putExtra("phone", i);
        this.context.sendBroadcast(intent);
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        for (Map.Entry entry : this.networkNameHash.entrySet()) {
            printWriter.println("network name[" + entry.getKey() + "] " + entry.getValue());
        }
        for (Map.Entry entry2 : this.serviceStateHash.entrySet()) {
            printWriter.println("service state[" + entry2.getKey() + "] " + entry2.getValue());
        }
        ActiveUnlockConfig$$ExternalSyntheticOutline0.m("isAirplaneMode=", this.isAirplaneMode, printWriter);
    }

    /* JADX WARN: Code restructure failed: missing block: B:69:0x0038, code lost:
    
        if (r3 != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        if (r3 == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
    
        r3 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getCombinedNetworkName() {
        /*
            Method dump skipped, instructions count: 325
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shade.carrier.LatinNetworkNameProviderImpl.getCombinedNetworkName():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:123:0x0252, code lost:
    
        if (((com.android.systemui.shade.carrier.ServiceStateInfo) r7).isEmergency == false) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x028d, code lost:
    
        if (r18 < 0) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x028f, code lost:
    
        r2 = r17.networkManuallySelected;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0291, code lost:
    
        if (r2 == null) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0297, code lost:
    
        if (r2.length() <= 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0299, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x029c, code lost:
    
        if (r2 == false) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x029e, code lost:
    
        r0 = r17.networkManuallySelected;
        r1 = r3.get(java.lang.Integer.valueOf(r18));
        kotlin.jvm.internal.Intrinsics.checkNotNull(r1);
        r0 = android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(r0, " ");
        r0.append(((com.android.systemui.shade.carrier.NetworkNameInfo) r1).plmn);
        r0 = r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x029b, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x02bb, code lost:
    
        r0 = r3.get(java.lang.Integer.valueOf(r18));
        kotlin.jvm.internal.Intrinsics.checkNotNull(r0);
        r0 = ((com.android.systemui.shade.carrier.NetworkNameInfo) r0).plmn;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02ca, code lost:
    
        if (r0 != null) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x028b, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r7, ((com.android.systemui.shade.carrier.NetworkNameInfo) r10).plmn) != false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0075, code lost:
    
        if (r2 == null) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x042e, code lost:
    
        if (r9 != false) goto L219;
     */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String getLatinNetworkName(int r18) {
        /*
            Method dump skipped, instructions count: 1604
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shade.carrier.LatinNetworkNameProviderImpl.getLatinNetworkName(int):java.lang.String");
    }

    public final boolean isUseLatinNetworkName() {
        if (!this.carrierInfraMediator.isEnabled(CarrierInfraMediator.Conditions.DISPLAY_CBCH50, 0, new Object[0]) || !(!this.subscriptionManager.getCompleteActiveSubscriptionInfoList().isEmpty())) {
            return false;
        }
        return true;
    }

    public final void registerLocationListener() {
        CellLocationChangedCallback cellLocationChangedCallback;
        HashMap hashMap = this.serviceStateHash;
        Log.d("LatinNetworkNameProvider", "registerLocationListener subscriptions=" + hashMap.size());
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            int intValue = ((Number) ((Map.Entry) it.next()).getKey()).intValue();
            TelephonyManager createForSubscriptionId = this.telephonyManager.createForSubscriptionId(SubscriptionManager.getSubscriptionId(intValue));
            if (intValue == 0) {
                cellLocationChangedCallback = this.cellLocationCallback0;
            } else {
                cellLocationChangedCallback = this.cellLocationCallback1;
            }
            if (((LocationControllerImpl) this.locationController).isLocationEnabled()) {
                createForSubscriptionId.registerTelephonyCallback(this.backgroundExecutor, cellLocationChangedCallback);
                StringBuilder sb = new StringBuilder("Location is enabled, start listening cell location [");
                sb.append(intValue);
                ExifInterface$$ExternalSyntheticOutline0.m(sb, "]", "LatinNetworkNameProvider");
            } else {
                createForSubscriptionId.unregisterTelephonyCallback(cellLocationChangedCallback);
                Log.d("LatinNetworkNameProvider", "Location is turned off, stop listening cell location [" + intValue + "]");
            }
        }
    }

    public final void unregisterLocationListener() {
        CellLocationChangedCallback cellLocationChangedCallback;
        Iterator it = this.serviceStateHash.entrySet().iterator();
        while (it.hasNext()) {
            int intValue = ((Number) ((Map.Entry) it.next()).getKey()).intValue();
            TelephonyManager createForSubscriptionId = this.telephonyManager.createForSubscriptionId(SubscriptionManager.getSubscriptionId(intValue));
            if (intValue == 0) {
                cellLocationChangedCallback = this.cellLocationCallback0;
            } else {
                cellLocationChangedCallback = this.cellLocationCallback1;
            }
            createForSubscriptionId.unregisterTelephonyCallback(cellLocationChangedCallback);
        }
    }
}
