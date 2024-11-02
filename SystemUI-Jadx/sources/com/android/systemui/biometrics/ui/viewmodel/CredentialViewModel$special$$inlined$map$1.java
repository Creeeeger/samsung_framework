package com.android.systemui.biometrics.ui.viewmodel;

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
public final class CredentialViewModel$special$$inlined$map$1 implements Flow {
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;
    public final /* synthetic */ CredentialViewModel this$0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ FlowCollector $this_unsafeFlow;
        public final /* synthetic */ CredentialViewModel this$0;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1$2", f = "CredentialViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
        /* renamed from: com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1$2$1, reason: invalid class name */
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

        public AnonymousClass2(FlowCollector flowCollector, CredentialViewModel credentialViewModel) {
            this.$this_unsafeFlow = flowCollector;
            this.this$0 = credentialViewModel;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
            /*
                r11 = this;
                boolean r0 = r13 instanceof com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L13
                r0 = r13
                com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1$2$1 r0 = (com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1$2$1 r0 = new com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1$2$1
                r0.<init>(r13)
            L18:
                java.lang.Object r13 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L2f
                if (r2 != r3) goto L27
                kotlin.ResultKt.throwOnFailure(r13)
                goto L83
            L27:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r12)
                throw r11
            L2f:
                kotlin.ResultKt.throwOnFailure(r13)
                r5 = r12
                com.android.systemui.biometrics.domain.model.BiometricPromptRequest$Credential r5 = (com.android.systemui.biometrics.domain.model.BiometricPromptRequest.Credential) r5
                com.android.systemui.biometrics.ui.viewmodel.BiometricPromptHeaderViewModelImpl r12 = new com.android.systemui.biometrics.ui.viewmodel.BiometricPromptHeaderViewModelImpl
                com.android.systemui.biometrics.domain.model.BiometricUserInfo r13 = r5.userInfo
                int r13 = r13.userId
                android.os.UserHandle r6 = android.os.UserHandle.of(r13)
                java.lang.String r7 = r5.title
                java.lang.String r8 = r5.subtitle
                java.lang.String r9 = r5.description
                com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel r13 = r11.this$0
                android.content.Context r13 = r13.applicationContext
                com.android.systemui.biometrics.domain.model.BiometricUserInfo r2 = r5.userInfo
                int r2 = r2.deviceCredentialOwnerId
                int r4 = com.android.systemui.biometrics.Utils.$r8$clinit
                java.lang.Class<android.os.UserManager> r4 = android.os.UserManager.class
                java.lang.Object r4 = r13.getSystemService(r4)
                android.os.UserManager r4 = (android.os.UserManager) r4
                if (r4 == 0) goto L5e
                boolean r2 = r4.isManagedProfile(r2)
                goto L5f
            L5e:
                r2 = 0
            L5f:
                if (r2 == 0) goto L65
                r2 = 2131232395(0x7f08068b, float:1.8080898E38)
                goto L68
            L65:
                r2 = 2131232396(0x7f08068c, float:1.80809E38)
            L68:
                android.content.res.Resources r4 = r13.getResources()
                android.content.res.Resources$Theme r13 = r13.getTheme()
                android.graphics.drawable.Drawable r10 = r4.getDrawable(r2, r13)
                r4 = r12
                r4.<init>(r5, r6, r7, r8, r9, r10)
                r0.label = r3
                kotlinx.coroutines.flow.FlowCollector r11 = r11.$this_unsafeFlow
                java.lang.Object r11 = r11.emit(r12, r0)
                if (r11 != r1) goto L83
                return r1
            L83:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.biometrics.ui.viewmodel.CredentialViewModel$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public CredentialViewModel$special$$inlined$map$1(Flow flow, CredentialViewModel credentialViewModel) {
        this.$this_unsafeTransform$inlined = flow;
        this.this$0 = credentialViewModel;
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
