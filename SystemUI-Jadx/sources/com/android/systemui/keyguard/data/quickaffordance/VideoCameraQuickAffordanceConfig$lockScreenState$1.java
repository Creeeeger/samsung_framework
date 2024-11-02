package com.android.systemui.keyguard.data.quickaffordance;

import com.android.systemui.R;
import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.keyguard.data.quickaffordance.KeyguardQuickAffordanceConfig;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.data.quickaffordance.VideoCameraQuickAffordanceConfig$lockScreenState$1", f = "VideoCameraQuickAffordanceConfig.kt", l = {73, 72}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class VideoCameraQuickAffordanceConfig$lockScreenState$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ VideoCameraQuickAffordanceConfig this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCameraQuickAffordanceConfig$lockScreenState$1(VideoCameraQuickAffordanceConfig videoCameraQuickAffordanceConfig, Continuation<? super VideoCameraQuickAffordanceConfig$lockScreenState$1> continuation) {
        super(2, continuation);
        this.this$0 = videoCameraQuickAffordanceConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        VideoCameraQuickAffordanceConfig$lockScreenState$1 videoCameraQuickAffordanceConfig$lockScreenState$1 = new VideoCameraQuickAffordanceConfig$lockScreenState$1(this.this$0, continuation);
        videoCameraQuickAffordanceConfig$lockScreenState$1.L$0 = obj;
        return videoCameraQuickAffordanceConfig$lockScreenState$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((VideoCameraQuickAffordanceConfig$lockScreenState$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FlowCollector flowCollector;
        Object obj2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowCollector = (FlowCollector) this.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            flowCollector = (FlowCollector) this.L$0;
            VideoCameraQuickAffordanceConfig videoCameraQuickAffordanceConfig = this.this$0;
            this.L$0 = flowCollector;
            this.label = 1;
            obj = videoCameraQuickAffordanceConfig.isLaunchable(this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        if (((Boolean) obj).booleanValue()) {
            obj2 = new KeyguardQuickAffordanceConfig.LockScreenState.Visible(new Icon.Resource(R.drawable.ic_videocam, new ContentDescription.Resource(R.string.video_camera)), null, 2, null);
        } else {
            obj2 = KeyguardQuickAffordanceConfig.LockScreenState.Hidden.INSTANCE;
        }
        this.L$0 = null;
        this.label = 2;
        if (flowCollector.emit(obj2, this) == coroutineSingletons) {
            return coroutineSingletons;
        }
        return Unit.INSTANCE;
    }
}
