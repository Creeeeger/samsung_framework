package com.android.systemui.mediaprojection.appselector.view;

import android.content.ComponentName;
import com.android.systemui.mediaprojection.appselector.data.ActivityTaskManagerThumbnailLoader;
import com.android.systemui.mediaprojection.appselector.data.RecentTask;
import com.android.systemui.mediaprojection.appselector.data.RecentTaskThumbnailLoader;
import com.android.systemui.shared.recents.model.ThumbnailData;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.mediaprojection.appselector.view.RecentTaskViewHolder$bind$1", f = "RecentTaskViewHolder.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class RecentTaskViewHolder$bind$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ RecentTask $task;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RecentTaskViewHolder this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.mediaprojection.appselector.view.RecentTaskViewHolder$bind$1$2", f = "RecentTaskViewHolder.kt", l = {75}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.mediaprojection.appselector.view.RecentTaskViewHolder$bind$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2 {
        final /* synthetic */ RecentTask $task;
        int label;
        final /* synthetic */ RecentTaskViewHolder this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(RecentTaskViewHolder recentTaskViewHolder, RecentTask recentTask, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = recentTaskViewHolder;
            this.$task = recentTask;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.this$0, this.$task, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                RecentTaskThumbnailLoader recentTaskThumbnailLoader = this.this$0.thumbnailLoader;
                int i2 = this.$task.taskId;
                this.label = 1;
                obj = ((ActivityTaskManagerThumbnailLoader) recentTaskThumbnailLoader).loadThumbnail(i2, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            this.this$0.thumbnailView.bindTask(this.$task, (ThumbnailData) obj);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecentTaskViewHolder$bind$1(RecentTask recentTask, RecentTaskViewHolder recentTaskViewHolder, Continuation<? super RecentTaskViewHolder$bind$1> continuation) {
        super(2, continuation);
        this.$task = recentTask;
        this.this$0 = recentTaskViewHolder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RecentTaskViewHolder$bind$1 recentTaskViewHolder$bind$1 = new RecentTaskViewHolder$bind$1(this.$task, this.this$0, continuation);
        recentTaskViewHolder$bind$1.L$0 = obj;
        return recentTaskViewHolder$bind$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RecentTaskViewHolder$bind$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            RecentTask recentTask = this.$task;
            ComponentName componentName = recentTask.baseIntentComponent;
            if (componentName != null) {
                RecentTaskViewHolder recentTaskViewHolder = this.this$0;
                BuildersKt.launch$default(coroutineScope, null, null, new RecentTaskViewHolder$bind$1$1$1(recentTaskViewHolder, recentTask, componentName, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new RecentTaskViewHolder$bind$1$1$2(recentTaskViewHolder, recentTask, componentName, null), 3);
            }
            BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.this$0, this.$task, null), 3);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
