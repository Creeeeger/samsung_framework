package com.android.keyguard.emm;

import android.content.Context;
import com.android.systemui.LsRune;
import com.android.systemui.common.coroutine.ConflatedCallbackFlow;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.samsung.android.service.EngineeringMode.EngineeringModeManager;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EngineeringModeManagerWrapper {
    public final Flow callbackFlow;
    public final Context context;
    public final Lazy emm$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.keyguard.emm.EngineeringModeManagerWrapper$emm$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return new EngineeringModeManager(EngineeringModeManagerWrapper.this.context);
        }
    });
    public boolean isCaptureEnabled;
    public final KeyguardStateController keyguardStateController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.keyguard.emm.EngineeringModeManagerWrapper$1", f = "EngineeringModeManagerWrapper.kt", l = {55}, m = "invokeSuspend")
    /* renamed from: com.android.keyguard.emm.EngineeringModeManagerWrapper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        int label;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: com.android.keyguard.emm.EngineeringModeManagerWrapper$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C00031 implements FlowCollector {
            public final /* synthetic */ EngineeringModeManagerWrapper this$0;

            public C00031(EngineeringModeManagerWrapper engineeringModeManagerWrapper) {
                this.this$0 = engineeringModeManagerWrapper;
            }

            @Override // kotlinx.coroutines.flow.FlowCollector
            public final /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                ((Boolean) obj).booleanValue();
                return emit(continuation);
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object emit(kotlin.coroutines.Continuation r5) {
                /*
                    r4 = this;
                    boolean r0 = r5 instanceof com.android.keyguard.emm.EngineeringModeManagerWrapper$1$1$emit$1
                    if (r0 == 0) goto L13
                    r0 = r5
                    com.android.keyguard.emm.EngineeringModeManagerWrapper$1$1$emit$1 r0 = (com.android.keyguard.emm.EngineeringModeManagerWrapper$1$1$emit$1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    com.android.keyguard.emm.EngineeringModeManagerWrapper$1$1$emit$1 r0 = new com.android.keyguard.emm.EngineeringModeManagerWrapper$1$1$emit$1
                    r0.<init>(r4, r5)
                L18:
                    java.lang.Object r5 = r0.result
                    kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                    int r2 = r0.label
                    r3 = 1
                    if (r2 == 0) goto L33
                    if (r2 != r3) goto L2b
                    java.lang.Object r4 = r0.L$0
                    com.android.keyguard.emm.EngineeringModeManagerWrapper r4 = (com.android.keyguard.emm.EngineeringModeManagerWrapper) r4
                    kotlin.ResultKt.throwOnFailure(r5)
                    goto L4e
                L2b:
                    java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                    java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                    r4.<init>(r5)
                    throw r4
                L33:
                    kotlin.ResultKt.throwOnFailure(r5)
                    com.android.keyguard.emm.EngineeringModeManagerWrapper r4 = r4.this$0
                    r0.L$0 = r4
                    r0.label = r3
                    r4.getClass()
                    kotlinx.coroutines.scheduling.DefaultScheduler r5 = kotlinx.coroutines.Dispatchers.Default
                    com.android.keyguard.emm.EngineeringModeManagerWrapper$getEmmStatus$2 r2 = new com.android.keyguard.emm.EngineeringModeManagerWrapper$getEmmStatus$2
                    r3 = 0
                    r2.<init>(r4, r3)
                    java.lang.Object r5 = kotlinx.coroutines.BuildersKt.withContext(r5, r2, r0)
                    if (r5 != r1) goto L4e
                    return r1
                L4e:
                    java.lang.Boolean r5 = (java.lang.Boolean) r5
                    boolean r5 = r5.booleanValue()
                    r4.isCaptureEnabled = r5
                    kotlin.Unit r4 = kotlin.Unit.INSTANCE
                    return r4
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.emm.EngineeringModeManagerWrapper.AnonymousClass1.C00031.emit(kotlin.coroutines.Continuation):java.lang.Object");
            }
        }

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
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                EngineeringModeManagerWrapper engineeringModeManagerWrapper = EngineeringModeManagerWrapper.this;
                Flow flow = engineeringModeManagerWrapper.callbackFlow;
                C00031 c00031 = new C00031(engineeringModeManagerWrapper);
                this.label = 1;
                if (flow.collect(c00031, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.INSTANCE;
        }
    }

    public EngineeringModeManagerWrapper(Context context, CoroutineScope coroutineScope, KeyguardStateController keyguardStateController) {
        this.context = context;
        this.keyguardStateController = keyguardStateController;
        ConflatedCallbackFlow conflatedCallbackFlow = ConflatedCallbackFlow.INSTANCE;
        EngineeringModeManagerWrapper$callbackFlow$1 engineeringModeManagerWrapper$callbackFlow$1 = new EngineeringModeManagerWrapper$callbackFlow$1(this, null);
        conflatedCallbackFlow.getClass();
        this.callbackFlow = FlowKt.distinctUntilChanged(ConflatedCallbackFlow.conflatedCallbackFlow(engineeringModeManagerWrapper$callbackFlow$1));
        if (LsRune.KEYGUARD_EM_TOKEN_CAPTURE_WINDOW) {
            BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass1(null), 3);
        }
    }
}
