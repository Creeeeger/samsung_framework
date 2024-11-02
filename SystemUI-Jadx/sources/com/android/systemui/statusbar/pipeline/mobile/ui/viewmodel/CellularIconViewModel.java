package com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.telephony.SubscriptionManager;
import android.view.View;
import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.log.table.DiffableKt;
import com.android.systemui.log.table.TableLogBuffer;
import com.android.systemui.statusbar.phone.DoubleShadowStatusBarIconDrawable;
import com.android.systemui.statusbar.pipeline.airplane.domain.interactor.AirplaneModeInteractor;
import com.android.systemui.statusbar.pipeline.mobile.data.model.MobileServiceState;
import com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractor;
import com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconInteractorImpl;
import com.android.systemui.statusbar.pipeline.mobile.domain.model.NetworkTypeIconModel;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.DeXStatusBarIconModel;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.DeXStatusBarIconModelKt;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.SignalIconModel;
import com.android.systemui.statusbar.pipeline.mobile.ui.model.SignalIconModelKt;
import com.android.systemui.statusbar.pipeline.shared.ConnectivityConstants;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import com.samsung.android.desktopsystemui.sharedlib.common.DesktopSystemUiBinder;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt__MathJVMKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.internal.CombineKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CellularIconViewModel implements MobileIconViewModelCommon {
    public final StateFlow activity;
    public final ReadonlyStateFlow activityContainerVisible;
    public final ReadonlyStateFlow activityIcon;
    public final ReadonlyStateFlow activityInVisible;
    public final ReadonlyStateFlow activityOutVisible;
    public final ReadonlyStateFlow anyChanges;
    public final ReadonlyStateFlow contentDescription;
    public boolean dataServiceAcquired;
    public final DesktopManager desktopManager;
    public final Flow dexStatusBarIcon;
    public final ReadonlyStateFlow icon;
    public final ReadonlyStateFlow isVisible;
    public final ReadonlyStateFlow networkTypeIcon;
    public final ReadonlyStateFlow roaming;
    public final ReadonlyStateFlow roamingIcon;
    public final ReadonlyStateFlow showNetworkTypeIcon;
    public final MobileSimpleLogger simpleLogger;
    public final int slotId;
    public final int subscriptionId;
    public final ReadonlyStateFlow updateDeXStatusBarIconModel;
    public final ReadonlyStateFlow voiceNoServiceIcon;
    public boolean voiceServiceAcquired;

    public CellularIconViewModel(int i, MobileIconInteractor mobileIconInteractor, AirplaneModeInteractor airplaneModeInteractor, ConnectivityConstants connectivityConstants, CoroutineScope coroutineScope, DesktopManager desktopManager, String str) {
        int slotIndex;
        Flow combine;
        this.subscriptionId = i;
        this.desktopManager = desktopManager;
        if (i == Integer.MAX_VALUE) {
            slotIndex = 0;
        } else {
            slotIndex = SubscriptionManager.getSlotIndex(i);
        }
        this.slotId = slotIndex;
        MobileIconInteractorImpl mobileIconInteractorImpl = (MobileIconInteractorImpl) mobileIconInteractor;
        StateFlow stateFlow = mobileIconInteractorImpl.isInService;
        boolean booleanValue = ((Boolean) stateFlow.getValue()).booleanValue();
        ReadonlyStateFlow readonlyStateFlow = mobileIconInteractorImpl.isDataConnected;
        boolean booleanValue2 = ((Boolean) readonlyStateFlow.getValue()).booleanValue();
        ReadonlyStateFlow readonlyStateFlow2 = mobileIconInteractorImpl.networkTypeIconGroup;
        NetworkTypeIconModel networkTypeIconModel = (NetworkTypeIconModel) readonlyStateFlow2.getValue();
        StateFlow stateFlow2 = mobileIconInteractorImpl.mobileServiceState;
        MobileSimpleLogger mobileSimpleLogger = new MobileSimpleLogger(slotIndex, i, str, booleanValue, booleanValue2, networkTypeIconModel, ((MobileServiceState) stateFlow2.getValue()).telephonyDisplayInfo.getNetworkType(), ((MobileServiceState) stateFlow2.getValue()).telephonyDisplayInfo.getOverrideNetworkType(), ((MobileServiceState) stateFlow2.getValue()).telephonyDisplayInfo.is5gAvailable(), ((MobileServiceState) stateFlow2.getValue()).simCardInfo.simType.toString());
        this.simpleLogger = mobileSimpleLogger;
        if (!connectivityConstants.hasDataCapabilities) {
            combine = new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(Boolean.FALSE);
        } else {
            combine = FlowKt.combine(airplaneModeInteractor.isAirplaneMode, mobileIconInteractorImpl.isForceHidden, mobileIconInteractorImpl.isSimOff, mobileIconInteractorImpl.isSim1On, new CellularIconViewModel$isVisible$1(this, null));
        }
        Flow distinctUntilChanged = FlowKt.distinctUntilChanged(combine);
        TableLogBuffer tableLogBuffer = mobileIconInteractorImpl.tableLogBuffer;
        SafeFlow logDiffsForTable = DiffableKt.logDiffsForTable(distinctUntilChanged, tableLogBuffer, "VM", "visible", false);
        SharingStarted.Companion companion = SharingStarted.Companion;
        StartedWhileSubscribed WhileSubscribed$default = SharingStarted.Companion.WhileSubscribed$default(companion);
        Boolean bool = Boolean.FALSE;
        ReadonlyStateFlow stateIn = FlowKt.stateIn(logDiffsForTable, coroutineScope, WhileSubscribed$default, bool);
        this.isVisible = stateIn;
        Flow distinctUntilChanged2 = FlowKt.distinctUntilChanged(mobileIconInteractorImpl.icon);
        SignalIconModel.Cellular cellular = SignalIconModelKt.DEFAULT_SIGNAL_ICON;
        ReadonlyStateFlow stateIn2 = FlowKt.stateIn(DiffableKt.logDiffsForTable(distinctUntilChanged2, tableLogBuffer, "VM.signalIcon", cellular), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), cellular);
        this.icon = stateIn2;
        this.contentDescription = mobileIconInteractorImpl.contentDescription;
        final Flow[] flowArr = {readonlyStateFlow, mobileIconInteractorImpl.isDataEnabled, mobileIconInteractorImpl.alwaysShowDataRatIcon, mobileIconInteractorImpl.mobileIsDefault, mobileIconInteractorImpl.carrierNetworkChangeActive, mobileIconInteractorImpl.isVoWifiConnected};
        ReadonlyStateFlow stateIn3 = FlowKt.stateIn(DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$combine$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$combine$1$3", f = "MobileIconViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_removeFavoriteApp}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$combine$1$3, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass3 extends SuspendLambda implements Function3 {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.L$0 = (FlowCollector) obj;
                    anonymousClass3.L$1 = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i = this.label;
                    if (i != 0) {
                        if (i == 1) {
                            ResultKt.throwOnFailure(obj);
                        } else {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    } else {
                        ResultKt.throwOnFailure(obj);
                        FlowCollector flowCollector = (FlowCollector) this.L$0;
                        Boolean[] boolArr = (Boolean[]) ((Object[]) this.L$1);
                        boolean z = false;
                        boolean booleanValue = boolArr[0].booleanValue();
                        boolArr[1].booleanValue();
                        boolean booleanValue2 = boolArr[2].booleanValue();
                        boolean booleanValue3 = boolArr[3].booleanValue();
                        boolean booleanValue4 = boolArr[4].booleanValue();
                        boolean booleanValue5 = boolArr[5].booleanValue();
                        if (booleanValue2 || (!booleanValue4 && booleanValue && booleanValue3 && !booleanValue5)) {
                            z = true;
                        }
                        Boolean valueOf = Boolean.valueOf(z);
                        this.label = 1;
                        if (flowCollector.emit(valueOf, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object combineInternal = CombineKt.combineInternal(flowArr2, new Function0() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$combine$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return new Boolean[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, continuation);
                if (combineInternal == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return combineInternal;
                }
                return Unit.INSTANCE;
            }
        }), tableLogBuffer, "VM", "showNetworkTypeIcon", false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.showNetworkTypeIcon = stateIn3;
        ReadonlyStateFlow readonlyStateFlow3 = mobileIconInteractorImpl.disabledDataIcon;
        ReadonlyStateFlow stateIn4 = FlowKt.stateIn(FlowKt.distinctUntilChanged(FlowKt.combine(readonlyStateFlow2, stateIn3, readonlyStateFlow3, new CellularIconViewModel$networkTypeIcon$1(null))), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), null);
        this.networkTypeIcon = stateIn4;
        ReadonlyStateFlow stateIn5 = FlowKt.stateIn(DiffableKt.logDiffsForTable((Flow) mobileIconInteractorImpl.isRoaming, tableLogBuffer, "VM", "roaming", false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.roaming = stateIn5;
        ReadonlyStateFlow stateIn6 = FlowKt.stateIn(FlowKt.combine(stateIn5, mobileIconInteractorImpl.roamingId, readonlyStateFlow3, mobileIconInteractorImpl.otherSlotInCallState, mobileIconInteractorImpl.femtoCellIndicatorId, new CellularIconViewModel$roamingIcon$1(null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), null);
        this.roamingIcon = stateIn6;
        final StateFlow stateFlow3 = mobileIconInteractorImpl.activity;
        this.activity = stateFlow3;
        this.activityInVisible = FlowKt.stateIn(DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$1$2", f = "MobileIconViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$1$2$1, reason: invalid class name */
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
                        boolean r0 = r6 instanceof com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$1$2$1 r0 = (com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$1$2$1 r0 = new com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L49
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DataActivityModel r5 = (com.android.systemui.statusbar.pipeline.shared.data.model.DataActivityModel) r5
                        if (r5 == 0) goto L39
                        boolean r5 = r5.hasActivityIn
                        goto L3a
                    L39:
                        r5 = 0
                    L3a:
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L49
                        return r1
                    L49:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }), tableLogBuffer, "VM", "activityInVisible", false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.activityOutVisible = FlowKt.stateIn(DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$2

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$2$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$2$2", f = "MobileIconViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$2$2$1, reason: invalid class name */
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
                        boolean r0 = r6 instanceof com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$2$2$1 r0 = (com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$2$2$1 r0 = new com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$2$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L49
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DataActivityModel r5 = (com.android.systemui.statusbar.pipeline.shared.data.model.DataActivityModel) r5
                        if (r5 == 0) goto L39
                        boolean r5 = r5.hasActivityOut
                        goto L3a
                    L39:
                        r5 = 0
                    L3a:
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L49
                        return r1
                    L49:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }), tableLogBuffer, "VM", "activityOutVisible", false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        this.activityContainerVisible = FlowKt.stateIn(DiffableKt.logDiffsForTable(FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$3

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$3$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$3$2", f = "MobileIconViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$3$2$1, reason: invalid class name */
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
                        boolean r0 = r6 instanceof com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$3.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$3$2$1 r0 = (com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$3.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$3$2$1 r0 = new com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$3$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L50
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DataActivityModel r5 = (com.android.systemui.statusbar.pipeline.shared.data.model.DataActivityModel) r5
                        if (r5 == 0) goto L40
                        boolean r6 = r5.hasActivityIn
                        if (r6 != 0) goto L3e
                        boolean r5 = r5.hasActivityOut
                        if (r5 == 0) goto L40
                    L3e:
                        r5 = r3
                        goto L41
                    L40:
                        r5 = 0
                    L41:
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L50
                        return r1
                    L50:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.CellularIconViewModel$special$$inlined$map$3.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }), tableLogBuffer, "", "activityContainerVisible", false), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), bool);
        ReadonlyStateFlow stateIn7 = FlowKt.stateIn(FlowKt.distinctUntilChanged(FlowKt.combine(stateFlow3, readonlyStateFlow2, stateIn3, mobileIconInteractorImpl.disabledActivityIcon, new CellularIconViewModel$activityIcon$1(null))), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), null);
        this.activityIcon = stateIn7;
        this.voiceNoServiceIcon = FlowKt.stateIn(mobileIconInteractorImpl.voiceNoServiceIcon, coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), 0);
        this.anyChanges = FlowKt.stateIn(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(FlowKt.combine(stateFlow, readonlyStateFlow, readonlyStateFlow2, stateFlow2, new CellularIconViewModel$anyChanges$1(this, null)), new CellularIconViewModel$anyChanges$2(this, null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), mobileSimpleLogger);
        this.updateDeXStatusBarIconModel = FlowKt.stateIn(FlowKt.combine(stateIn, stateIn2, stateIn4, stateIn7, stateIn6, new CellularIconViewModel$updateDeXStatusBarIconModel$1(this, null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), DeXStatusBarIconModelKt.DEFAULT_DEX_STATUS_BAR_ICON_MODEL);
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        CellularIconViewModel$dexStatusBarIcon$1 cellularIconViewModel$dexStatusBarIcon$1 = new CellularIconViewModel$dexStatusBarIcon$1(this, null);
        conflatedCallbackFlow.getClass();
        this.dexStatusBarIcon = ConflatedCallbackFlow.conflatedCallbackFlow(cellularIconViewModel$dexStatusBarIcon$1);
    }

    public static final void access$sendDeXStatusBarIconModel(CellularIconViewModel cellularIconViewModel, DeXStatusBarIconModel deXStatusBarIconModel) {
        boolean z;
        int i;
        int i2;
        int i3;
        boolean z2;
        int i4;
        cellularIconViewModel.getClass();
        int i5 = 0;
        if (deXStatusBarIconModel != null) {
            z = deXStatusBarIconModel.isVisible;
        } else {
            z = false;
        }
        int i6 = -1;
        if (deXStatusBarIconModel != null) {
            i = deXStatusBarIconModel.slotId;
        } else {
            i = -1;
        }
        if (deXStatusBarIconModel != null) {
            i6 = deXStatusBarIconModel.subId;
        }
        if (deXStatusBarIconModel != null) {
            i2 = deXStatusBarIconModel.strengthId;
        } else {
            i2 = 0;
        }
        if (deXStatusBarIconModel != null) {
            i3 = deXStatusBarIconModel.netwotkTypeId;
        } else {
            i3 = 0;
        }
        if (deXStatusBarIconModel != null) {
            z2 = deXStatusBarIconModel.isVisible;
        } else {
            z2 = false;
        }
        if (deXStatusBarIconModel != null) {
            i4 = deXStatusBarIconModel.activityId;
        } else {
            i4 = 0;
        }
        if (deXStatusBarIconModel != null) {
            i5 = deXStatusBarIconModel.roamingId;
        }
        DesktopManagerImpl desktopManagerImpl = (DesktopManagerImpl) cellularIconViewModel.desktopManager;
        if (desktopManagerImpl.isDesktopMode()) {
            StringBuilder m = KeyguardFMMViewController$$ExternalSyntheticOutline0.m("setMobileIcon - visible:", z, ",subId:", i6, ",stengthId:");
            AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, i2, ",typeId:", i3, ",showTriangle:");
            m.append(z2);
            m.append(",activityId:");
            m.append(i4);
            m.append(",roamingId:");
            m.append(i5);
            desktopManagerImpl.mIndicatorLogger.log(m.toString());
            Bundle bundle = new Bundle();
            bundle.putBoolean("visible", z);
            bundle.putInt("slotId", i);
            bundle.putInt("subId", i6);
            bundle.putInt("strengthId", i2);
            bundle.putInt("typeId", i3);
            bundle.putBoolean("showTriangle", z2);
            bundle.putInt("activityId", i4);
            bundle.putInt("roamingId", i5);
            ((DesktopSystemUiBinder) desktopManagerImpl.mDesktopSystemUiBinderLazy.get()).setMobileIcon(bundle);
        }
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getActivityContainerVisible() {
        return this.activityContainerVisible;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getActivityIcon() {
        return this.activityIcon;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getActivityInVisible() {
        return this.activityInVisible;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getActivityOutVisible() {
        return this.activityOutVisible;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getAnyChanges() {
        return this.anyChanges;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getContentDescription() {
        return this.contentDescription;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getDexStatusBarIcon() {
        return this.dexStatusBarIcon;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getIcon() {
        return this.icon;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getNetworkTypeIcon() {
        return this.networkTypeIcon;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getRoaming() {
        return this.roaming;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final Flow getRoamingIcon() {
        return this.roamingIcon;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final DoubleShadowStatusBarIconDrawable getShadowDrawable(View view, int i) {
        if (i == 0) {
            return null;
        }
        Context context = view.getContext();
        Drawable drawable = context.getResources().getDrawable(i, null);
        int height = view.getHeight();
        return new DoubleShadowStatusBarIconDrawable(drawable, context, MathKt__MathJVMKt.roundToInt((drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight()) * height), height);
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final int getSubscriptionId() {
        return this.subscriptionId;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final StateFlow getUpdateDeXStatusBarIconModel() {
        return this.updateDeXStatusBarIconModel;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final StateFlow getVoiceNoServiceIcon() {
        return this.voiceNoServiceIcon;
    }

    @Override // com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModelCommon
    public final StateFlow isVisible() {
        return this.isVisible;
    }
}
