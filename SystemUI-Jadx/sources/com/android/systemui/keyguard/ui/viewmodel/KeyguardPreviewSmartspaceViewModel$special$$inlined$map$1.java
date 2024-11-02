package com.android.systemui.keyguard.ui.viewmodel;

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
/* loaded from: classes.dex */
public final class KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1 implements Flow {
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;
    public final /* synthetic */ KeyguardPreviewSmartspaceViewModel this$0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ FlowCollector $this_unsafeFlow;
        public final /* synthetic */ KeyguardPreviewSmartspaceViewModel this$0;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1$2", f = "KeyguardPreviewSmartspaceViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
        /* renamed from: com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1$2$1, reason: invalid class name */
        /* loaded from: classes.dex */
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

        public AnonymousClass2(FlowCollector flowCollector, KeyguardPreviewSmartspaceViewModel keyguardPreviewSmartspaceViewModel) {
            this.$this_unsafeFlow = flowCollector;
            this.this$0 = keyguardPreviewSmartspaceViewModel;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(java.lang.Object r6, kotlin.coroutines.Continuation r7) {
            /*
                r5 = this;
                boolean r0 = r7 instanceof com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L13
                r0 = r7
                com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1$2$1 r0 = (com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1$2$1 r0 = new com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1$2$1
                r0.<init>(r7)
            L18:
                java.lang.Object r7 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L30
                if (r2 != r3) goto L28
                kotlin.ResultKt.throwOnFailure(r7)
                goto Lab
            L28:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L30:
                kotlin.ResultKt.throwOnFailure(r7)
                com.android.systemui.keyguard.shared.model.SettingsClockSize r6 = (com.android.systemui.keyguard.shared.model.SettingsClockSize) r6
                int[] r7 = com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel.WhenMappings.$EnumSwitchMapping$0
                int r6 = r6.ordinal()
                r6 = r7[r6]
                com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel r7 = r5.this$0
                if (r6 == r3) goto L79
                r2 = 2
                if (r6 != r2) goto L73
                com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$Companion r6 = com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel.Companion
                android.content.Context r7 = r7.context
                android.content.res.Resources r7 = r7.getResources()
                r6.getClass()
                java.lang.String r6 = "status_bar_height"
                java.lang.String r2 = "dimen"
                java.lang.String r4 = "android"
                int r6 = r7.getIdentifier(r6, r2, r4)
                if (r6 <= 0) goto L61
                int r6 = r7.getDimensionPixelSize(r6)
                goto L62
            L61:
                r6 = 0
            L62:
                r2 = 2131169790(0x7f0711fe, float:1.795392E38)
                int r2 = r7.getDimensionPixelSize(r2)
                int r2 = r2 + r6
                r6 = 2131169789(0x7f0711fd, float:1.7953918E38)
                int r6 = r7.getDimensionPixelSize(r6)
            L71:
                int r6 = r6 + r2
                goto L9b
            L73:
                kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
                r5.<init>()
                throw r5
            L79:
                com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$Companion r6 = com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel.Companion
                android.content.Context r7 = r7.context
                android.content.res.Resources r7 = r7.getResources()
                r6.getClass()
                r6 = 2131169865(0x7f071249, float:1.7954072E38)
                int r6 = r7.getDimensionPixelSize(r6)
                r2 = 2131166335(0x7f07047f, float:1.7946912E38)
                int r2 = r7.getDimensionPixelSize(r2)
                int r2 = r2 + r6
                r6 = 2131166226(0x7f070412, float:1.7946691E38)
                int r6 = r7.getDimensionPixelSize(r6)
                goto L71
            L9b:
                java.lang.Integer r7 = new java.lang.Integer
                r7.<init>(r6)
                r0.label = r3
                kotlinx.coroutines.flow.FlowCollector r5 = r5.$this_unsafeFlow
                java.lang.Object r5 = r5.emit(r7, r0)
                if (r5 != r1) goto Lab
                return r1
            Lab:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.ui.viewmodel.KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public KeyguardPreviewSmartspaceViewModel$special$$inlined$map$1(Flow flow, KeyguardPreviewSmartspaceViewModel keyguardPreviewSmartspaceViewModel) {
        this.$this_unsafeTransform$inlined = flow;
        this.this$0 = keyguardPreviewSmartspaceViewModel;
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
