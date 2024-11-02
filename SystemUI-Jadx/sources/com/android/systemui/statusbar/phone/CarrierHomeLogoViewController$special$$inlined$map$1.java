package com.android.systemui.statusbar.phone;

import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CarrierHomeLogoViewController$special$$inlined$map$1 implements Flow {
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;
    public final /* synthetic */ CarrierHomeLogoViewController this$0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$special$$inlined$map$1$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ FlowCollector $this_unsafeFlow;
        public final /* synthetic */ CarrierHomeLogoViewController this$0;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$special$$inlined$map$1$2", f = "CarrierHomeLogoViewController.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
        /* renamed from: com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$special$$inlined$map$1$2$1, reason: invalid class name */
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

        public AnonymousClass2(FlowCollector flowCollector, CarrierHomeLogoViewController carrierHomeLogoViewController) {
            this.$this_unsafeFlow = flowCollector;
            this.this$0 = carrierHomeLogoViewController;
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
                boolean r0 = r9 instanceof com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L13
                r0 = r9
                com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$special$$inlined$map$1$2$1 r0 = (com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$special$$inlined$map$1$2$1 r0 = new com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$special$$inlined$map$1$2$1
                r0.<init>(r9)
            L18:
                java.lang.Object r9 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L2f
                if (r2 != r3) goto L27
                kotlin.ResultKt.throwOnFailure(r9)
                goto L71
            L27:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L2f:
                kotlin.ResultKt.throwOnFailure(r9)
                android.content.Intent r8 = (android.content.Intent) r8
                java.lang.String r9 = "slot"
                r2 = 0
                int r9 = r8.getIntExtra(r9, r2)
                android.os.Bundle r8 = r8.getExtras()
                android.telephony.ServiceState r8 = android.telephony.ServiceState.newFromBundle(r8)
                if (r8 == 0) goto L64
                java.lang.Integer r4 = new java.lang.Integer
                r4.<init>(r9)
                com.android.systemui.statusbar.phone.CarrierHomeLogoViewController r9 = r7.this$0
                com.android.systemui.statusbar.phone.CarrierLogoVisibilityManager r9 = r9.carrierLogoVisibilityManager
                java.util.HashMap r9 = r9.serviceStateHash
                com.android.systemui.statusbar.phone.ServiceStateModel r5 = new com.android.systemui.statusbar.phone.ServiceStateModel
                int r6 = r8.getState()
                if (r6 != 0) goto L5a
                r2 = r3
            L5a:
                boolean r8 = r8.getRoaming()
                r5.<init>(r2, r8)
                r9.put(r4, r5)
            L64:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                r0.label = r3
                kotlinx.coroutines.flow.FlowCollector r7 = r7.$this_unsafeFlow
                java.lang.Object r7 = r7.emit(r8, r0)
                if (r7 != r1) goto L71
                return r1
            L71:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.CarrierHomeLogoViewController$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public CarrierHomeLogoViewController$special$$inlined$map$1(Flow flow, CarrierHomeLogoViewController carrierHomeLogoViewController) {
        this.$this_unsafeTransform$inlined = flow;
        this.this$0 = carrierHomeLogoViewController;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        Object collect = this.$this_unsafeTransform$inlined.collect(new AnonymousClass2(flowCollector, this.this$0), continuation);
        if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
            return collect;
        }
        return Unit.INSTANCE;
    }
}
