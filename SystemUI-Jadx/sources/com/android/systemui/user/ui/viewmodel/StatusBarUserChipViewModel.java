package com.android.systemui.user.ui.viewmodel;

import android.content.Context;
import com.android.systemui.animation.Expandable;
import com.android.systemui.user.data.repository.UserRepository;
import com.android.systemui.user.data.repository.UserRepositoryImpl;
import com.android.systemui.user.domain.interactor.UserInteractor;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarUserChipViewModel {
    public final boolean chipEnabled;
    public final Flow isChipVisible;
    public final Function1 onClick;
    public final ChannelFlowTransformLatest userAvatar;
    public final ChannelFlowTransformLatest userCount;
    public final ChannelFlowTransformLatest userName;

    public StatusBarUserChipViewModel(Context context, final UserInteractor userInteractor) {
        Flow mapLatest;
        boolean z = userInteractor.isStatusBarUserChipEnabled;
        this.chipEnabled = z;
        if (!z) {
            mapLatest = new FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2(Boolean.FALSE);
        } else {
            mapLatest = FlowKt.mapLatest(userInteractor.getUsers(), new StatusBarUserChipViewModel$isChipVisible$1(null));
        }
        this.isChipVisible = mapLatest;
        UserRepository userRepository = userInteractor.repository;
        final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 = ((UserRepositoryImpl) userRepository).selectedUserInfo;
        this.userName = FlowKt.mapLatest(new Flow() { // from class: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ UserInteractor this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2", f = "UserInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getForceAutoShutDownState, IKnoxCustomManager.Stub.TRANSACTION_getUsbConnectionType, IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2$1, reason: invalid class name */
                /* loaded from: classes2.dex */
                public final class AnonymousClass1 extends ContinuationImpl {
                    int I$0;
                    Object L$0;
                    Object L$1;
                    Object L$2;
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

                public AnonymousClass2(FlowCollector flowCollector, UserInteractor userInteractor) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = userInteractor;
                }

                /* JADX WARN: Removed duplicated region for block: B:20:0x009a A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:24:0x008f A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:25:0x0056  */
                /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(java.lang.Object r9, kotlin.coroutines.Continuation r10) {
                    /*
                        r8 = this;
                        boolean r0 = r10 instanceof com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r10
                        com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2$1 r0 = (com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2$1 r0 = new com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2$1
                        r0.<init>(r10)
                    L18:
                        java.lang.Object r10 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 3
                        r4 = 2
                        r5 = 1
                        r6 = 0
                        if (r2 == 0) goto L56
                        if (r2 == r5) goto L3f
                        if (r2 == r4) goto L37
                        if (r2 != r3) goto L2f
                        kotlin.ResultKt.throwOnFailure(r10)
                        goto L9b
                    L2f:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                        r8.<init>(r9)
                        throw r8
                    L37:
                        java.lang.Object r8 = r0.L$0
                        kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8
                        kotlin.ResultKt.throwOnFailure(r10)
                        goto L90
                    L3f:
                        int r8 = r0.I$0
                        java.lang.Object r9 = r0.L$2
                        com.android.systemui.user.domain.interactor.UserInteractor r9 = (com.android.systemui.user.domain.interactor.UserInteractor) r9
                        java.lang.Object r2 = r0.L$1
                        android.content.pm.UserInfo r2 = (android.content.pm.UserInfo) r2
                        java.lang.Object r5 = r0.L$0
                        kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
                        kotlin.ResultKt.throwOnFailure(r10)
                        r7 = r9
                        r9 = r8
                        r8 = r5
                        r5 = r10
                        r10 = r7
                        goto L79
                    L56:
                        kotlin.ResultKt.throwOnFailure(r10)
                        r2 = r9
                        android.content.pm.UserInfo r2 = (android.content.pm.UserInfo) r2
                        int r9 = r2.id
                        kotlinx.coroutines.flow.FlowCollector r10 = r8.$this_unsafeFlow
                        r0.L$0 = r10
                        r0.L$1 = r2
                        com.android.systemui.user.domain.interactor.UserInteractor r8 = r8.this$0
                        r0.L$2 = r8
                        r0.I$0 = r9
                        r0.label = r5
                        int r5 = com.android.systemui.user.domain.interactor.UserInteractor.$r8$clinit
                        r5 = 0
                        java.lang.Object r5 = r8.canSwitchUsers(r9, r0, r5)
                        if (r5 != r1) goto L76
                        return r1
                    L76:
                        r7 = r10
                        r10 = r8
                        r8 = r7
                    L79:
                        java.lang.Boolean r5 = (java.lang.Boolean) r5
                        boolean r5 = r5.booleanValue()
                        r0.L$0 = r8
                        r0.L$1 = r6
                        r0.L$2 = r6
                        r0.label = r4
                        int r4 = com.android.systemui.user.domain.interactor.UserInteractor.$r8$clinit
                        java.lang.Object r10 = r10.toUserModel(r2, r9, r5, r0)
                        if (r10 != r1) goto L90
                        return r1
                    L90:
                        r0.L$0 = r6
                        r0.label = r3
                        java.lang.Object r8 = r8.emit(r10, r0)
                        if (r8 != r1) goto L9b
                        return r1
                    L9b:
                        kotlin.Unit r8 = kotlin.Unit.INSTANCE
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, userInteractor), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        }, new StatusBarUserChipViewModel$userName$1(null));
        final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$12 = ((UserRepositoryImpl) userRepository).selectedUserInfo;
        this.userAvatar = FlowKt.mapLatest(new Flow() { // from class: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;
                public final /* synthetic */ UserInteractor this$0;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2", f = "UserInteractor.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getForceAutoShutDownState, IKnoxCustomManager.Stub.TRANSACTION_getUsbConnectionType, IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2$1, reason: invalid class name */
                /* loaded from: classes2.dex */
                public final class AnonymousClass1 extends ContinuationImpl {
                    int I$0;
                    Object L$0;
                    Object L$1;
                    Object L$2;
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

                public AnonymousClass2(FlowCollector flowCollector, UserInteractor userInteractor) {
                    this.$this_unsafeFlow = flowCollector;
                    this.this$0 = userInteractor;
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    /*  JADX ERROR: Method code generation error
                        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.IContainer.get(jadx.api.plugins.input.data.attributes.IJadxAttrType)" because "cont" is null
                        	at jadx.core.codegen.RegionGen.declareVars(RegionGen.java:70)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                        */
                    /*
                        this = this;
                        boolean r0 = r10 instanceof com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r10
                        com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2$1 r0 = (com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2$1 r0 = new com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3$2$1
                        r0.<init>(r10)
                    L18:
                        java.lang.Object r10 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 3
                        r4 = 2
                        r5 = 1
                        r6 = 0
                        if (r2 == 0) goto L56
                        if (r2 == r5) goto L3f
                        if (r2 == r4) goto L37
                        if (r2 != r3) goto L2f
                        kotlin.ResultKt.throwOnFailure(r10)
                        goto L9b
                    L2f:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                        r8.<init>(r9)
                        throw r8
                    L37:
                        java.lang.Object r8 = r0.L$0
                        kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8
                        kotlin.ResultKt.throwOnFailure(r10)
                        goto L90
                    L3f:
                        int r8 = r0.I$0
                        java.lang.Object r9 = r0.L$2
                        com.android.systemui.user.domain.interactor.UserInteractor r9 = (com.android.systemui.user.domain.interactor.UserInteractor) r9
                        java.lang.Object r2 = r0.L$1
                        android.content.pm.UserInfo r2 = (android.content.pm.UserInfo) r2
                        java.lang.Object r5 = r0.L$0
                        kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
                        kotlin.ResultKt.throwOnFailure(r10)
                        r7 = r9
                        r9 = r8
                        r8 = r5
                        r5 = r10
                        r10 = r7
                        goto L79
                    L56:
                        kotlin.ResultKt.throwOnFailure(r10)
                        r2 = r9
                        android.content.pm.UserInfo r2 = (android.content.pm.UserInfo) r2
                        int r9 = r2.id
                        kotlinx.coroutines.flow.FlowCollector r10 = r8.$this_unsafeFlow
                        r0.L$0 = r10
                        r0.L$1 = r2
                        com.android.systemui.user.domain.interactor.UserInteractor r8 = r8.this$0
                        r0.L$2 = r8
                        r0.I$0 = r9
                        r0.label = r5
                        int r5 = com.android.systemui.user.domain.interactor.UserInteractor.$r8$clinit
                        r5 = 0
                        java.lang.Object r5 = r8.canSwitchUsers(r9, r0, r5)
                        if (r5 != r1) goto L76
                        return r1
                    L76:
                        r7 = r10
                        r10 = r8
                        r8 = r7
                    L79:
                        java.lang.Boolean r5 = (java.lang.Boolean) r5
                        boolean r5 = r5.booleanValue()
                        r0.L$0 = r8
                        r0.L$1 = r6
                        r0.L$2 = r6
                        r0.label = r4
                        int r4 = com.android.systemui.user.domain.interactor.UserInteractor.$r8$clinit
                        java.lang.Object r10 = r10.toUserModel(r2, r9, r5, r0)
                        if (r10 != r1) goto L90
                        return r1
                    L90:
                        r0.L$0 = r6
                        r0.label = r3
                        java.lang.Object r8 = r8.emit(r10, r0)
                        if (r8 != r1) goto L9b
                        return r1
                    L9b:
                        kotlin.Unit r8 = kotlin.Unit.INSTANCE
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.domain.interactor.UserInteractor$special$$inlined$map$3.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, userInteractor), continuation);
                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect;
                }
                return Unit.INSTANCE;
            }
        }, new StatusBarUserChipViewModel$userAvatar$1(null));
        this.onClick = new Function1() { // from class: com.android.systemui.user.ui.viewmodel.StatusBarUserChipViewModel$onClick$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                UserInteractor.this.showUserSwitcher((Expandable) obj);
                return Unit.INSTANCE;
            }
        };
        this.userCount = FlowKt.mapLatest(userInteractor.getUsers(), new StatusBarUserChipViewModel$userCount$1(null));
    }
}
