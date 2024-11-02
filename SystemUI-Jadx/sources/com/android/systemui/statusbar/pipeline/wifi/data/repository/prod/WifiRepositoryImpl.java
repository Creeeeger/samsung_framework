package com.android.systemui.statusbar.pipeline.wifi.data.repository.prod;

import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.net.wifi.WifiManager;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.log.table.DiffableKt;
import com.android.systemui.log.table.TableLogBuffer;
import com.android.systemui.statusbar.pipeline.shared.data.model.DataActivityModel;
import com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepository;
import com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl;
import com.android.systemui.statusbar.pipeline.wifi.data.repository.RealWifiRepository;
import com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository;
import com.android.systemui.statusbar.pipeline.wifi.shared.WifiInputLogger;
import com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel;
import com.samsung.android.knox.accounts.Account;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import com.samsung.android.wifi.SemWifiManager;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WifiRepositoryImpl implements RealWifiRepository {
    public final StateFlowImpl _wifiConnectivityTestReported;
    public final StateFlowImpl _wifiReceivedInetCondition;
    public final ReadonlyStateFlow hideDuringMobileSwitching;
    public final ReadonlyStateFlow isWifiDefault;
    public final ReadonlyStateFlow isWifiEnabled;
    public final ReadonlyStateFlow receivedInetCondition;
    public final ReadonlyStateFlow wifiActivity;
    public final ReadonlyStateFlow wifiConnectivityTestReported;
    public final ReadonlyStateFlow wifiConnectivityTestReportedChanged;
    public final WifiManager wifiManager;
    public final ReadonlyStateFlow wifiNetwork;
    public final SharedFlowImpl wifiNetworkChangeEvents;
    public final FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 wifiStateChangeEvents;
    public static final Companion Companion = new Companion(null);
    public static final DataActivityModel ACTIVITY_DEFAULT = new DataActivityModel(false, false);
    public static final WifiNetworkModel.Inactive WIFI_NETWORK_DEFAULT = WifiNetworkModel.Inactive.INSTANCE;
    public static final NetworkRequest WIFI_NETWORK_CALLBACK_REQUEST = new NetworkRequest.Builder().clearCapabilities().addCapability(15).addTransportType(1).addTransportType(0).build();
    public final String TAG = "WifiRepo";
    public final int EID_VSA = 221;
    public final int BAND_5_GHZ_START_FREQ = 5160;
    public final int BAND_5_GHZ_END_FREQ = 5885;
    public final int KTT_VSI_VSD_OUI = 297998080;
    public final byte KT_VSI_VSD_26 = 1;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Factory {
        public final BroadcastDispatcher broadcastDispatcher;
        public final ConnectivityManager connectivityManager;
        public final ConnectivityRepository connectivityRepository;
        public final WifiInputLogger logger;
        public final Executor mainExecutor;
        public final CoroutineScope scope;
        public final SemWifiManager semWifiManager;
        public final TableLogBuffer wifiTableLogBuffer;

        public Factory(BroadcastDispatcher broadcastDispatcher, ConnectivityManager connectivityManager, ConnectivityRepository connectivityRepository, WifiInputLogger wifiInputLogger, TableLogBuffer tableLogBuffer, Executor executor, CoroutineScope coroutineScope, SemWifiManager semWifiManager) {
            this.broadcastDispatcher = broadcastDispatcher;
            this.connectivityManager = connectivityManager;
            this.connectivityRepository = connectivityRepository;
            this.logger = wifiInputLogger;
            this.wifiTableLogBuffer = tableLogBuffer;
            this.mainExecutor = executor;
            this.scope = coroutineScope;
            this.semWifiManager = semWifiManager;
        }
    }

    public WifiRepositoryImpl(BroadcastDispatcher broadcastDispatcher, ConnectivityManager connectivityManager, ConnectivityRepository connectivityRepository, WifiInputLogger wifiInputLogger, TableLogBuffer tableLogBuffer, Executor executor, CoroutineScope coroutineScope, WifiManager wifiManager, SemWifiManager semWifiManager) {
        StateFlowImpl MutableStateFlow;
        boolean z;
        boolean z2;
        this.wifiManager = wifiManager;
        FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(BroadcastDispatcher.broadcastFlow$default(broadcastDispatcher, new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED"), null, 0, null, 14), new WifiRepositoryImpl$wifiStateChangeEvents$1(wifiInputLogger, null));
        this.wifiStateChangeEvents = flowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
        SharedFlowImpl MutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 1, null, 5);
        this.wifiNetworkChangeEvents = MutableSharedFlow$default;
        SafeFlow logDiffsForTable = DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(FlowKt.mapLatest(FlowKt.merge(MutableSharedFlow$default, flowKt__TransformKt$onEach$$inlined$unsafeTransform$1), new WifiRepositoryImpl$isWifiEnabled$1(this, null))), tableLogBuffer, "", "isEnabled", wifiManager.isWifiEnabled());
        SharingStarted.Companion companion = SharingStarted.Companion;
        this.isWifiEnabled = FlowKt.stateIn(logDiffsForTable, coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), Boolean.valueOf(wifiManager.isWifiEnabled()));
        final ReadonlyStateFlow readonlyStateFlow = ((ConnectivityRepositoryImpl) connectivityRepository).defaultConnections;
        SafeFlow logDiffsForTable2 = DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$1$2", f = "WifiRepositoryImpl.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$1$2$1, reason: invalid class name */
                /* loaded from: classes2.dex */
                public final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$1$2$1 r0 = (com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$1$2$1 r0 = new com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L53
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel r5 = (com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel) r5
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Wifi r6 = r5.wifi
                        boolean r6 = r6.isDefault
                        if (r6 != 0) goto L43
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$CarrierMerged r5 = r5.carrierMerged
                        boolean r5 = r5.isDefault
                        if (r5 == 0) goto L41
                        goto L43
                    L41:
                        r5 = 0
                        goto L44
                    L43:
                        r5 = r3
                    L44:
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L53
                        return r1
                    L53:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        }), tableLogBuffer, "", Account.IS_DEFAULT, false);
        StartedWhileSubscribed WhileSubscribed$default = SharingStarted.Companion.WhileSubscribed$default(companion);
        Boolean bool = Boolean.FALSE;
        this.isWifiDefault = FlowKt.stateIn(logDiffsForTable2, coroutineScope, WhileSubscribed$default, bool);
        if (semWifiManager.getWcmEverQualityTested() == 1) {
            MutableStateFlow = StateFlowKt.MutableStateFlow(Boolean.TRUE);
        } else {
            MutableStateFlow = StateFlowKt.MutableStateFlow(bool);
        }
        this._wifiConnectivityTestReported = MutableStateFlow;
        this._wifiReceivedInetCondition = StateFlowKt.MutableStateFlow(-1);
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        WifiRepositoryImpl$wifiNetwork$1 wifiRepositoryImpl$wifiNetwork$1 = new WifiRepositoryImpl$wifiNetwork$1(connectivityManager, wifiInputLogger, this, null);
        conflatedCallbackFlow.getClass();
        Flow distinctUntilChanged = FlowKt.distinctUntilChanged(ConflatedCallbackFlow.conflatedCallbackFlow(wifiRepositoryImpl$wifiNetwork$1));
        WifiNetworkModel.Inactive inactive = WIFI_NETWORK_DEFAULT;
        this.wifiNetwork = FlowKt.stateIn(DiffableKt.logDiffsForTable(distinctUntilChanged, tableLogBuffer, "", inactive), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), inactive);
        Flow conflatedCallbackFlow2 = ConflatedCallbackFlow.conflatedCallbackFlow(new WifiRepositoryImpl$wifiActivity$1(this, executor, wifiInputLogger, null));
        DataActivityModel dataActivityModel = ACTIVITY_DEFAULT;
        this.wifiActivity = FlowKt.stateIn(DiffableKt.logDiffsForTable(conflatedCallbackFlow2, tableLogBuffer, "wifiActivity", dataActivityModel), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), dataActivityModel);
        final Flow broadcastFlow$default = BroadcastDispatcher.broadcastFlow$default(broadcastDispatcher, new IntentFilter("com.sec.android.WIFI_ICON_HIDE_ACTION"), null, new Function2() { // from class: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$hideDuringMobileSwitching$1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return (Intent) obj;
            }
        }, 14);
        FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$12 = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(new Flow() { // from class: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$2

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$2$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$2$2", f = "WifiRepositoryImpl.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$2$2$1, reason: invalid class name */
                /* loaded from: classes2.dex */
                public final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= VideoPlayer.MEDIA_ERROR_SYSTEM;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$2$2$1 r0 = (com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$2$2$1 r0 = new com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$2$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4f
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        android.content.Intent r5 = (android.content.Intent) r5
                        java.lang.String r6 = "visible"
                        int r5 = r5.getIntExtra(r6, r3)
                        if (r5 != 0) goto L3f
                        r5 = r3
                        goto L40
                    L3f:
                        r5 = 0
                    L40:
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L4f
                        return r1
                    L4f:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        }, new WifiRepositoryImpl$hideDuringMobileSwitching$3(wifiInputLogger, null));
        StartedWhileSubscribed WhileSubscribed$default2 = SharingStarted.Companion.WhileSubscribed$default(companion);
        if (semWifiManager.getWifiIconVisibility() == 0) {
            z = true;
        } else {
            z = false;
        }
        this.hideDuringMobileSwitching = FlowKt.stateIn(flowKt__TransformKt$onEach$$inlined$unsafeTransform$12, coroutineScope, WhileSubscribed$default2, Boolean.valueOf(z));
        FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$13 = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(BroadcastDispatcher.broadcastFlow$default(broadcastDispatcher, new IntentFilter("com.sec.android.WIFI_CONNECTIVITY_ACTION"), null, new Function2() { // from class: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$wifiConnectivityTestReportedChanged$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                StateFlowImpl stateFlowImpl = WifiRepositoryImpl.this._wifiConnectivityTestReported;
                Boolean bool2 = Boolean.TRUE;
                stateFlowImpl.setValue(bool2);
                return bool2;
            }
        }, 14), new WifiRepositoryImpl$wifiConnectivityTestReportedChanged$2(wifiInputLogger, null));
        StartedWhileSubscribed WhileSubscribed$default3 = SharingStarted.Companion.WhileSubscribed$default(companion);
        if (semWifiManager.getWcmEverQualityTested() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        ReadonlyStateFlow stateIn = FlowKt.stateIn(flowKt__TransformKt$onEach$$inlined$unsafeTransform$13, coroutineScope, WhileSubscribed$default3, Boolean.valueOf(z2));
        this.wifiConnectivityTestReportedChanged = stateIn;
        this.wifiConnectivityTestReported = FlowKt.stateIn(DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(FlowKt.merge(stateIn, MutableStateFlow)), tableLogBuffer, "", "testReported", false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), Boolean.valueOf(semWifiManager.getWcmEverQualityTested() == 1));
        this.receivedInetCondition = FlowKt.stateIn(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(BroadcastDispatcher.broadcastFlow$default(broadcastDispatcher, new IntentFilter("com.sec.android.WIFI_CONNECTIVITY_ACTION"), null, new Function2() { // from class: com.android.systemui.statusbar.pipeline.wifi.data.repository.prod.WifiRepositoryImpl$receivedInetCondition$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int intExtra = ((Intent) obj).getIntExtra("valid", -1);
                WifiRepositoryImpl.this._wifiReceivedInetCondition.setValue(Integer.valueOf(intExtra));
                return Integer.valueOf(intExtra);
            }
        }, 14), new WifiRepositoryImpl$receivedInetCondition$2(wifiInputLogger, null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), -1);
    }

    @Override // com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository
    public final StateFlow getHideDuringMobileSwitching() {
        return this.hideDuringMobileSwitching;
    }

    @Override // com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository
    public final StateFlow getReceivedInetCondition() {
        return this.receivedInetCondition;
    }

    @Override // com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository
    public final StateFlow getWifiActivity() {
        return this.wifiActivity;
    }

    @Override // com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository
    public final StateFlow getWifiConnectivityTestReported() {
        return this.wifiConnectivityTestReported;
    }

    @Override // com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository
    public final StateFlow getWifiNetwork() {
        return this.wifiNetwork;
    }

    @Override // com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository
    public final boolean isWifiConnectedWithValidSsid() {
        return WifiRepository.DefaultImpls.isWifiConnectedWithValidSsid(this);
    }

    @Override // com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository
    public final StateFlow isWifiDefault() {
        return this.isWifiDefault;
    }

    @Override // com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository
    public final StateFlow isWifiEnabled() {
        return this.isWifiEnabled;
    }
}
