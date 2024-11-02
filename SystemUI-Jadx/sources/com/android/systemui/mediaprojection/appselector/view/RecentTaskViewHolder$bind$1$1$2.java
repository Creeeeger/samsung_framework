package com.android.systemui.mediaprojection.appselector.view;

import android.content.ComponentName;
import android.view.ViewGroup;
import com.android.systemui.R;
import com.android.systemui.mediaprojection.appselector.data.ActivityTaskManagerLabelLoader;
import com.android.systemui.mediaprojection.appselector.data.RecentTask;
import com.android.systemui.mediaprojection.appselector.data.RecentTaskLabelLoader;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.mediaprojection.appselector.view.RecentTaskViewHolder$bind$1$1$2", f = "RecentTaskViewHolder.kt", l = {70}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class RecentTaskViewHolder$bind$1$1$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ ComponentName $component;
    final /* synthetic */ RecentTask $task;
    int label;
    final /* synthetic */ RecentTaskViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentTaskViewHolder$bind$1$1$2(RecentTaskViewHolder recentTaskViewHolder, RecentTask recentTask, ComponentName componentName, Continuation<? super RecentTaskViewHolder$bind$1$1$2> continuation) {
        super(2, continuation);
        this.this$0 = recentTaskViewHolder;
        this.$task = recentTask;
        this.$component = componentName;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RecentTaskViewHolder$bind$1$1$2(this.this$0, this.$task, this.$component, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RecentTaskViewHolder$bind$1$1$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            RecentTaskLabelLoader recentTaskLabelLoader = this.this$0.labelLoader;
            int i2 = this.$task.userId;
            ComponentName componentName = this.$component;
            this.label = 1;
            obj = ((ActivityTaskManagerLabelLoader) recentTaskLabelLoader).loadLabel(i2, componentName, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        CharSequence charSequence = (CharSequence) obj;
        ViewGroup viewGroup = this.this$0.root;
        if (charSequence == null) {
            charSequence = viewGroup.getContext().getString(R.string.unknown);
        }
        viewGroup.setContentDescription(charSequence);
        return Unit.INSTANCE;
    }
}
