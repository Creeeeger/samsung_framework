package com.android.systemui.shade.carrier;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.core.graphics.drawable.IconCompat$$ExternalSyntheticOutline0;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import com.android.keyguard.CarrierTextManager;
import com.android.settingslib.AccessibilityContentDescriptions;
import com.android.settingslib.mobile.TelephonyIcons;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.slimindicator.SlimIndicatorViewMediator;
import com.android.systemui.slimindicator.SlimIndicatorViewMediatorImpl;
import com.android.systemui.slimindicator.SlimIndicatorViewSubscriber;
import com.android.systemui.statusbar.connectivity.MobileDataIndicators;
import com.android.systemui.statusbar.connectivity.NetworkController;
import com.android.systemui.statusbar.connectivity.SignalCallback;
import com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator;
import com.android.systemui.util.CarrierConfigTracker;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShadeCarrierGroupController {
    public final ActivityStarter mActivityStarter;
    public final Handler mBgHandler;
    public final Callback mCallback;
    public final View[] mCarrierDividers;
    public final ShadeCarrier[] mCarrierGroups;
    public final CarrierTextManager mCarrierTextManager;
    public final CellSignalState[] mInfos;
    public boolean mIsSingleCarrier;
    public final int[] mLastSignalLevel;
    public final String[] mLastSignalLevelDescription;
    public final LatinNetworkNameProvider mLatinNetworkNameProvider;
    public boolean mListening;
    public final H mMainHandler;
    public final NetworkController mNetworkController;
    public final TextView mNoSimTextView;
    public final QuickStarHelper mQuickStarHelper;
    public final AnonymousClass1 mSignalCallback;
    public final SlotIndexResolver mSlotIndexResolver;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Builder {
        public final ActivityStarter mActivityStarter;
        public final CarrierConfigTracker mCarrierConfigTracker;
        public final CarrierTextManager.Builder mCarrierTextControllerBuilder;
        public final Context mContext;
        public final Handler mHandler;
        public final LatinNetworkNameProvider mLatinNetworkNameProvider;
        public final Looper mLooper;
        public final NetworkController mNetworkController;
        public final SlimIndicatorViewMediator mSlimIndicatorViewMediator;
        public final SlotIndexResolver mSlotIndexResolver;

        public Builder(ActivityStarter activityStarter, Handler handler, Looper looper, NetworkController networkController, CarrierTextManager.Builder builder, Context context, CarrierConfigTracker carrierConfigTracker, SlotIndexResolver slotIndexResolver, LatinNetworkNameProvider latinNetworkNameProvider, SlimIndicatorViewMediator slimIndicatorViewMediator) {
            this.mActivityStarter = activityStarter;
            this.mHandler = handler;
            this.mLooper = looper;
            this.mNetworkController = networkController;
            this.mCarrierTextControllerBuilder = builder;
            this.mContext = context;
            this.mCarrierConfigTracker = carrierConfigTracker;
            this.mSlotIndexResolver = slotIndexResolver;
            this.mLatinNetworkNameProvider = latinNetworkNameProvider;
            this.mSlimIndicatorViewMediator = slimIndicatorViewMediator;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Callback implements CarrierTextManager.CarrierTextCallback {
        public final H mHandler;

        public Callback(H h) {
            this.mHandler = h;
        }

        @Override // com.android.keyguard.CarrierTextManager.CarrierTextCallback
        public final void updateCarrierInfo(CarrierTextManager.CarrierTextCallbackInfo carrierTextCallbackInfo) {
            this.mHandler.obtainMessage(0, carrierTextCallbackInfo).sendToTarget();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public final Consumer mUpdateCarrierInfo;
        public final Runnable mUpdateState;

        public H(Looper looper, Consumer<CarrierTextManager.CarrierTextCallbackInfo> consumer, Runnable runnable) {
            super(looper);
            this.mUpdateCarrierInfo = consumer;
            this.mUpdateState = runnable;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    super.handleMessage(message);
                    return;
                } else {
                    this.mUpdateState.run();
                    return;
                }
            }
            this.mUpdateCarrierInfo.accept((CarrierTextManager.CarrierTextCallbackInfo) message.obj);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class QuickStarHelper implements SlimIndicatorViewSubscriber {
        public boolean mIsRegistered;
        public final SlimIndicatorViewMediator mSlimIndicatorViewMediator;

        public QuickStarHelper(SlimIndicatorViewMediator slimIndicatorViewMediator) {
            this.mSlimIndicatorViewMediator = slimIndicatorViewMediator;
        }

        /* JADX WARN: Code restructure failed: missing block: B:6:0x0019, code lost:
        
            if (r0 != false) goto L11;
         */
        @Override // com.android.systemui.slimindicator.SlimIndicatorViewSubscriber
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void updateQuickStarStyle() {
            /*
                r3 = this;
                com.android.systemui.shade.carrier.ShadeCarrierGroupController r3 = com.android.systemui.shade.carrier.ShadeCarrierGroupController.this
                com.android.systemui.shade.carrier.ShadeCarrierGroupController$QuickStarHelper r0 = r3.mQuickStarHelper
                com.android.systemui.slimindicator.SlimIndicatorViewMediator r0 = r0.mSlimIndicatorViewMediator
                com.android.systemui.slimindicator.SlimIndicatorViewMediatorImpl r0 = (com.android.systemui.slimindicator.SlimIndicatorViewMediatorImpl) r0
                com.android.systemui.slimindicator.SlimIndicatorPluginMediator r1 = r0.mPluginMediator
                boolean r1 = r1.mIsSPluginConnected
                r2 = 0
                if (r1 == 0) goto L1c
                com.android.systemui.slimindicator.SlimIndicatorCarrierCrew r0 = r0.mCarrierCrew
                int r0 = r0.mIsPanelCarrierDisabled
                r1 = 1
                if (r0 != r1) goto L18
                r0 = r1
                goto L19
            L18:
                r0 = r2
            L19:
                if (r0 == 0) goto L1c
                goto L1d
            L1c:
                r1 = r2
            L1d:
                com.android.systemui.shade.carrier.ShadeCarrier[] r3 = r3.mCarrierGroups
                if (r1 != 0) goto L27
                r3 = r3[r2]
                r3.setVisibility(r2)
                goto L2e
            L27:
                r3 = r3[r2]
                r0 = 8
                r3.setVisibility(r0)
            L2e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shade.carrier.ShadeCarrierGroupController.QuickStarHelper.updateQuickStarStyle():void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface SlotIndexResolver {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SubscriptionManagerSlotIndexResolver implements SlotIndexResolver {
    }

    public /* synthetic */ ShadeCarrierGroupController(ShadeCarrierGroup shadeCarrierGroup, ActivityStarter activityStarter, Handler handler, Looper looper, NetworkController networkController, CarrierTextManager.Builder builder, Context context, CarrierConfigTracker carrierConfigTracker, SlotIndexResolver slotIndexResolver, LatinNetworkNameProvider latinNetworkNameProvider, SlimIndicatorViewMediator slimIndicatorViewMediator, int i) {
        this(shadeCarrierGroup, activityStarter, handler, looper, networkController, builder, context, carrierConfigTracker, slotIndexResolver, latinNetworkNameProvider, slimIndicatorViewMediator);
    }

    public int getShadeCarrierVisibility(int i) {
        return this.mCarrierGroups[i].getVisibility();
    }

    public int getSlotIndex(int i) {
        ((SubscriptionManagerSlotIndexResolver) this.mSlotIndexResolver).getClass();
        return SubscriptionManager.getSlotIndex(i);
    }

    public final void handleUpdateState() {
        CellSignalState[] cellSignalStateArr;
        boolean z;
        H h = this.mMainHandler;
        if (!h.getLooper().isCurrentThread()) {
            h.obtainMessage(1).sendToTarget();
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            cellSignalStateArr = this.mInfos;
            if (i >= 3) {
                break;
            }
            if (cellSignalStateArr[i].visible) {
                i2++;
            }
            i++;
        }
        if (i2 == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            for (int i3 = 0; i3 < 3; i3++) {
                CellSignalState cellSignalState = cellSignalStateArr[i3];
                if (cellSignalState.visible && cellSignalState.mobileSignalIconId == R.drawable.ic_shade_sim_card) {
                    cellSignalStateArr[i3] = new CellSignalState(true, R.drawable.ic_blank, "", "", false);
                }
            }
        }
        int i4 = 0;
        while (true) {
            int i5 = 8;
            if (i4 >= 3) {
                break;
            }
            ShadeCarrier shadeCarrier = this.mCarrierGroups[i4];
            CellSignalState cellSignalState2 = cellSignalStateArr[i4];
            if (!Objects.equals(cellSignalState2, shadeCarrier.mLastSignalState) || z != shadeCarrier.mIsSingleCarrier) {
                shadeCarrier.mLastSignalState = cellSignalState2;
                shadeCarrier.mIsSingleCarrier = z;
                boolean z2 = cellSignalState2.visible;
                shadeCarrier.mMobileGroup.setVisibility(8);
                View view = shadeCarrier.mSpacer;
                if (z) {
                    i5 = 0;
                }
                view.setVisibility(i5);
            }
            i4++;
        }
        View[] viewArr = this.mCarrierDividers;
        viewArr[0].setVisibility(8);
        viewArr[1].setVisibility(8);
        if (this.mIsSingleCarrier != z) {
            this.mIsSingleCarrier = z;
        }
    }

    public final void setListening(boolean z) {
        if (z == this.mListening) {
            return;
        }
        this.mListening = z;
        this.mBgHandler.post(new ShadeCarrierGroupController$$ExternalSyntheticLambda1(this, 1));
    }

    /* JADX WARN: Type inference failed for: r9v2, types: [com.android.systemui.shade.carrier.ShadeCarrierGroupController$1] */
    private ShadeCarrierGroupController(ShadeCarrierGroup shadeCarrierGroup, ActivityStarter activityStarter, Handler handler, Looper looper, NetworkController networkController, CarrierTextManager.Builder builder, Context context, CarrierConfigTracker carrierConfigTracker, SlotIndexResolver slotIndexResolver, LatinNetworkNameProvider latinNetworkNameProvider, SlimIndicatorViewMediator slimIndicatorViewMediator) {
        this.mInfos = new CellSignalState[3];
        this.mCarrierDividers = r7;
        this.mCarrierGroups = r8;
        this.mLastSignalLevel = new int[3];
        this.mLastSignalLevelDescription = new String[3];
        this.mSignalCallback = new SignalCallback() { // from class: com.android.systemui.shade.carrier.ShadeCarrierGroupController.1
            @Override // com.android.systemui.statusbar.connectivity.SignalCallback
            public final void setMobileDataIndicators(MobileDataIndicators mobileDataIndicators) {
                int slotIndex = ShadeCarrierGroupController.this.getSlotIndex(mobileDataIndicators.subId);
                if (slotIndex >= 3) {
                    IconCompat$$ExternalSyntheticOutline0.m("setMobileDataIndicators - slot: ", slotIndex, "ShadeCarrierGroup");
                } else if (slotIndex == -1) {
                    Log.e("ShadeCarrierGroup", "Invalid SIM slot index for subscription: " + mobileDataIndicators.subId);
                }
            }

            @Override // com.android.systemui.statusbar.connectivity.SignalCallback
            public final void setNoSims(boolean z, boolean z2) {
                ShadeCarrierGroupController shadeCarrierGroupController = ShadeCarrierGroupController.this;
                if (z) {
                    for (int i = 0; i < 3; i++) {
                        CellSignalState[] cellSignalStateArr = shadeCarrierGroupController.mInfos;
                        CellSignalState cellSignalState = cellSignalStateArr[i];
                        if (cellSignalState.visible) {
                            cellSignalState = new CellSignalState(false, cellSignalState.mobileSignalIconId, cellSignalState.contentDescription, cellSignalState.typeContentDescription, cellSignalState.roaming);
                        }
                        cellSignalStateArr[i] = cellSignalState;
                    }
                }
                shadeCarrierGroupController.mMainHandler.obtainMessage(1).sendToTarget();
            }
        };
        this.mActivityStarter = activityStarter;
        this.mBgHandler = handler;
        this.mNetworkController = networkController;
        builder.mShowAirplaneMode = false;
        builder.mShowMissingSim = true;
        builder.mDebugLocation = "Shade";
        this.mCarrierTextManager = builder.build();
        this.mSlotIndexResolver = slotIndexResolver;
        this.mNoSimTextView = (TextView) shadeCarrierGroup.findViewById(R.id.no_carrier_text);
        H h = new H(looper, new Consumer() { // from class: com.android.systemui.shade.carrier.ShadeCarrierGroupController$$ExternalSyntheticLambda0
            /* JADX WARN: Removed duplicated region for block: B:17:0x0079  */
            /* JADX WARN: Removed duplicated region for block: B:20:0x007f  */
            @Override // java.util.function.Consumer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void accept(java.lang.Object r6) {
                /*
                    r5 = this;
                    com.android.systemui.shade.carrier.ShadeCarrierGroupController r5 = com.android.systemui.shade.carrier.ShadeCarrierGroupController.this
                    com.android.keyguard.CarrierTextManager$CarrierTextCallbackInfo r6 = (com.android.keyguard.CarrierTextManager.CarrierTextCallbackInfo) r6
                    com.android.systemui.shade.carrier.ShadeCarrierGroupController$H r0 = r5.mMainHandler
                    android.os.Looper r1 = r0.getLooper()
                    boolean r1 = r1.isCurrentThread()
                    r2 = 0
                    if (r1 != 0) goto L1a
                    android.os.Message r5 = r0.obtainMessage(r2, r6)
                    r5.sendToTarget()
                    goto L8c
                L1a:
                    android.widget.TextView r0 = r5.mNoSimTextView
                    r1 = 8
                    r0.setVisibility(r1)
                    java.lang.CharSequence r0 = r6.carrierText
                    java.lang.String r0 = r0.toString()
                    java.lang.String r0 = r0.trim()
                    com.android.systemui.shade.carrier.LatinNetworkNameProvider r3 = r5.mLatinNetworkNameProvider
                    com.android.systemui.shade.carrier.LatinNetworkNameProviderImpl r3 = (com.android.systemui.shade.carrier.LatinNetworkNameProviderImpl) r3
                    boolean r4 = r3.isUseLatinNetworkName()
                    if (r4 == 0) goto L3d
                    boolean r6 = r6.airplaneMode
                    r3.isAirplaneMode = r6
                    java.lang.String r0 = r3.getCombinedNetworkName()
                L3d:
                    java.lang.String r6 = "handleUpdateCarrierInfo ["
                    java.lang.String r4 = "] isLatin="
                    java.lang.StringBuilder r6 = androidx.activity.result.ActivityResultRegistry$$ExternalSyntheticOutline0.m(r6, r0, r4)
                    boolean r3 = r3.isUseLatinNetworkName()
                    r6.append(r3)
                    java.lang.String r6 = r6.toString()
                    java.lang.String r3 = "ShadeCarrierGroup"
                    android.util.Log.d(r3, r6)
                    com.android.systemui.shade.carrier.ShadeCarrier[] r6 = r5.mCarrierGroups
                    r3 = r6[r2]
                    r3.setCarrierText(r0)
                    com.android.systemui.shade.carrier.ShadeCarrierGroupController$QuickStarHelper r0 = r5.mQuickStarHelper
                    com.android.systemui.slimindicator.SlimIndicatorViewMediator r0 = r0.mSlimIndicatorViewMediator
                    com.android.systemui.slimindicator.SlimIndicatorViewMediatorImpl r0 = (com.android.systemui.slimindicator.SlimIndicatorViewMediatorImpl) r0
                    com.android.systemui.slimindicator.SlimIndicatorPluginMediator r3 = r0.mPluginMediator
                    boolean r3 = r3.mIsSPluginConnected
                    r4 = 1
                    if (r3 == 0) goto L76
                    com.android.systemui.slimindicator.SlimIndicatorCarrierCrew r0 = r0.mCarrierCrew
                    int r0 = r0.mIsPanelCarrierDisabled
                    if (r0 != r4) goto L71
                    r0 = r4
                    goto L72
                L71:
                    r0 = r2
                L72:
                    if (r0 == 0) goto L76
                    r0 = r4
                    goto L77
                L76:
                    r0 = r2
                L77:
                    if (r0 != 0) goto L7f
                    r0 = r6[r2]
                    r0.setVisibility(r2)
                    goto L84
                L7f:
                    r0 = r6[r2]
                    r0.setVisibility(r1)
                L84:
                    r6 = r6[r4]
                    r6.setVisibility(r1)
                    r5.handleUpdateState()
                L8c:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shade.carrier.ShadeCarrierGroupController$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
            }
        }, new ShadeCarrierGroupController$$ExternalSyntheticLambda1(this, 0 == true ? 1 : 0));
        this.mMainHandler = h;
        this.mCallback = new Callback(h);
        ShadeCarrier[] shadeCarrierArr = {(ShadeCarrier) shadeCarrierGroup.findViewById(R.id.carrier1), (ShadeCarrier) shadeCarrierGroup.findViewById(R.id.carrier2), (ShadeCarrier) shadeCarrierGroup.findViewById(R.id.carrier3)};
        View[] viewArr = {shadeCarrierGroup.findViewById(R.id.shade_carrier_divider1), shadeCarrierGroup.findViewById(R.id.shade_carrier_divider2)};
        for (int i = 0; i < 3; i++) {
            this.mInfos[i] = new CellSignalState(true, R.drawable.ic_shade_no_calling_sms, context.getText(R.string.accessibility_no_calling).toString(), "", false);
            this.mLastSignalLevel[i] = TelephonyIcons.MOBILE_CALL_STRENGTH_ICONS[0];
            this.mLastSignalLevelDescription[i] = context.getText(AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0]).toString();
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 3; i3++) {
            if (this.mInfos[i3].visible) {
                i2++;
            }
        }
        this.mIsSingleCarrier = i2 == 1;
        shadeCarrierGroup.setImportantForAccessibility(1);
        shadeCarrierGroup.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.android.systemui.shade.carrier.ShadeCarrierGroupController.2
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                ShadeCarrierGroupController.this.setListening(true);
                LatinNetworkNameProviderImpl latinNetworkNameProviderImpl = (LatinNetworkNameProviderImpl) ShadeCarrierGroupController.this.mLatinNetworkNameProvider;
                latinNetworkNameProviderImpl.getClass();
                CarrierInfraMediator.Conditions conditions = CarrierInfraMediator.Conditions.DISPLAY_CBCH50;
                int i4 = 0;
                CarrierInfraMediator carrierInfraMediator = latinNetworkNameProviderImpl.carrierInfraMediator;
                boolean isEnabled = carrierInfraMediator.isEnabled(conditions, 0, new Object[0]);
                String str = null;
                Context context2 = latinNetworkNameProviderImpl.context;
                if (isEnabled) {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.intent.action.SERVICE_STATE");
                    intentFilter.addAction("android.telephony.action.SERVICE_PROVIDERS_UPDATED");
                    intentFilter.addAction("android.location.MODE_CHANGED");
                    BroadcastDispatcher.registerReceiver$default(latinNetworkNameProviderImpl.broadcastDispatcher, latinNetworkNameProviderImpl.broadcastReceiver, intentFilter, null, null, 0, null, 60);
                    Intent registerReceiver = context2.registerReceiver(null, new IntentFilter("android.intent.action.SERVICE_STATE"));
                    LatinNetworkNameProviderImpl$broadcastReceiver$1 latinNetworkNameProviderImpl$broadcastReceiver$1 = latinNetworkNameProviderImpl.broadcastReceiver;
                    if (registerReceiver != null) {
                        latinNetworkNameProviderImpl$broadcastReceiver$1.onReceive(context2, registerReceiver);
                    }
                    Intent registerReceiver2 = context2.registerReceiver(null, new IntentFilter("android.telephony.action.SERVICE_PROVIDERS_UPDATED"));
                    if (registerReceiver2 != null) {
                        latinNetworkNameProviderImpl$broadcastReceiver$1.onReceive(context2, registerReceiver2);
                    }
                    i4 = 0;
                }
                if (carrierInfraMediator.isEnabled(conditions, i4, new Object[i4])) {
                    IntentFilter intentFilter2 = new IntentFilter();
                    intentFilter2.addAction("com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY");
                    intentFilter2.addAction("android.telephony.action.AREA_INFO_UPDATED");
                    intentFilter2.addAction("com.sec.android.app.mms.CB_CLEAR");
                    intentFilter2.addAction("android.intent.action.SIM_STATE_CHANGED");
                    BroadcastDispatcher.registerReceiver$default(latinNetworkNameProviderImpl.broadcastDispatcher, latinNetworkNameProviderImpl.broadcastReceiver, intentFilter2, null, null, 0, null, 60);
                    if (latinNetworkNameProviderImpl.cellBroadcastService == null) {
                        List<ResolveInfo> queryIntentServices = context2.getPackageManager().queryIntentServices(new Intent("android.telephony.CellBroadcastService"), PackageManager.ResolveInfoFlags.of(1048576L));
                        if (queryIntentServices.size() != 1) {
                            NestedScrollView$$ExternalSyntheticOutline0.m("getCellBroadcastServicePackageName: found ", queryIntentServices.size(), "LatinNetworkNameProvider");
                        }
                        Iterator<ResolveInfo> it = queryIntentServices.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                ServiceInfo serviceInfo = it.next().serviceInfo;
                                if (serviceInfo != null) {
                                    String str2 = serviceInfo.packageName;
                                    if (TextUtils.isEmpty(str2)) {
                                        continue;
                                    } else if (context2.getPackageManager().checkPermission("android.permission.READ_PRIVILEGED_PHONE_STATE", str2) == 0) {
                                        MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("getCellBroadcastServicePackageName: ", str2, "LatinNetworkNameProvider");
                                        str = str2;
                                        break;
                                    } else {
                                        Log.e("LatinNetworkNameProvider", "getCellBroadcastServicePackageName: " + str2 + " does not have READ_PRIVILEGED_PHONE_STATE permission");
                                    }
                                }
                            } else {
                                Log.e("LatinNetworkNameProvider", "getCellBroadcastServicePackageName: package name not found");
                                break;
                            }
                        }
                        if (str != null) {
                            Intent intent = new Intent("android.telephony.CellBroadcastService");
                            intent.setPackage(str);
                            if (!context2.bindService(intent, latinNetworkNameProviderImpl.cellBroadcastServiceConnection, 1)) {
                                Log.d("LatinNetworkNameProvider", "Unable to bind to service");
                            }
                        }
                    }
                }
                latinNetworkNameProviderImpl.dumpManager.registerDumpable(latinNetworkNameProviderImpl);
                QuickStarHelper quickStarHelper = ShadeCarrierGroupController.this.mQuickStarHelper;
                if (!quickStarHelper.mIsRegistered) {
                    ((SlimIndicatorViewMediatorImpl) quickStarHelper.mSlimIndicatorViewMediator).registerSubscriber("ShadeCarrierGroup", quickStarHelper);
                    quickStarHelper.mIsRegistered = true;
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                ShadeCarrierGroupController.this.setListening(false);
                LatinNetworkNameProviderImpl latinNetworkNameProviderImpl = (LatinNetworkNameProviderImpl) ShadeCarrierGroupController.this.mLatinNetworkNameProvider;
                latinNetworkNameProviderImpl.getClass();
                CarrierInfraMediator.Conditions conditions = CarrierInfraMediator.Conditions.DISPLAY_CBCH50;
                CarrierInfraMediator carrierInfraMediator = latinNetworkNameProviderImpl.carrierInfraMediator;
                if (carrierInfraMediator.isEnabled(conditions, 0, new Object[0])) {
                    latinNetworkNameProviderImpl.unregisterLocationListener();
                }
                if (carrierInfraMediator.isEnabled(conditions, 0, new Object[0])) {
                    latinNetworkNameProviderImpl.context.unbindService(latinNetworkNameProviderImpl.cellBroadcastServiceConnection);
                }
                QuickStarHelper quickStarHelper = ShadeCarrierGroupController.this.mQuickStarHelper;
                if (quickStarHelper.mIsRegistered) {
                    ((SlimIndicatorViewMediatorImpl) quickStarHelper.mSlimIndicatorViewMediator).unregisterSubscriber("ShadeCarrierGroup");
                    quickStarHelper.mIsRegistered = false;
                }
            }
        });
        this.mLatinNetworkNameProvider = latinNetworkNameProvider;
        ((LatinNetworkNameProviderImpl) latinNetworkNameProvider).latinNetworkNameCallback = new ShadeCarrierGroupController$$ExternalSyntheticLambda2(this);
        this.mQuickStarHelper = new QuickStarHelper(slimIndicatorViewMediator);
    }
}
