package com.android.systemui.statusbar.pipeline.wifi.data.repository.demo;

import com.android.systemui.demomode.DemoModeController;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.SharingStarted;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DemoModeWifiDataSource {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final DemoModeWifiDataSource$special$$inlined$map$1 _wifiCommands;
    public final ReadonlySharedFlow wifiEvents;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.flow.Flow, com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1] */
    public DemoModeWifiDataSource(DemoModeController demoModeController, CoroutineScope coroutineScope) {
        final Flow demoFlowForCommand = demoModeController.demoFlowForCommand();
        ?? r0 = new Flow() { // from class: com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ DemoModeWifiDataSource this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1$2", f = "DemoModeWifiDataSource.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1$2$1, reason: invalid class name */
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

                public AnonymousClass2(FlowCollector flowCollector, DemoModeWifiDataSource demoModeWifiDataSource) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = demoModeWifiDataSource;
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r8, kotlin.coroutines.Continuation r9) {
                    /*
                        r7 = this;
                        boolean r0 = r9 instanceof com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r9
                        com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1$2$1 r0 = (com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1$2$1 r0 = new com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1$2$1
                        r0.<init>(r9)
                    L18:
                        java.lang.Object r9 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L30
                        if (r2 != r3) goto L28
                        kotlin.ResultKt.throwOnFailure(r9)
                        goto Ld4
                    L28:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L30:
                        kotlin.ResultKt.throwOnFailure(r9)
                        android.os.Bundle r8 = (android.os.Bundle) r8
                        int r9 = com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource.$r8$clinit
                        com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource r9 = r7.this$0
                        r9.getClass()
                        java.lang.String r9 = "wifi"
                        java.lang.String r9 = r8.getString(r9)
                        r2 = 0
                        if (r9 != 0) goto L48
                        goto Lc9
                    L48:
                        java.lang.String r4 = "show"
                        boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r4)
                        java.lang.String r5 = "activity"
                        java.lang.String r6 = "level"
                        if (r4 == 0) goto L87
                        java.lang.String r9 = r8.getString(r6)
                        if (r9 == 0) goto L63
                        int r9 = java.lang.Integer.parseInt(r9)
                        java.lang.Integer r2 = java.lang.Integer.valueOf(r9)
                    L63:
                        java.lang.String r9 = r8.getString(r5)
                        int r9 = com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource.toActivity(r9)
                        java.lang.String r4 = "ssid"
                        java.lang.String r4 = r8.getString(r4)
                        java.lang.String r5 = "fully"
                        java.lang.String r8 = r8.getString(r5)
                        boolean r8 = java.lang.Boolean.parseBoolean(r8)
                        com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.model.FakeWifiEventModel$Wifi r5 = new com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.model.FakeWifiEventModel$Wifi
                        java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)
                        r5.<init>(r2, r9, r4, r8)
                    L85:
                        r2 = r5
                        goto Lc9
                    L87:
                        java.lang.String r2 = "carriermerged"
                        boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r2)
                        if (r9 == 0) goto Lc7
                        java.lang.String r9 = "slot"
                        java.lang.String r9 = r8.getString(r9)
                        if (r9 == 0) goto L9d
                        int r9 = java.lang.Integer.parseInt(r9)
                        goto L9f
                    L9d:
                        r9 = 10
                    L9f:
                        java.lang.String r2 = r8.getString(r6)
                        if (r2 == 0) goto Laa
                        int r2 = java.lang.Integer.parseInt(r2)
                        goto Lab
                    Laa:
                        r2 = 0
                    Lab:
                        java.lang.String r4 = "numlevels"
                        java.lang.String r4 = r8.getString(r4)
                        if (r4 == 0) goto Lb8
                        int r4 = java.lang.Integer.parseInt(r4)
                        goto Lb9
                    Lb8:
                        r4 = 4
                    Lb9:
                        java.lang.String r8 = r8.getString(r5)
                        int r8 = com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource.toActivity(r8)
                        com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.model.FakeWifiEventModel$CarrierMerged r5 = new com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.model.FakeWifiEventModel$CarrierMerged
                        r5.<init>(r9, r2, r4, r8)
                        goto L85
                    Lc7:
                        com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.model.FakeWifiEventModel$WifiDisabled r2 = com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.model.FakeWifiEventModel$WifiDisabled.INSTANCE
                    Lc9:
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r7 = r7.$this_unsafeFlow
                        java.lang.Object r7 = r7.emit(r2, r0)
                        if (r7 != r1) goto Ld4
                        return r1
                    Ld4:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.wifi.data.repository.demo.DemoModeWifiDataSource$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
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
        };
        this._wifiCommands = r0;
        this.wifiEvents = FlowKt.shareIn(r0, coroutineScope, SharingStarted.Companion.WhileSubscribed$default(SharingStarted.Companion), 0);
    }

    public static int toActivity(String str) {
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != 3365) {
                if (hashCode != 110414) {
                    if (hashCode == 100357129 && str.equals("inout")) {
                        return 3;
                    }
                } else if (str.equals("out")) {
                    return 2;
                }
            } else if (str.equals("in")) {
                return 1;
            }
        }
        return 0;
    }
}
