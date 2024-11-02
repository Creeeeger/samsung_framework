package com.android.systemui.statusbar.pipeline.mobile.domain.interactor;

import android.content.Context;
import android.os.Handler;
import androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0;
import com.android.settingslib.AccessibilityContentDescriptions;
import com.android.settingslib.SignalIcon$MobileIconGroup;
import com.android.settingslib.mobile.MobileIconCarrierIdOverrides;
import com.android.settingslib.mobile.MobileIconCarrierIdOverridesImpl;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.log.table.DiffableKt;
import com.android.systemui.log.table.TableLogBuffer;
import com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator;
import com.android.systemui.statusbar.pipeline.mobile.data.repository.MobileConnectionRepository;
import com.android.systemui.statusbar.pipeline.mobile.data.repository.UserSetupRepository;
import com.android.systemui.statusbar.pipeline.mobile.data.repository.UserSetupRepositoryImpl;
import com.android.systemui.statusbar.pipeline.mobile.domain.model.NetworkTypeIconModel;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.DisabledDataIconModel;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.DisabledDataIconModelKt;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.SignalIconModel;
import com.android.systemui.statusbar.pipeline.mobile.ui.util.MobileSignalIconResource;
import com.android.systemui.statusbar.pipeline.mobile.util.MobileMappingsProxy;
import com.android.systemui.statusbar.pipeline.wifi.data.repository.WifiRepository;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileIconInteractorImpl implements MobileIconInteractor {
    public final StateFlow activeDataSubId;
    public final StateFlow activity;
    public final StateFlow alwaysShowDataRatIcon;
    public final Handler bgHandler;
    public final boolean bootstrapProfile;
    public final ReadonlyStateFlow carrierIdIconOverrideExists;
    public final CarrierInfraMediator carrierInfraMediator;
    public final StateFlow carrierNetworkChangeActive;
    public final MobileIconInteractorImpl$special$$inlined$combine$4 cellularIcon;
    public final FakeMobileConnectionRepository connectionRepository;
    public final ReadonlyStateFlow contentDescription;
    public final MobileDataIconResource dataIconResource;
    public final ReadonlyStateFlow defaultNetworkType;
    public final ReadonlyStateFlow disabledActivityIcon;
    public final ReadonlyStateFlow disabledDataIcon;
    public final MobileDisabledDataIconResource disabledDataIconResource;
    public final ReadonlyStateFlow femtoCellIndicatorId;
    public final ReadonlyStateFlow icon;
    public final ReadonlyStateFlow isDataConnected;
    public final StateFlow isDataEnabled;
    public final boolean isDummySubId;
    public final Flow isForceHidden;
    public final StateFlow isInService;
    public final ReadonlyStateFlow isNonTerrestrial;
    public final ReadonlyStateFlow isRoaming;
    public final ReadonlyStateFlow isSim1On;
    public final ReadonlyStateFlow isSimOff;
    public final ReadonlyStateFlow isUserSetup;
    public final ReadonlyStateFlow isVoWifiConnected;
    public final ReadonlyStateFlow level;
    public final StateFlow mobileIsDefault;
    public final StateFlow mobileServiceState;
    public final MobileSignalTransitionManager mobileSignalTransition;
    public final ReadonlyStateFlow networkTypeIconGroup;
    public final ReadonlyStateFlow numberOfLevels;
    public final ReadonlyStateFlow otherSlotInCallState;
    public final MobileRoamingIconResource roamingIconResource;
    public final ReadonlyStateFlow roamingId;
    public final MobileIconInteractorImpl$special$$inlined$map$4 satelliteIcon;
    public final ReadonlyStateFlow shouldShowDisabledDataIcon;
    public final ReadonlyStateFlow showExclamationMark;
    public final ReadonlyStateFlow shownLevel;
    public final MobileSignalIconResource signalIconResource;
    public final ReadonlyStateFlow signalLevelUpdate;
    public final int slotId;
    public final TableLogBuffer tableLogBuffer;
    public final ReadonlyStateFlow updateSignalTransition;
    public final FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 updatedMobileIconMapping;
    public final ReadonlyStateFlow voiceNoServiceIcon;
    public final MobileIconInteractorImpl$special$$inlined$map$3 wifiConnected;

    /* JADX WARN: Type inference failed for: r2v18, types: [com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4] */
    /* JADX WARN: Type inference failed for: r3v32, types: [com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$4] */
    /* JADX WARN: Type inference failed for: r8v33, types: [kotlinx.coroutines.flow.Flow, com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3] */
    public MobileIconInteractorImpl(CoroutineScope coroutineScope, StateFlow stateFlow, StateFlow stateFlow2, StateFlow stateFlow3, StateFlow stateFlow4, StateFlow stateFlow5, Flow flow, StateFlow stateFlow6, StateFlow stateFlow7, StateFlow stateFlow8, Flow flow2, MobileConnectionRepository mobileConnectionRepository, Context context, UserSetupRepository userSetupRepository, WifiRepository wifiRepository, MobileDataIconResource mobileDataIconResource, MobileSignalIconResource mobileSignalIconResource, MobileRoamingIconResource mobileRoamingIconResource, MobileDisabledDataIconResource mobileDisabledDataIconResource, CarrierInfraMediator carrierInfraMediator, MobileMappingsProxy mobileMappingsProxy, SettingsHelper settingsHelper, StateFlow stateFlow9, boolean z, Handler handler, MobileIconCarrierIdOverrides mobileIconCarrierIdOverrides) {
        Flow asStateFlow;
        this.alwaysShowDataRatIcon = stateFlow2;
        this.mobileIsDefault = stateFlow4;
        this.activeDataSubId = stateFlow5;
        this.isForceHidden = flow2;
        this.dataIconResource = mobileDataIconResource;
        this.signalIconResource = mobileSignalIconResource;
        this.roamingIconResource = mobileRoamingIconResource;
        this.disabledDataIconResource = mobileDisabledDataIconResource;
        this.carrierInfraMediator = carrierInfraMediator;
        this.bootstrapProfile = z;
        this.bgHandler = handler;
        FakeMobileConnectionRepository fakeMobileConnectionRepository = new FakeMobileConnectionRepository(mobileConnectionRepository, mobileMappingsProxy);
        this.connectionRepository = fakeMobileConnectionRepository;
        int i = fakeMobileConnectionRepository.slotId;
        this.slotId = i;
        TableLogBuffer tableLogBuffer = fakeMobileConnectionRepository.tableLogBuffer;
        this.tableLogBuffer = tableLogBuffer;
        this.activity = fakeMobileConnectionRepository.dataActivityDirection;
        this.isDataEnabled = fakeMobileConnectionRepository.dataEnabled;
        StateFlow stateFlow10 = fakeMobileConnectionRepository.isInService;
        this.isInService = stateFlow10;
        StateFlow stateFlow11 = fakeMobileConnectionRepository.carrierNetworkChangeActive;
        this.carrierNetworkChangeActive = stateFlow11;
        Flow distinctUntilChanged = FlowKt.distinctUntilChanged(FlowKt.combine(fakeMobileConnectionRepository.carrierId, fakeMobileConnectionRepository.resolvedNetworkType, fakeMobileConnectionRepository.mobileServiceState, new MobileIconInteractorImpl$carrierIdIconOverrideExists$1(this, null)));
        SharingStarted.Companion companion = SharingStarted.Companion;
        StartedWhileSubscribed WhileSubscribed$default = SharingStarted.Companion.WhileSubscribed$default(companion);
        Boolean bool = Boolean.FALSE;
        ReadonlyStateFlow stateIn = FlowKt.stateIn(distinctUntilChanged, coroutineScope, WhileSubscribed$default, bool);
        this.carrierIdIconOverrideExists = stateIn;
        MobileIconInteractorImpl$networkName$1 mobileIconInteractorImpl$networkName$1 = new MobileIconInteractorImpl$networkName$1(null);
        StateFlow stateFlow12 = fakeMobileConnectionRepository.operatorAlphaShort;
        StateFlow stateFlow13 = fakeMobileConnectionRepository.networkName;
        FlowKt.stateIn(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(stateFlow12, stateFlow13, mobileIconInteractorImpl$networkName$1), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), stateFlow13.getValue());
        this.mobileSignalTransition = new MobileSignalTransitionManager();
        ReadonlyStateFlow stateIn2 = FlowKt.stateIn(FlowKt.combine(fakeMobileConnectionRepository.carrierNetworkChangeActive, fakeMobileConnectionRepository.isGsm, fakeMobileConnectionRepository.isRoaming, fakeMobileConnectionRepository.cdmaRoaming, fakeMobileConnectionRepository.swRoaming, new MobileIconInteractorImpl$isRoaming$1(null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.isRoaming = stateIn2;
        final StateFlow stateFlow14 = fakeMobileConnectionRepository.mobileServiceState;
        this.mobileServiceState = stateFlow14;
        this.roamingId = FlowKt.stateIn(FlowKt.combine(stateFlow10, stateIn2, stateFlow14, fakeMobileConnectionRepository.swRoaming, new MobileIconInteractorImpl$roamingId$1(this, null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), 0);
        MobileIconInteractorImpl$updatedMobileIconMapping$1 mobileIconInteractorImpl$updatedMobileIconMapping$1 = new MobileIconInteractorImpl$updatedMobileIconMapping$1(this, null);
        final StateFlow stateFlow15 = fakeMobileConnectionRepository.simCardInfo;
        FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(flow, stateFlow15, mobileIconInteractorImpl$updatedMobileIconMapping$1), new MobileIconInteractorImpl$updatedMobileIconMapping$2(this, null));
        this.updatedMobileIconMapping = flowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
        final Flow[] flowArr = {fakeMobileConnectionRepository.resolvedNetworkType, flowKt__TransformKt$onEach$$inlined$unsafeTransform$1, stateFlow7, fakeMobileConnectionRepository.simCardInfo, fakeMobileConnectionRepository.onTheCall, stateIn2, stateFlow14};
        ReadonlyStateFlow stateIn3 = FlowKt.stateIn(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$1$3", f = "MobileIconInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_removeFavoriteApp}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$1$3, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass3 extends SuspendLambda implements Function3 {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;
                final /* synthetic */ MobileIconInteractorImpl this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, MobileIconInteractorImpl mobileIconInteractorImpl) {
                    super(3, continuation);
                    this.this$0 = mobileIconInteractorImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.this$0);
                    anonymousClass3.L$0 = (FlowCollector) obj;
                    anonymousClass3.L$1 = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code restructure failed: missing block: B:29:0x00c2, code lost:
                
                    if (r5 == false) goto L30;
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r20) {
                    /*
                        Method dump skipped, instructions count: 708
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$1.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object combineInternal = CombineKt.combineInternal(flowArr2, new Function0() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, continuation);
                if (combineInternal == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return combineInternal;
                }
                return Unit.INSTANCE;
            }
        }, coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), stateFlow7.getValue());
        this.defaultNetworkType = stateIn3;
        ReadonlyStateFlow stateIn4 = FlowKt.stateIn(DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(stateIn3, stateIn, new MobileIconInteractorImpl$networkTypeIconGroup$1(this, null))), tableLogBuffer, "Intr", new NetworkTypeIconModel.DefaultIcon((SignalIcon$MobileIconGroup) stateFlow7.getValue())), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), new NetworkTypeIconModel.DefaultIcon((SignalIcon$MobileIconGroup) stateFlow7.getValue()));
        this.networkTypeIconGroup = stateIn4;
        if (carrierInfraMediator.isEnabled(CarrierInfraMediator.Conditions.SUPPORT_CARRIER_ENABLED_SATELLITE, i, new Object[0])) {
            asStateFlow = fakeMobileConnectionRepository.isNonTerrestrial;
        } else {
            asStateFlow = FlowKt.asStateFlow(StateFlowKt.MutableStateFlow(bool));
        }
        ReadonlyStateFlow stateIn5 = FlowKt.stateIn(DiffableKt.logDiffsForTable(asStateFlow, tableLogBuffer, "Intr", "isNonTerrestrial", false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.isNonTerrestrial = stateIn5;
        StateFlow stateFlow16 = fakeMobileConnectionRepository.isEmergencyOnly;
        ReadonlyStateFlow stateIn6 = FlowKt.stateIn(FlowKt.combine(fakeMobileConnectionRepository.isGsm, fakeMobileConnectionRepository.primaryLevel, fakeMobileConnectionRepository.cdmaLevel, stateFlow3, new MobileIconInteractorImpl$level$1(null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), 0);
        this.level = stateIn6;
        StartedWhileSubscribed WhileSubscribed$default2 = SharingStarted.Companion.WhileSubscribed$default(companion);
        StateFlow stateFlow17 = fakeMobileConnectionRepository.numberOfLevels;
        ReadonlyStateFlow stateIn7 = FlowKt.stateIn(stateFlow17, coroutineScope, WhileSubscribed$default2, stateFlow17.getValue());
        this.numberOfLevels = stateIn7;
        final StateFlow stateFlow18 = fakeMobileConnectionRepository.dataConnectionState;
        ReadonlyStateFlow stateIn8 = FlowKt.stateIn(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$1$2", f = "MobileIconInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$1$2$1, reason: invalid class name */
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
                        boolean r0 = r6 instanceof com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$1$2$1 r0 = (com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$1$2$1 r0 = new com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4a
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        com.android.systemui.statusbar.pipeline.mobile.data.model.DataConnectionState r5 = (com.android.systemui.statusbar.pipeline.mobile.data.model.DataConnectionState) r5
                        com.android.systemui.statusbar.pipeline.mobile.data.model.DataConnectionState r6 = com.android.systemui.statusbar.pipeline.mobile.data.model.DataConnectionState.Connected
                        if (r5 != r6) goto L3a
                        r5 = r3
                        goto L3b
                    L3a:
                        r5 = 0
                    L3b:
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L4a
                        return r1
                    L4a:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }, coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.isDataConnected = stateIn8;
        this.isSimOff = FlowKt.stateIn(DiffableKt.logDiffsForTable(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$2

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$2$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$2$2", f = "MobileIconInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$2$2$1, reason: invalid class name */
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
                        boolean r0 = r6 instanceof com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$2$2$1 r0 = (com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$2$2$1 r0 = new com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$2$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4c
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        com.android.systemui.statusbar.pipeline.mobile.data.model.SimCardModel r5 = (com.android.systemui.statusbar.pipeline.mobile.data.model.SimCardModel) r5
                        com.android.systemui.statusbar.pipeline.mobile.data.model.SimType r5 = r5.simType
                        com.android.systemui.statusbar.pipeline.mobile.data.model.SimType r6 = com.android.systemui.statusbar.pipeline.mobile.data.model.SimType.OFF
                        if (r5 != r6) goto L3c
                        r5 = r3
                        goto L3d
                    L3c:
                        r5 = 0
                    L3d:
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L4c
                        return r1
                    L4c:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }, tableLogBuffer, "Intr", LocaleListCompatWrapper$$ExternalSyntheticOutline0.m("(", i, ")isSimOff"), false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.isSim1On = FlowKt.stateIn(DiffableKt.logDiffsForTable((Flow) fakeMobileConnectionRepository.sim1On, tableLogBuffer, "Intr", "isSim1On", false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.isDummySubId = fakeMobileConnectionRepository.subId == Integer.MAX_VALUE;
        ReadonlyStateFlow stateIn9 = FlowKt.stateIn(FlowKt.combine(stateFlow, stateFlow8, stateFlow10, new MobileIconInteractorImpl$showExclamationMark$1(null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), Boolean.TRUE);
        this.showExclamationMark = stateIn9;
        ReadonlyStateFlow stateIn10 = FlowKt.stateIn(FlowKt.combine(stateFlow10, stateIn6, stateIn7, new MobileIconInteractorImpl$updateSignalTransition$1(this, null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), Unit.INSTANCE);
        this.updateSignalTransition = stateIn10;
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        MobileIconInteractorImpl$signalLevelUpdate$1 mobileIconInteractorImpl$signalLevelUpdate$1 = new MobileIconInteractorImpl$signalLevelUpdate$1(this, null);
        conflatedCallbackFlow.getClass();
        ReadonlyStateFlow stateIn11 = FlowKt.stateIn(ConflatedCallbackFlow.conflatedCallbackFlow(mobileIconInteractorImpl$signalLevelUpdate$1), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), 0);
        this.signalLevelUpdate = stateIn11;
        final ReadonlyStateFlow stateIn12 = FlowKt.stateIn(FlowKt.combine(stateIn6, stateFlow10, stateFlow16, stateIn5, new MobileIconInteractorImpl$shownLevel$1(this, null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), 0);
        this.shownLevel = stateIn12;
        this.contentDescription = FlowKt.stateIn(FlowKt.distinctUntilChanged(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(stateIn12, stateIn7, new MobileIconInteractorImpl$contentDescription$1(this, null))), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), new ContentDescription.Resource(AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0]));
        ReadonlyStateFlow readonlyStateFlow = ((UserSetupRepositoryImpl) userSetupRepository).isUserSetupFlow;
        this.isUserSetup = readonlyStateFlow;
        final StateFlow wifiNetwork = wifiRepository.getWifiNetwork();
        ?? r8 = new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3$2", f = "MobileIconInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3$2$1, reason: invalid class name */
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
                        boolean r0 = r6 instanceof com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3$2$1 r0 = (com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3$2$1 r0 = new com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L45
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel r5 = (com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel) r5
                        boolean r5 = r5 instanceof com.android.systemui.statusbar.pipeline.wifi.shared.model.WifiNetworkModel.Active
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L45
                        return r1
                    L45:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$3.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        };
        this.wifiConnected = r8;
        ReadonlyStateFlow stateIn13 = FlowKt.stateIn(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(fakeMobileConnectionRepository.imsRegState, stateFlow14, new MobileIconInteractorImpl$isVoWifiConnected$1(null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.isVoWifiConnected = stateIn13;
        final Flow[] flowArr2 = {stateIn8, stateFlow4, stateFlow10, stateFlow16, readonlyStateFlow, r8, stateFlow5, stateIn13};
        ReadonlyStateFlow stateIn14 = FlowKt.stateIn(DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$2

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$2$3", f = "MobileIconInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_removeFavoriteApp}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$2$3, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass3 extends SuspendLambda implements Function3 {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;
                final /* synthetic */ MobileIconInteractorImpl this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, MobileIconInteractorImpl mobileIconInteractorImpl) {
                    super(3, continuation);
                    this.this$0 = mobileIconInteractorImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.this$0);
                    anonymousClass3.L$0 = (FlowCollector) obj;
                    anonymousClass3.L$1 = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code restructure failed: missing block: B:28:0x00bd, code lost:
                
                    if (r11 == false) goto L39;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:29:0x00e3, code lost:
                
                    r5 = true;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:35:0x00de, code lost:
                
                    if (r12.intValue() == r16.this$0.connectionRepository.subId) goto L39;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:36:0x00e1, code lost:
                
                    if (r9 == false) goto L39;
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r17) {
                    /*
                        Method dump skipped, instructions count: 245
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$2.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr3 = flowArr2;
                Object combineInternal = CombineKt.combineInternal(flowArr3, new Function0() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$2.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return new Object[flowArr3.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, continuation);
                if (combineInternal == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return combineInternal;
                }
                return Unit.INSTANCE;
            }
        }), tableLogBuffer, "Intr", "showDisabledData", false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.shouldShowDisabledDataIcon = stateIn14;
        ReadonlyStateFlow stateIn15 = FlowKt.stateIn(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(fakeMobileConnectionRepository.onTheCall, stateFlow9, new MobileIconInteractorImpl$otherSlotInCallState$1(this, null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.otherSlotInCallState = stateIn15;
        final Flow[] flowArr3 = {stateIn14, stateIn4, stateFlow10, stateIn2, stateIn15, stateFlow14};
        Flow distinctUntilChanged2 = FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$3

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$3$3", f = "MobileIconInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_removeFavoriteApp}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$3$3, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass3 extends SuspendLambda implements Function3 {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;
                final /* synthetic */ MobileIconInteractorImpl this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, MobileIconInteractorImpl mobileIconInteractorImpl) {
                    super(3, continuation);
                    this.this$0 = mobileIconInteractorImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.this$0);
                    anonymousClass3.L$0 = (FlowCollector) obj;
                    anonymousClass3.L$1 = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
                
                    if (r4 == false) goto L30;
                 */
                /* JADX WARN: Removed duplicated region for block: B:30:0x009e  */
                /* JADX WARN: Removed duplicated region for block: B:41:0x00cf  */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r14) {
                    /*
                        Method dump skipped, instructions count: 1033
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$3.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr4 = flowArr3;
                Object combineInternal = CombineKt.combineInternal(flowArr4, new Function0() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$3.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return new Object[flowArr4.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, continuation);
                if (combineInternal == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return combineInternal;
                }
                return Unit.INSTANCE;
            }
        });
        DisabledDataIconModel disabledDataIconModel = DisabledDataIconModelKt.EMPTY_DISABLED_DATA_ICON;
        this.disabledDataIcon = FlowKt.stateIn(DiffableKt.logDiffsForTable(distinctUntilChanged2, tableLogBuffer, "Intr", disabledDataIconModel), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), disabledDataIconModel);
        this.disabledActivityIcon = FlowKt.stateIn(DiffableKt.logDiffsForTable(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(stateIn14, fakeMobileConnectionRepository.mobileDataEnabledChanged, new MobileIconInteractorImpl$disabledActivityIcon$1(this, null)), tableLogBuffer, "Intr", "disabledActivityIcon", 0), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), 0);
        final Flow[] flowArr4 = {stateIn12, stateIn7, stateIn9, stateFlow10, stateFlow16, stateIn14, stateFlow14, fakeMobileConnectionRepository.imsRegState, stateIn10, stateIn11};
        this.cellularIcon = new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$4

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$4$3", f = "MobileIconInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_removeFavoriteApp}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$4$3, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass3 extends SuspendLambda implements Function3 {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;
                final /* synthetic */ MobileIconInteractorImpl this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, MobileIconInteractorImpl mobileIconInteractorImpl) {
                    super(3, continuation);
                    this.this$0 = mobileIconInteractorImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.this$0);
                    anonymousClass3.L$0 = (FlowCollector) obj;
                    anonymousClass3.L$1 = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code restructure failed: missing block: B:60:0x0188, code lost:
                
                    if (r13.voWifiRegState != false) goto L60;
                 */
                /* JADX WARN: Removed duplicated region for block: B:18:0x01b0 A[RETURN] */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r19) {
                    /*
                        Method dump skipped, instructions count: 436
                        To view this dump change 'Code comments level' option to 'DEBUG'
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$4.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr5 = flowArr4;
                Object combineInternal = CombineKt.combineInternal(flowArr5, new Function0() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$combine$4.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return new Object[flowArr5.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, continuation);
                if (combineInternal == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return combineInternal;
                }
                return Unit.INSTANCE;
            }
        };
        this.satelliteIcon = new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4$2", f = "MobileIconInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4$2$1, reason: invalid class name */
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
                        boolean r0 = r6 instanceof com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4$2$1 r0 = (com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4$2$1 r0 = new com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L5b
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        java.lang.Number r5 = (java.lang.Number) r5
                        int r5 = r5.intValue()
                        com.android.systemui.statusbar.pipeline.mobile.ui.model.SignalIconModel$Satellite r6 = new com.android.systemui.statusbar.pipeline.mobile.ui.model.SignalIconModel$Satellite
                        com.android.systemui.statusbar.pipeline.satellite.ui.model.SatelliteIconModel r2 = com.android.systemui.statusbar.pipeline.satellite.ui.model.SatelliteIconModel.INSTANCE
                        r2.getClass()
                        com.android.systemui.common.shared.model.Icon$Resource r2 = com.android.systemui.statusbar.pipeline.satellite.ui.model.SatelliteIconModel.fromSignalStrength(r5)
                        if (r2 != 0) goto L4d
                        r2 = 0
                        com.android.systemui.common.shared.model.Icon$Resource r2 = com.android.systemui.statusbar.pipeline.satellite.ui.model.SatelliteIconModel.fromSignalStrength(r2)
                        kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
                    L4d:
                        r6.<init>(r5, r2)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r6, r0)
                        if (r4 != r1) goto L5b
                        return r1
                    L5b:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$4.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        };
        SignalIconModel.Cellular cellular = new SignalIconModel.Cellular(((Number) stateIn12.getValue()).intValue(), ((Number) stateIn7.getValue()).intValue(), ((Boolean) stateIn9.getValue()).booleanValue(), ((Boolean) stateFlow11.getValue()).booleanValue(), 0, 16, null);
        this.icon = FlowKt.stateIn(DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(FlowKt.transformLatest(stateIn5, new MobileIconInteractorImpl$icon$lambda$9$$inlined$flatMapLatest$1(null, this))), tableLogBuffer, "icon", cellular), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), cellular);
        this.voiceNoServiceIcon = FlowKt.stateIn(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$5

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$5$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ MobileIconInteractorImpl this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$5$2", f = "MobileIconInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$5$2$1, reason: invalid class name */
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

                public AnonymousClass2(FlowCollector flowCollector, MobileIconInteractorImpl mobileIconInteractorImpl) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = mobileIconInteractorImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.Continuation r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$5.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$5$2$1 r0 = (com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$5.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$5$2$1 r0 = new com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$5$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r9)
                        goto L73
                    L27:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r9)
                        com.android.systemui.statusbar.pipeline.mobile.data.model.MobileServiceState r8 = (com.android.systemui.statusbar.pipeline.mobile.data.model.MobileServiceState) r8
                        com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl r9 = r7.this$0
                        com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator r2 = r9.carrierInfraMediator
                        com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator$Conditions r4 = com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator.Conditions.USE_VOICE_NO_SERVICE_ICON
                        r5 = 0
                        java.lang.Object[] r6 = new java.lang.Object[r5]
                        boolean r2 = r2.isEnabled(r4, r5, r6)
                        if (r2 == 0) goto L63
                        boolean r2 = r8.vioceCallAvailable
                        if (r2 != 0) goto L4d
                        int r8 = r8.dataRegState
                        if (r8 != 0) goto L4d
                        r8 = r3
                        goto L4e
                    L4d:
                        r8 = r5
                    L4e:
                        if (r8 == 0) goto L63
                        com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator r8 = r9.carrierInfraMediator
                        com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator$Conditions r9 = com.android.systemui.statusbar.pipeline.carrier.CarrierInfraMediator.Conditions.IS_VOICE_CAPABLE
                        java.lang.Object[] r2 = new java.lang.Object[r5]
                        boolean r8 = r8.isEnabled(r9, r5, r2)
                        if (r8 == 0) goto L63
                        com.android.systemui.statusbar.pipeline.mobile.ui.util.SamsungMobileIcons$Companion r8 = com.android.systemui.statusbar.pipeline.mobile.ui.util.SamsungMobileIcons.Companion
                        r8.getClass()
                        int r5 = com.android.systemui.statusbar.pipeline.mobile.ui.util.SamsungMobileIcons.VOICE_NO_SERVICE
                    L63:
                        java.lang.Integer r8 = new java.lang.Integer
                        r8.<init>(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r7 = r7.$this_unsafeFlow
                        java.lang.Object r7 = r7.emit(r8, r0)
                        if (r7 != r1) goto L73
                        return r1
                    L73:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl$special$$inlined$map$5.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, this), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        }, coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), 0);
        this.femtoCellIndicatorId = FlowKt.stateIn(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(stateFlow10, stateFlow14, new MobileIconInteractorImpl$femtoCellIndicatorId$1(this, null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), 0);
    }

    public /* synthetic */ MobileIconInteractorImpl(CoroutineScope coroutineScope, StateFlow stateFlow, StateFlow stateFlow2, StateFlow stateFlow3, StateFlow stateFlow4, StateFlow stateFlow5, Flow flow, StateFlow stateFlow6, StateFlow stateFlow7, StateFlow stateFlow8, Flow flow2, MobileConnectionRepository mobileConnectionRepository, Context context, UserSetupRepository userSetupRepository, WifiRepository wifiRepository, MobileDataIconResource mobileDataIconResource, MobileSignalIconResource mobileSignalIconResource, MobileRoamingIconResource mobileRoamingIconResource, MobileDisabledDataIconResource mobileDisabledDataIconResource, CarrierInfraMediator carrierInfraMediator, MobileMappingsProxy mobileMappingsProxy, SettingsHelper settingsHelper, StateFlow stateFlow9, boolean z, Handler handler, MobileIconCarrierIdOverrides mobileIconCarrierIdOverrides, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineScope, stateFlow, stateFlow2, stateFlow3, stateFlow4, stateFlow5, flow, stateFlow6, stateFlow7, stateFlow8, flow2, mobileConnectionRepository, context, userSetupRepository, wifiRepository, mobileDataIconResource, mobileSignalIconResource, mobileRoamingIconResource, mobileDisabledDataIconResource, carrierInfraMediator, mobileMappingsProxy, settingsHelper, stateFlow9, z, handler, (i & QuickStepContract.SYSUI_STATE_GAME_TOOLS_SHOWING) != 0 ? new MobileIconCarrierIdOverridesImpl() : mobileIconCarrierIdOverrides);
    }
}
