package com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel;

import com.android.systemui.statusbar.phone.StatusBarLocation;
import com.android.systemui.statusbar.pipeline.StatusBarPipelineFlags;
import com.android.systemui.statusbar.pipeline.airplane.domain.interactor.AirplaneModeInteractor;
import com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconsInteractor;
import com.android.systemui.statusbar.pipeline.mobile.domain.interactor.MobileIconsInteractorImpl;
import com.android.systemui.statusbar.pipeline.mobile.ui.MobileViewLogger;
import com.android.systemui.statusbar.pipeline.mobile.ui.VerboseMobileViewLogger;
import com.android.systemui.statusbar.pipeline.mobile.ui.util.MobileSignalIconResource;
import com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.LocationBasedMobileViewModel;
import com.android.systemui.statusbar.pipeline.shared.ConnectivityConstants;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.DesktopManager;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MobileIconsViewModel {
    public final AirplaneModeInteractor airplaneModeInteractor;
    public final ConfigurationController configuration;
    public final ConnectivityConstants constants;
    public final DesktopManager desktopManager;
    public final ReadonlyStateFlow firstMobileSubShowingNetworkTypeIcon;
    public final ReadonlyStateFlow firstMobileSubViewModel;
    public final MobileIconsInteractor interactor;
    public final MobileViewLogger logger;
    public final Map mobileIconSubIdCache = new LinkedHashMap();
    public final CoroutineScope scope;
    public final StatusBarPipelineFlags statusBarPipelineFlags;
    public final ReadonlyStateFlow subscriptionIdsFlow;
    public final VerboseMobileViewLogger verboseLogger;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$1", f = "MobileIconsViewModel.kt", l = {104}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        int label;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            } else {
                ResultKt.throwOnFailure(obj);
                final MobileIconsViewModel mobileIconsViewModel = MobileIconsViewModel.this;
                ReadonlyStateFlow readonlyStateFlow = mobileIconsViewModel.subscriptionIdsFlow;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel.1.1
                    /* JADX WARN: Code restructure failed: missing block: B:9:0x004e, code lost:
                    
                        if (((com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModel) r4).slotId != android.telephony.SubscriptionManager.getSlotIndex(r3)) goto L13;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:12:0x0056 A[SYNTHETIC] */
                    /* JADX WARN: Removed duplicated region for block: B:16:0x0016 A[SYNTHETIC] */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
                        /*
                            r5 = this;
                            java.util.List r6 = (java.util.List) r6
                            com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel r5 = com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel.this
                            java.util.Map r5 = r5.mobileIconSubIdCache
                            r7 = r5
                            java.util.LinkedHashMap r7 = (java.util.LinkedHashMap) r7
                            java.util.Set r0 = r7.keySet()
                            java.util.ArrayList r1 = new java.util.ArrayList
                            r1.<init>()
                            java.util.Iterator r0 = r0.iterator()
                        L16:
                            boolean r2 = r0.hasNext()
                            if (r2 == 0) goto L5a
                            java.lang.Object r2 = r0.next()
                            r3 = r2
                            java.lang.Number r3 = (java.lang.Number) r3
                            int r3 = r3.intValue()
                            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)
                            boolean r4 = r6.contains(r4)
                            if (r4 == 0) goto L53
                            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)
                            java.lang.Object r4 = r7.get(r4)
                            if (r4 == 0) goto L51
                            java.lang.Integer r4 = java.lang.Integer.valueOf(r3)
                            java.lang.Object r4 = r7.get(r4)
                            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
                            com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModel r4 = (com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModel) r4
                            int r3 = android.telephony.SubscriptionManager.getSlotIndex(r3)
                            int r4 = r4.slotId
                            if (r4 == r3) goto L51
                            goto L53
                        L51:
                            r3 = 0
                            goto L54
                        L53:
                            r3 = 1
                        L54:
                            if (r3 == 0) goto L16
                            r1.add(r2)
                            goto L16
                        L5a:
                            java.util.Iterator r6 = r1.iterator()
                        L5e:
                            boolean r7 = r6.hasNext()
                            if (r7 == 0) goto L76
                            java.lang.Object r7 = r6.next()
                            java.lang.Number r7 = (java.lang.Number) r7
                            int r7 = r7.intValue()
                            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
                            r5.remove(r7)
                            goto L5e
                        L76:
                            kotlin.Unit r5 = kotlin.Unit.INSTANCE
                            return r5
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel.AnonymousClass1.C01101.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                };
                this.label = 1;
                if (readonlyStateFlow.collect(flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            throw new KotlinNothingValueException();
        }
    }

    public MobileIconsViewModel(MobileViewLogger mobileViewLogger, VerboseMobileViewLogger verboseMobileViewLogger, MobileIconsInteractor mobileIconsInteractor, AirplaneModeInteractor airplaneModeInteractor, ConnectivityConstants connectivityConstants, CoroutineScope coroutineScope, StatusBarPipelineFlags statusBarPipelineFlags, MobileSignalIconResource mobileSignalIconResource, DesktopManager desktopManager, ConfigurationController configurationController) {
        this.logger = mobileViewLogger;
        this.verboseLogger = verboseMobileViewLogger;
        this.interactor = mobileIconsInteractor;
        this.airplaneModeInteractor = airplaneModeInteractor;
        this.constants = connectivityConstants;
        this.scope = coroutineScope;
        this.statusBarPipelineFlags = statusBarPipelineFlags;
        this.desktopManager = desktopManager;
        this.configuration = configurationController;
        ChannelFlowTransformLatest mapLatest = FlowKt.mapLatest(((MobileIconsInteractorImpl) mobileIconsInteractor).filteredSubscriptions, new MobileIconsViewModel$subscriptionIdsFlow$1(null));
        SharingStarted.Companion companion = SharingStarted.Companion;
        final ReadonlyStateFlow stateIn = FlowKt.stateIn(mapLatest, coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), EmptyList.INSTANCE);
        this.subscriptionIdsFlow = stateIn;
        ReadonlyStateFlow stateIn2 = FlowKt.stateIn(new Flow() { // from class: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ MobileIconsViewModel this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$special$$inlined$map$1$2", f = "MobileIconsViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$special$$inlined$map$1$2$1, reason: invalid class name */
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

                public AnonymousClass2(FlowCollector flowCollector, MobileIconsViewModel mobileIconsViewModel) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = mobileIconsViewModel;
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
                        boolean r0 = r6 instanceof com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$special$$inlined$map$1$2$1 r0 = (com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$special$$inlined$map$1$2$1 r0 = new com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$special$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L59
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        java.util.List r5 = (java.util.List) r5
                        boolean r6 = r5.isEmpty()
                        if (r6 == 0) goto L3c
                        r5 = 0
                        goto L4e
                    L3c:
                        java.lang.Object r5 = kotlin.collections.CollectionsKt___CollectionsKt.last(r5)
                        java.lang.Number r5 = (java.lang.Number) r5
                        int r5 = r5.intValue()
                        com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel r6 = r4.this$0
                        java.lang.String r2 = ""
                        com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconViewModel r5 = r6.commonViewModelForSub(r5, r2)
                    L4e:
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L59
                        return r1
                    L59:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.ui.viewmodel.MobileIconsViewModel$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }, coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), null);
        this.firstMobileSubViewModel = stateIn2;
        this.firstMobileSubShowingNetworkTypeIcon = FlowKt.stateIn(FlowKt.transformLatest(stateIn2, new MobileIconsViewModel$special$$inlined$flatMapLatest$1(null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), Boolean.FALSE);
        BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass1(null), 3);
    }

    public final MobileIconViewModel commonViewModelForSub(int i, String str) {
        Map map = this.mobileIconSubIdCache;
        MobileIconViewModel mobileIconViewModel = (MobileIconViewModel) ((LinkedHashMap) map).get(Integer.valueOf(i));
        if (mobileIconViewModel == null) {
            MobileIconViewModel mobileIconViewModel2 = new MobileIconViewModel(i, ((MobileIconsInteractorImpl) this.interactor).getMobileConnectionInteractorForSubId(i), this.airplaneModeInteractor, this.constants, this.scope, this.desktopManager, str);
            map.put(Integer.valueOf(i), mobileIconViewModel2);
            return mobileIconViewModel2;
        }
        return mobileIconViewModel;
    }

    public final LocationBasedMobileViewModel viewModelForSub(int i, StatusBarLocation statusBarLocation, String str) {
        MobileIconViewModel commonViewModelForSub = commonViewModelForSub(i, str);
        LocationBasedMobileViewModel.Companion.getClass();
        int i2 = LocationBasedMobileViewModel.Companion.WhenMappings.$EnumSwitchMapping$0[statusBarLocation.ordinal()];
        StatusBarPipelineFlags statusBarPipelineFlags = this.statusBarPipelineFlags;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 == 4) {
                        return new SubScreenQsMobileIconViewModel(commonViewModelForSub, statusBarPipelineFlags);
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return new QsMobileIconViewModel(commonViewModelForSub, statusBarPipelineFlags);
            }
            return new KeyguardMobileIconViewModel(commonViewModelForSub, statusBarPipelineFlags);
        }
        return new HomeMobileIconViewModel(commonViewModelForSub, statusBarPipelineFlags, this.verboseLogger);
    }

    public static /* synthetic */ void getMobileIconSubIdCache$annotations() {
    }
}
