package com.android.systemui.user.ui.viewmodel;

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
public final class UserSwitcherViewModel$special$$inlined$map$1 implements Flow {
    public final /* synthetic */ Flow $this_unsafeTransform$inlined;
    public final /* synthetic */ UserSwitcherViewModel this$0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$1$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 implements FlowCollector {
        public final /* synthetic */ FlowCollector $this_unsafeFlow;
        public final /* synthetic */ UserSwitcherViewModel this$0;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$1$2", f = "UserSwitcherViewModel.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
        /* renamed from: com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$1$2$1, reason: invalid class name */
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

        public AnonymousClass2(FlowCollector flowCollector, UserSwitcherViewModel userSwitcherViewModel) {
            this.$this_unsafeFlow = flowCollector;
            this.this$0 = userSwitcherViewModel;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(java.lang.Object r14, kotlin.coroutines.Continuation r15) {
            /*
                r13 = this;
                boolean r0 = r15 instanceof com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L13
                r0 = r15
                com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$1$2$1 r0 = (com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$1$2$1 r0 = new com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$1$2$1
                r0.<init>(r15)
            L18:
                java.lang.Object r15 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L30
                if (r2 != r3) goto L28
                kotlin.ResultKt.throwOnFailure(r15)
                goto L9e
            L28:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r14)
                throw r13
            L30:
                kotlin.ResultKt.throwOnFailure(r15)
                java.util.List r14 = (java.util.List) r14
                java.util.ArrayList r15 = new java.util.ArrayList
                r2 = 10
                int r2 = kotlin.collections.CollectionsKt__IterablesKt.collectionSizeOrDefault(r14, r2)
                r15.<init>(r2)
                java.util.Iterator r14 = r14.iterator()
            L44:
                boolean r2 = r14.hasNext()
                if (r2 == 0) goto L93
                java.lang.Object r2 = r14.next()
                com.android.systemui.user.shared.model.UserModel r2 = (com.android.systemui.user.shared.model.UserModel) r2
                com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel r4 = r13.this$0
                r4.getClass()
                com.android.systemui.user.ui.viewmodel.UserViewModel r12 = new com.android.systemui.user.ui.viewmodel.UserViewModel
                int r6 = r2.id
                boolean r5 = r2.isGuest
                if (r5 == 0) goto L6a
                boolean r5 = r2.isSelected
                if (r5 == 0) goto L6a
                com.android.systemui.common.shared.model.Text$Resource r5 = new com.android.systemui.common.shared.model.Text$Resource
                r7 = 2131953350(0x7f1306c6, float:1.9543169E38)
                r5.<init>(r7)
                goto L6c
            L6a:
                com.android.systemui.common.shared.model.Text r5 = r2.name
            L6c:
                r7 = r5
                com.android.systemui.common.ui.drawable.CircularDrawable r8 = new com.android.systemui.common.ui.drawable.CircularDrawable
                android.graphics.drawable.Drawable r5 = r2.image
                r8.<init>(r5)
                boolean r9 = r2.isSelected
                boolean r5 = r2.isSelectable
                if (r5 == 0) goto L7d
                r10 = 1065353216(0x3f800000, float:1.0)
                goto L80
            L7d:
                r10 = 1052938076(0x3ec28f5c, float:0.38)
            L80:
                if (r5 != 0) goto L85
                r2 = 0
                r11 = r2
                goto L8b
            L85:
                com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$createOnSelectedCallback$1 r5 = new com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$createOnSelectedCallback$1
                r5.<init>()
                r11 = r5
            L8b:
                r5 = r12
                r5.<init>(r6, r7, r8, r9, r10, r11)
                r15.add(r12)
                goto L44
            L93:
                r0.label = r3
                kotlinx.coroutines.flow.FlowCollector r13 = r13.$this_unsafeFlow
                java.lang.Object r13 = r13.emit(r15, r0)
                if (r13 != r1) goto L9e
                return r1
            L9e:
                kotlin.Unit r13 = kotlin.Unit.INSTANCE
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public UserSwitcherViewModel$special$$inlined$map$1(Flow flow, UserSwitcherViewModel userSwitcherViewModel) {
        this.$this_unsafeTransform$inlined = flow;
        this.this$0 = userSwitcherViewModel;
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
