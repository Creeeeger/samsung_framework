package com.android.systemui.statusbar.pipeline.shared.data.repository;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.vcn.VcnTransportInfo;
import android.net.wifi.WifiInfo;
import com.android.systemui.Dumpable;
import com.android.systemui.R;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.dump.DumpManager;
import com.android.systemui.statusbar.pipeline.shared.ConnectivityInputLogger;
import com.android.systemui.statusbar.pipeline.shared.data.model.ConnectivitySlot;
import com.android.systemui.statusbar.pipeline.shared.data.model.ConnectivitySlots;
import com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel;
import com.android.systemui.tuner.TunerService;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StartedEagerly;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ConnectivityRepositoryImpl implements ConnectivityRepository, Dumpable {
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_HIDDEN_ICONS_RESOURCE = R.array.config_statusBarIconsToExclude;
    public final ConnectivityManager connectivityManager;
    public final ConnectivitySlots connectivitySlots;
    public final ReadonlyStateFlow defaultConnections;
    public final Set defaultHiddenIcons;
    public final ReadonlySharedFlow defaultNetworkCapabilities;
    public final ReadonlyStateFlow forceHiddenSlots;
    public final ReadonlyStateFlow vcnSubId;

    public ConnectivityRepositoryImpl(ConnectivityManager connectivityManager, ConnectivitySlots connectivitySlots, Context context, DumpManager dumpManager, ConnectivityInputLogger connectivityInputLogger, CoroutineScope coroutineScope, TunerService tunerService) {
        this.connectivityManager = connectivityManager;
        this.connectivitySlots = connectivitySlots;
        dumpManager.registerNormalDumpable("ConnectivityRepository", this);
        Set access$toSlotSet = Companion.access$toSlotSet(Companion, Arrays.asList(context.getResources().getStringArray(DEFAULT_HIDDEN_ICONS_RESOURCE)), connectivitySlots);
        this.defaultHiddenIcons = access$toSlotSet;
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        ConnectivityRepositoryImpl$forceHiddenSlots$1 connectivityRepositoryImpl$forceHiddenSlots$1 = new ConnectivityRepositoryImpl$forceHiddenSlots$1(tunerService, connectivityInputLogger, this, null);
        conflatedCallbackFlow.getClass();
        Flow conflatedCallbackFlow2 = ConflatedCallbackFlow.conflatedCallbackFlow(connectivityRepositoryImpl$forceHiddenSlots$1);
        SharingStarted.Companion companion = SharingStarted.Companion;
        this.forceHiddenSlots = FlowKt.stateIn(conflatedCallbackFlow2, coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), access$toSlotSet);
        final ReadonlySharedFlow shareIn = FlowKt.shareIn(ConflatedCallbackFlow.conflatedCallbackFlow(new ConnectivityRepositoryImpl$defaultNetworkCapabilities$1(this, connectivityInputLogger, null)), coroutineScope, SharingStarted.Companion.WhileSubscribed$default(companion), 0);
        this.defaultNetworkCapabilities = shareIn;
        FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$1$2", f = "ConnectivityRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$1$2$1, reason: invalid class name */
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
                public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$1$2$1 r0 = (com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$1$2$1 r0 = new com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$1$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L66
                    L27:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r7)
                        android.net.NetworkCapabilities r6 = (android.net.NetworkCapabilities) r6
                        r7 = 0
                        if (r6 == 0) goto L5b
                        android.net.TransportInfo r6 = r6.getTransportInfo()
                        boolean r2 = r6 instanceof android.net.vcn.VcnTransportInfo
                        if (r2 == 0) goto L42
                        android.net.vcn.VcnTransportInfo r6 = (android.net.vcn.VcnTransportInfo) r6
                        goto L43
                    L42:
                        r6 = r7
                    L43:
                        if (r6 == 0) goto L4f
                        int r6 = r6.getSubId()
                        java.lang.Integer r2 = new java.lang.Integer
                        r2.<init>(r6)
                        goto L50
                    L4f:
                        r2 = r7
                    L50:
                        if (r2 != 0) goto L53
                        goto L5a
                    L53:
                        int r6 = r2.intValue()
                        r4 = -1
                        if (r6 == r4) goto L5b
                    L5a:
                        r7 = r2
                    L5b:
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r5 = r5.$this_unsafeFlow
                        java.lang.Object r5 = r5.emit(r7, r0)
                        if (r5 != r1) goto L66
                        return r1
                    L66:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }), new ConnectivityRepositoryImpl$vcnSubId$2(connectivityInputLogger, null));
        StartedEagerly startedEagerly = SharingStarted.Companion.Eagerly;
        this.vcnSubId = FlowKt.stateIn(flowKt__TransformKt$onEach$$inlined$unsafeTransform$1, coroutineScope, startedEagerly, null);
        this.defaultConnections = FlowKt.stateIn(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(FlowKt.distinctUntilChanged(new Flow() { // from class: com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$2

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$2$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ ConnectivityRepositoryImpl this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$2$2", f = "ConnectivityRepository.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$2$2$1, reason: invalid class name */
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

                public AnonymousClass2(FlowCollector flowCollector, ConnectivityRepositoryImpl connectivityRepositoryImpl) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = connectivityRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r19, kotlin.coroutines.Continuation r20) {
                    /*
                        r18 = this;
                        r0 = r18
                        r1 = r20
                        boolean r2 = r1 instanceof com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$2.AnonymousClass2.AnonymousClass1
                        if (r2 == 0) goto L17
                        r2 = r1
                        com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$2$2$1 r2 = (com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$2.AnonymousClass2.AnonymousClass1) r2
                        int r3 = r2.label
                        r4 = -2147483648(0xffffffff80000000, float:-0.0)
                        r5 = r3 & r4
                        if (r5 == 0) goto L17
                        int r3 = r3 - r4
                        r2.label = r3
                        goto L1c
                    L17:
                        com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$2$2$1 r2 = new com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$2$2$1
                        r2.<init>(r1)
                    L1c:
                        java.lang.Object r1 = r2.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r4 = r2.label
                        r5 = 1
                        if (r4 == 0) goto L34
                        if (r4 != r5) goto L2c
                        kotlin.ResultKt.throwOnFailure(r1)
                        goto Lc1
                    L2c:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
                        r0.<init>(r1)
                        throw r0
                    L34:
                        kotlin.ResultKt.throwOnFailure(r1)
                        r1 = r19
                        android.net.NetworkCapabilities r1 = (android.net.NetworkCapabilities) r1
                        r4 = 0
                        if (r1 != 0) goto L5f
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel r1 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Wifi r7 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Wifi
                        r7.<init>(r4)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Mobile r8 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Mobile
                        r8.<init>(r4)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$CarrierMerged r9 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$CarrierMerged
                        r9.<init>(r4)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Ethernet r10 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Ethernet
                        r10.<init>(r4)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$BTTether r11 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$BTTether
                        r11.<init>(r4)
                        r12 = 0
                        r6 = r1
                        r6.<init>(r7, r8, r9, r10, r11, r12)
                        goto Lb6
                    L5f:
                        com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$Companion r6 = com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl.Companion
                        com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl r7 = r0.this$0
                        android.net.ConnectivityManager r7 = r7.connectivityManager
                        r6.getClass()
                        android.net.wifi.WifiInfo r6 = com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl.Companion.getMainOrUnderlyingWifiInfo(r1, r7)
                        boolean r7 = r1.hasTransport(r5)
                        if (r7 != 0) goto L77
                        if (r6 == 0) goto L75
                        goto L77
                    L75:
                        r7 = r4
                        goto L78
                    L77:
                        r7 = r5
                    L78:
                        boolean r8 = r1.hasTransport(r4)
                        if (r6 == 0) goto L85
                        boolean r6 = r6.isCarrierMerged()
                        if (r6 != r5) goto L85
                        r4 = r5
                    L85:
                        r6 = 3
                        boolean r6 = r1.hasTransport(r6)
                        r9 = 2
                        boolean r9 = r1.hasTransport(r9)
                        r10 = 16
                        boolean r17 = r1.hasCapability(r10)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel r1 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Wifi r12 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Wifi
                        r12.<init>(r7)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Mobile r13 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Mobile
                        r13.<init>(r8)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$CarrierMerged r14 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$CarrierMerged
                        r14.<init>(r4)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Ethernet r15 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$Ethernet
                        r15.<init>(r6)
                        com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$BTTether r4 = new com.android.systemui.statusbar.pipeline.shared.data.model.DefaultConnectionModel$BTTether
                        r4.<init>(r9)
                        r11 = r1
                        r16 = r4
                        r11.<init>(r12, r13, r14, r15, r16, r17)
                    Lb6:
                        r2.label = r5
                        kotlinx.coroutines.flow.FlowCollector r0 = r0.$this_unsafeFlow
                        java.lang.Object r0 = r0.emit(r1, r2)
                        if (r0 != r3) goto Lc1
                        return r3
                    Lc1:
                        kotlin.Unit r0 = kotlin.Unit.INSTANCE
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.shared.data.repository.ConnectivityRepositoryImpl$special$$inlined$map$2.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        }), new ConnectivityRepositoryImpl$defaultConnections$2(connectivityInputLogger, null)), coroutineScope, startedEagerly, new DefaultConnectionModel(null, null, null, null, null, false, 63, null));
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.println("defaultHiddenIcons=" + this.defaultHiddenIcons);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final Set access$toSlotSet(Companion companion, List list, ConnectivitySlots connectivitySlots) {
            companion.getClass();
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (!StringsKt__StringsJVMKt.isBlank((String) obj)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ConnectivitySlot connectivitySlot = (ConnectivitySlot) connectivitySlots.slotByName.get((String) it.next());
                if (connectivitySlot != null) {
                    arrayList2.add(connectivitySlot);
                }
            }
            return CollectionsKt___CollectionsKt.toSet(arrayList2);
        }

        public static WifiInfo getMainOrUnderlyingWifiInfo(NetworkCapabilities networkCapabilities, ConnectivityManager connectivityManager) {
            WifiInfo wifiInfo;
            WifiInfo mainWifiInfo = getMainWifiInfo(networkCapabilities);
            if (mainWifiInfo != null) {
                return mainWifiInfo;
            }
            if (!networkCapabilities.hasTransport(0)) {
                return mainWifiInfo;
            }
            List underlyingNetworks = networkCapabilities.getUnderlyingNetworks();
            if (underlyingNetworks == null) {
                return null;
            }
            Iterator it = underlyingNetworks.iterator();
            while (it.hasNext()) {
                NetworkCapabilities networkCapabilities2 = connectivityManager.getNetworkCapabilities((Network) it.next());
                if (networkCapabilities2 != null) {
                    ConnectivityRepositoryImpl.Companion.getClass();
                    wifiInfo = getMainWifiInfo(networkCapabilities2);
                } else {
                    wifiInfo = null;
                }
                if (wifiInfo != null) {
                    return wifiInfo;
                }
            }
            return null;
        }

        public static WifiInfo getMainWifiInfo(NetworkCapabilities networkCapabilities) {
            boolean z = false;
            if (networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(1)) {
                z = true;
            }
            if (!z) {
                return null;
            }
            VcnTransportInfo transportInfo = networkCapabilities.getTransportInfo();
            if (transportInfo instanceof VcnTransportInfo) {
                return transportInfo.getWifiInfo();
            }
            if (!(transportInfo instanceof WifiInfo)) {
                return null;
            }
            return (WifiInfo) transportInfo;
        }

        public static /* synthetic */ void getDEFAULT_HIDDEN_ICONS_RESOURCE$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations() {
        }

        public static /* synthetic */ void getHIDDEN_ICONS_TUNABLE_KEY$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations() {
        }
    }
}
