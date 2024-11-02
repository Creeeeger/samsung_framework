package com.android.systemui.mediaprojection.appselector.data;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.mediaprojection.appselector.data.ShellRecentTaskListProvider$loadRecentTasks$2", f = "RecentTaskListProvider.kt", l = {51}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class ShellRecentTaskListProvider$loadRecentTasks$2 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ ShellRecentTaskListProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShellRecentTaskListProvider$loadRecentTasks$2(ShellRecentTaskListProvider shellRecentTaskListProvider, Continuation<? super ShellRecentTaskListProvider$loadRecentTasks$2> continuation) {
        super(2, continuation);
        this.this$0 = shellRecentTaskListProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ShellRecentTaskListProvider$loadRecentTasks$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ShellRecentTaskListProvider$loadRecentTasks$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x005c, code lost:
    
        if (r10 != null) goto L17;
     */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.android.systemui.mediaprojection.appselector.data.ShellRecentTaskListProvider$getTasks$2$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.label
            r2 = 1
            if (r1 == 0) goto L15
            if (r1 != r2) goto Ld
            kotlin.ResultKt.throwOnFailure(r10)
            goto L5a
        Ld:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L15:
            kotlin.ResultKt.throwOnFailure(r10)
            com.android.systemui.mediaprojection.appselector.data.ShellRecentTaskListProvider r10 = r9.this$0
            kotlin.Lazy r10 = r10.recents$delegate
            java.lang.Object r10 = r10.getValue()
            com.android.wm.shell.recents.RecentTasks r10 = (com.android.wm.shell.recents.RecentTasks) r10
            if (r10 == 0) goto L5f
            com.android.systemui.mediaprojection.appselector.data.ShellRecentTaskListProvider r1 = r9.this$0
            r9.label = r2
            r1.getClass()
            kotlin.coroutines.SafeContinuation r3 = new kotlin.coroutines.SafeContinuation
            kotlin.coroutines.Continuation r9 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.intercepted(r9)
            r3.<init>(r9)
            com.android.systemui.settings.UserTracker r9 = r1.userTracker
            com.android.systemui.settings.UserTrackerImpl r9 = (com.android.systemui.settings.UserTrackerImpl) r9
            int r9 = r9.getUserId()
            com.android.systemui.mediaprojection.appselector.data.ShellRecentTaskListProvider$getTasks$2$1 r4 = new com.android.systemui.mediaprojection.appselector.data.ShellRecentTaskListProvider$getTasks$2$1
            r4.<init>()
            com.android.wm.shell.recents.RecentTasksController$RecentTasksImpl r10 = (com.android.wm.shell.recents.RecentTasksController.RecentTasksImpl) r10
            com.android.wm.shell.recents.RecentTasksController r5 = com.android.wm.shell.recents.RecentTasksController.this
            com.android.wm.shell.common.ShellExecutor r5 = r5.mMainExecutor
            com.android.wm.shell.recents.RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1 r6 = new com.android.wm.shell.recents.RecentTasksController$RecentTasksImpl$$ExternalSyntheticLambda1
            java.util.concurrent.Executor r1 = r1.backgroundExecutor
            r6.<init>()
            com.android.wm.shell.common.HandlerExecutor r5 = (com.android.wm.shell.common.HandlerExecutor) r5
            r5.execute(r6)
            java.lang.Object r10 = r3.getOrThrow()
            if (r10 != r0) goto L5a
            return r0
        L5a:
            java.util.List r10 = (java.util.List) r10
            if (r10 == 0) goto L5f
            goto L61
        L5f:
            kotlin.collections.EmptyList r10 = kotlin.collections.EmptyList.INSTANCE
        L61:
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.util.Iterator r10 = r10.iterator()
        L6a:
            boolean r0 = r10.hasNext()
            r1 = 0
            if (r0 == 0) goto L90
            java.lang.Object r0 = r10.next()
            com.android.wm.shell.util.GroupedRecentTaskInfo r0 = (com.android.wm.shell.util.GroupedRecentTaskInfo) r0
            r3 = 2
            android.app.ActivityManager$RecentTaskInfo[] r3 = new android.app.ActivityManager.RecentTaskInfo[r3]
            android.app.ActivityManager$RecentTaskInfo[] r0 = r0.mTasks
            r4 = 0
            r5 = r0[r4]
            r3[r4] = r5
            int r4 = r0.length
            if (r4 <= r2) goto L86
            r1 = r0[r2]
        L86:
            r3[r2] = r1
            java.util.List r0 = kotlin.collections.ArraysKt___ArraysKt.filterNotNull(r3)
            kotlin.collections.CollectionsKt__MutableCollectionsKt.addAll(r0, r9)
            goto L6a
        L90:
            java.util.ArrayList r10 = new java.util.ArrayList
            r0 = 10
            int r0 = kotlin.collections.CollectionsKt__IterablesKt.collectionSizeOrDefault(r9, r0)
            r10.<init>(r0)
            java.util.Iterator r9 = r9.iterator()
        L9f:
            boolean r0 = r9.hasNext()
            if (r0 == 0) goto Ld6
            java.lang.Object r0 = r9.next()
            android.app.ActivityManager$RecentTaskInfo r0 = (android.app.ActivityManager.RecentTaskInfo) r0
            com.android.systemui.mediaprojection.appselector.data.RecentTask r8 = new com.android.systemui.mediaprojection.appselector.data.RecentTask
            int r3 = r0.taskId
            int r4 = r0.userId
            android.content.ComponentName r5 = r0.topActivity
            android.content.Intent r2 = r0.baseIntent
            if (r2 == 0) goto Lbd
            android.content.ComponentName r2 = r2.getComponent()
            r6 = r2
            goto Lbe
        Lbd:
            r6 = r1
        Lbe:
            android.app.ActivityManager$TaskDescription r0 = r0.taskDescription
            if (r0 == 0) goto Lcd
            int r0 = r0.getBackgroundColor()
            java.lang.Integer r2 = new java.lang.Integer
            r2.<init>(r0)
            r7 = r2
            goto Lce
        Lcd:
            r7 = r1
        Lce:
            r2 = r8
            r2.<init>(r3, r4, r5, r6, r7)
            r10.add(r8)
            goto L9f
        Ld6:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.mediaprojection.appselector.data.ShellRecentTaskListProvider$loadRecentTasks$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
