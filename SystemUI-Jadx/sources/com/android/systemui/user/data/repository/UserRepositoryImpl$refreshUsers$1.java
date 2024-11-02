package com.android.systemui.user.data.repository;

import com.samsung.android.knox.custom.IKnoxCustomManager;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1", f = "UserRepository.kt", l = {189, IKnoxCustomManager.Stub.TRANSACTION_getVibrationIntensity}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class UserRepositoryImpl$refreshUsers$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ UserRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserRepositoryImpl$refreshUsers$1(UserRepositoryImpl userRepositoryImpl, Continuation<? super UserRepositoryImpl$refreshUsers$1> continuation) {
        super(2, continuation);
        this.this$0 = userRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UserRepositoryImpl$refreshUsers$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((UserRepositoryImpl$refreshUsers$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0094  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1e
            if (r1 == r4) goto L1a
            if (r1 != r3) goto L12
            kotlin.ResultKt.throwOnFailure(r7)
            goto L90
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L33
        L1e:
            kotlin.ResultKt.throwOnFailure(r7)
            com.android.systemui.user.data.repository.UserRepositoryImpl r7 = r6.this$0
            kotlinx.coroutines.CoroutineDispatcher r1 = r7.backgroundDispatcher
            com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1$result$1 r5 = new com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1$result$1
            r5.<init>(r7, r2)
            r6.label = r4
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r1, r5, r6)
            if (r7 != r0) goto L33
            return r0
        L33:
            java.util.List r7 = (java.util.List) r7
            if (r7 == 0) goto L78
            com.android.systemui.user.data.repository.UserRepositoryImpl r1 = r6.this$0
            kotlinx.coroutines.flow.StateFlowImpl r1 = r1._userInfos
            com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1 r5 = new com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1
            r5.<init>()
            java.util.List r7 = kotlin.collections.CollectionsKt___CollectionsKt.sortedWith(r7, r5)
            com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$2 r5 = new com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$2
            r5.<init>()
            java.util.List r7 = kotlin.collections.CollectionsKt___CollectionsKt.sortedWith(r7, r5)
            r1.setValue(r7)
            com.android.systemui.user.data.repository.UserRepositoryImpl r7 = r6.this$0
            kotlinx.coroutines.flow.StateFlowImpl r7 = r7._userInfos
            java.lang.Object r7 = r7.getValue()
            java.util.List r7 = (java.util.List) r7
            if (r7 == 0) goto L78
            com.android.systemui.user.data.repository.UserRepositoryImpl r1 = r6.this$0
            boolean r5 = com.android.systemui.util.DeviceState.supportsMultipleUsers()
            r5 = r5 ^ r4
            int r7 = r7.size()
            if (r7 <= r5) goto L78
            java.lang.String r7 = "UserRepository"
            java.lang.String r5 = "refreshUsers: put SEEN_MULTI_USER as true"
            android.util.Log.d(r7, r5)
            android.content.Context r7 = r1.appContext
            java.lang.String r1 = "HasSeenMultiUser"
            com.android.systemui.Prefs.putBoolean(r7, r1, r4)
        L78:
            com.android.systemui.user.data.repository.UserRepositoryImpl r7 = r6.this$0
            int r1 = r7.mainUserId
            r4 = -10000(0xffffffffffffd8f0, float:NaN)
            if (r1 != r4) goto L9c
            com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1$mainUser$1 r1 = new com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1$mainUser$1
            r1.<init>(r7, r2)
            r6.label = r3
            kotlinx.coroutines.CoroutineDispatcher r7 = r7.backgroundDispatcher
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r7, r1, r6)
            if (r7 != r0) goto L90
            return r0
        L90:
            android.os.UserHandle r7 = (android.os.UserHandle) r7
            if (r7 == 0) goto L9c
            com.android.systemui.user.data.repository.UserRepositoryImpl r6 = r6.this$0
            int r7 = r7.getIdentifier()
            r6.mainUserId = r7
        L9c:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.data.repository.UserRepositoryImpl$refreshUsers$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
