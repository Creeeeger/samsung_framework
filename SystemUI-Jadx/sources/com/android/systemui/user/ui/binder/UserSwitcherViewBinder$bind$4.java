package com.android.systemui.user.ui.binder;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.core.content.res.ResourcesCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.settingslib.Utils;
import com.android.systemui.R;
import com.android.systemui.common.shared.model.Text;
import com.android.systemui.common.ui.binder.TextViewBinder;
import com.android.systemui.user.UserSwitcherPopupMenu;
import com.android.systemui.user.UserSwitcherRootView;
import com.android.systemui.user.shared.model.UserActionModel;
import com.android.systemui.user.ui.binder.UserSwitcherViewBinder;
import com.android.systemui.user.ui.viewmodel.UserActionViewModel;
import com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel;
import com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$1;
import com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$2;
import com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$3;
import com.android.systemui.user.ui.viewmodel.UserSwitcherViewModel$special$$inlined$map$4;
import com.android.systemui.user.ui.viewmodel.UserViewModel;
import com.android.systemui.util.ConvenienceExtensionsKt;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.StateFlowImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4", f = "UserSwitcherViewBinder.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class UserSwitcherViewBinder$bind$4 extends SuspendLambda implements Function3 {
    final /* synthetic */ View $addButton;
    final /* synthetic */ Flow $flowWidget;
    final /* synthetic */ UserSwitcherRootView $gridContainerView;
    final /* synthetic */ LayoutInflater $layoutInflater;
    final /* synthetic */ Function0 $onFinish;
    final /* synthetic */ Ref$ObjectRef<UserSwitcherPopupMenu> $popupMenu;
    final /* synthetic */ UserSwitcherViewBinder.MenuAdapter $popupMenuAdapter;
    final /* synthetic */ ViewGroup $view;
    final /* synthetic */ UserSwitcherViewModel $viewModel;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1", f = "UserSwitcherViewBinder.kt", l = {82}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ LifecycleOwner $$this$repeatWhenAttached;
        final /* synthetic */ Function0 $onFinish;
        final /* synthetic */ Ref$ObjectRef<UserSwitcherPopupMenu> $popupMenu;
        final /* synthetic */ UserSwitcherViewModel $viewModel;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1", f = "UserSwitcherViewBinder.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public final class C01391 extends SuspendLambda implements Function2 {
            final /* synthetic */ Function0 $onFinish;
            final /* synthetic */ Ref$ObjectRef<UserSwitcherPopupMenu> $popupMenu;
            final /* synthetic */ UserSwitcherViewModel $viewModel;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1", f = "UserSwitcherViewBinder.kt", l = {86}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes2.dex */
            public final class C01401 extends SuspendLambda implements Function2 {
                final /* synthetic */ Function0 $onFinish;
                final /* synthetic */ Ref$ObjectRef<UserSwitcherPopupMenu> $popupMenu;
                final /* synthetic */ UserSwitcherViewModel $viewModel;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C01401(UserSwitcherViewModel userSwitcherViewModel, Ref$ObjectRef<UserSwitcherPopupMenu> ref$ObjectRef, Function0 function0, Continuation<? super C01401> continuation) {
                    super(2, continuation);
                    this.$viewModel = userSwitcherViewModel;
                    this.$popupMenu = ref$ObjectRef;
                    this.$onFinish = function0;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C01401(this.$viewModel, this.$popupMenu, this.$onFinish, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C01401) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                        final FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = this.$viewModel.isFinishRequested;
                        kotlinx.coroutines.flow.Flow flow = new kotlinx.coroutines.flow.Flow() { // from class: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1$invokeSuspend$$inlined$filter$1

                            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                            /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                            /* loaded from: classes2.dex */
                            public final class AnonymousClass2 implements FlowCollector {
                                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                                @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1$invokeSuspend$$inlined$filter$1$2", f = "UserSwitcherViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                                /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                                /* loaded from: classes2.dex */
                                public final class AnonymousClass1 extends ContinuationImpl {
                                    Object L$0;
                                    Object L$1;
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

                                public AnonymousClass2(FlowCollector flowCollector) {
                                    this.$this_unsafeFlow = flowCollector;
                                }

                                /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
                                /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
                                @Override // kotlinx.coroutines.flow.FlowCollector
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                                */
                                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                                    /*
                                        r4 = this;
                                        boolean r0 = r6 instanceof com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                                        if (r0 == 0) goto L13
                                        r0 = r6
                                        com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1$invokeSuspend$$inlined$filter$1$2$1 r0 = (com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                                        int r1 = r0.label
                                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                        r3 = r1 & r2
                                        if (r3 == 0) goto L13
                                        int r1 = r1 - r2
                                        r0.label = r1
                                        goto L18
                                    L13:
                                        com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1$invokeSuspend$$inlined$filter$1$2$1 r0 = new com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1$invokeSuspend$$inlined$filter$1$2$1
                                        r0.<init>(r6)
                                    L18:
                                        java.lang.Object r6 = r0.result
                                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                        int r2 = r0.label
                                        r3 = 1
                                        if (r2 == 0) goto L2f
                                        if (r2 != r3) goto L27
                                        kotlin.ResultKt.throwOnFailure(r6)
                                        goto L46
                                    L27:
                                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                                        r4.<init>(r5)
                                        throw r4
                                    L2f:
                                        kotlin.ResultKt.throwOnFailure(r6)
                                        r6 = r5
                                        java.lang.Boolean r6 = (java.lang.Boolean) r6
                                        boolean r6 = r6.booleanValue()
                                        if (r6 == 0) goto L46
                                        r0.label = r3
                                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                                        java.lang.Object r4 = r4.emit(r5, r0)
                                        if (r4 != r1) goto L46
                                        return r1
                                    L46:
                                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                                        return r4
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$1$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                                }
                            }

                            @Override // kotlinx.coroutines.flow.Flow
                            public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                                Object collect = kotlinx.coroutines.flow.Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                                if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                                    return collect;
                                }
                                return Unit.INSTANCE;
                            }
                        };
                        final Ref$ObjectRef<UserSwitcherPopupMenu> ref$ObjectRef = this.$popupMenu;
                        final Function0 function0 = this.$onFinish;
                        final UserSwitcherViewModel userSwitcherViewModel = this.$viewModel;
                        FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.user.ui.binder.UserSwitcherViewBinder.bind.4.1.1.1.2
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj2, Continuation continuation) {
                                ((Boolean) obj2).booleanValue();
                                UserSwitcherPopupMenu userSwitcherPopupMenu = (UserSwitcherPopupMenu) ref$ObjectRef.element;
                                if (userSwitcherPopupMenu != null) {
                                    userSwitcherPopupMenu.dismiss();
                                }
                                function0.invoke();
                                UserSwitcherViewModel userSwitcherViewModel2 = userSwitcherViewModel;
                                StateFlowImpl stateFlowImpl = userSwitcherViewModel2.hasCancelButtonBeenClicked;
                                Boolean bool = Boolean.FALSE;
                                stateFlowImpl.setValue(bool);
                                userSwitcherViewModel2.isFinishRequiredDueToExecutedAction.setValue(bool);
                                return Unit.INSTANCE;
                            }
                        };
                        this.label = 1;
                        if (flow.collect(flowCollector, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C01391(UserSwitcherViewModel userSwitcherViewModel, Ref$ObjectRef<UserSwitcherPopupMenu> ref$ObjectRef, Function0 function0, Continuation<? super C01391> continuation) {
                super(2, continuation);
                this.$viewModel = userSwitcherViewModel;
                this.$popupMenu = ref$ObjectRef;
                this.$onFinish = function0;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C01391 c01391 = new C01391(this.$viewModel, this.$popupMenu, this.$onFinish, continuation);
                c01391.L$0 = obj;
                return c01391;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C01391) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    BuildersKt.launch$default((CoroutineScope) this.L$0, null, null, new C01401(this.$viewModel, this.$popupMenu, this.$onFinish, null), 3);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LifecycleOwner lifecycleOwner, UserSwitcherViewModel userSwitcherViewModel, Ref$ObjectRef<UserSwitcherPopupMenu> ref$ObjectRef, Function0 function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$$this$repeatWhenAttached = lifecycleOwner;
            this.$viewModel = userSwitcherViewModel;
            this.$popupMenu = ref$ObjectRef;
            this.$onFinish = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.$$this$repeatWhenAttached, this.$viewModel, this.$popupMenu, this.$onFinish, continuation);
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
                LifecycleOwner lifecycleOwner = this.$$this$repeatWhenAttached;
                Lifecycle.State state = Lifecycle.State.CREATED;
                C01391 c01391 = new C01391(this.$viewModel, this.$popupMenu, this.$onFinish, null);
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, c01391, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2", f = "UserSwitcherViewBinder.kt", l = {97}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2 {
        final /* synthetic */ LifecycleOwner $$this$repeatWhenAttached;
        final /* synthetic */ View $addButton;
        final /* synthetic */ Flow $flowWidget;
        final /* synthetic */ UserSwitcherRootView $gridContainerView;
        final /* synthetic */ LayoutInflater $layoutInflater;
        final /* synthetic */ Ref$ObjectRef<UserSwitcherPopupMenu> $popupMenu;
        final /* synthetic */ UserSwitcherViewBinder.MenuAdapter $popupMenuAdapter;
        final /* synthetic */ ViewGroup $view;
        final /* synthetic */ UserSwitcherViewModel $viewModel;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1", f = "UserSwitcherViewBinder.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ View $addButton;
            final /* synthetic */ Flow $flowWidget;
            final /* synthetic */ UserSwitcherRootView $gridContainerView;
            final /* synthetic */ LayoutInflater $layoutInflater;
            final /* synthetic */ Ref$ObjectRef<UserSwitcherPopupMenu> $popupMenu;
            final /* synthetic */ UserSwitcherViewBinder.MenuAdapter $popupMenuAdapter;
            final /* synthetic */ ViewGroup $view;
            final /* synthetic */ UserSwitcherViewModel $viewModel;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$1", f = "UserSwitcherViewBinder.kt", l = {98}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes2.dex */
            public final class C01411 extends SuspendLambda implements Function2 {
                final /* synthetic */ View $addButton;
                final /* synthetic */ UserSwitcherViewModel $viewModel;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C01411(UserSwitcherViewModel userSwitcherViewModel, View view, Continuation<? super C01411> continuation) {
                    super(2, continuation);
                    this.$viewModel = userSwitcherViewModel;
                    this.$addButton = view;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C01411(this.$viewModel, this.$addButton, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C01411) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                        UserSwitcherViewModel$special$$inlined$map$4 userSwitcherViewModel$special$$inlined$map$4 = this.$viewModel.isOpenMenuButtonVisible;
                        final View view = this.$addButton;
                        FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.user.ui.binder.UserSwitcherViewBinder.bind.4.2.1.1.1
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj2, Continuation continuation) {
                                int i2;
                                if (((Boolean) obj2).booleanValue()) {
                                    i2 = 0;
                                } else {
                                    i2 = 8;
                                }
                                view.setVisibility(i2);
                                return Unit.INSTANCE;
                            }
                        };
                        this.label = 1;
                        if (userSwitcherViewModel$special$$inlined$map$4.collect(flowCollector, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.INSTANCE;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$2", f = "UserSwitcherViewBinder.kt", l = {101}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$2, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes2.dex */
            public final class C01432 extends SuspendLambda implements Function2 {
                final /* synthetic */ View $addButton;
                final /* synthetic */ Ref$ObjectRef<UserSwitcherPopupMenu> $popupMenu;
                final /* synthetic */ UserSwitcherViewBinder.MenuAdapter $popupMenuAdapter;
                final /* synthetic */ ViewGroup $view;
                final /* synthetic */ UserSwitcherViewModel $viewModel;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C01432(UserSwitcherViewModel userSwitcherViewModel, Ref$ObjectRef<UserSwitcherPopupMenu> ref$ObjectRef, ViewGroup viewGroup, View view, UserSwitcherViewBinder.MenuAdapter menuAdapter, Continuation<? super C01432> continuation) {
                    super(2, continuation);
                    this.$viewModel = userSwitcherViewModel;
                    this.$popupMenu = ref$ObjectRef;
                    this.$view = viewGroup;
                    this.$addButton = view;
                    this.$popupMenuAdapter = menuAdapter;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C01432(this.$viewModel, this.$popupMenu, this.$view, this.$addButton, this.$popupMenuAdapter, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C01432) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                        final UserSwitcherViewModel userSwitcherViewModel = this.$viewModel;
                        StateFlowImpl stateFlowImpl = userSwitcherViewModel.isMenuVisible;
                        final Ref$ObjectRef<UserSwitcherPopupMenu> ref$ObjectRef = this.$popupMenu;
                        final ViewGroup viewGroup = this.$view;
                        final View view = this.$addButton;
                        final UserSwitcherViewBinder.MenuAdapter menuAdapter = this.$popupMenuAdapter;
                        FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.user.ui.binder.UserSwitcherViewBinder.bind.4.2.1.2.1
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj2, Continuation continuation) {
                                boolean z;
                                boolean booleanValue = ((Boolean) obj2).booleanValue();
                                boolean z2 = true;
                                Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                                if (booleanValue) {
                                    UserSwitcherPopupMenu userSwitcherPopupMenu = (UserSwitcherPopupMenu) ref$ObjectRef2.element;
                                    if (userSwitcherPopupMenu != null && userSwitcherPopupMenu.isShowing()) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (!z) {
                                        UserSwitcherPopupMenu userSwitcherPopupMenu2 = (UserSwitcherPopupMenu) ref$ObjectRef2.element;
                                        if (userSwitcherPopupMenu2 != null) {
                                            userSwitcherPopupMenu2.dismiss();
                                        }
                                        final ViewGroup viewGroup2 = viewGroup;
                                        final Ref$ObjectRef ref$ObjectRef3 = ref$ObjectRef;
                                        final View view2 = view;
                                        final UserSwitcherViewBinder.MenuAdapter menuAdapter2 = menuAdapter;
                                        final UserSwitcherViewModel userSwitcherViewModel2 = userSwitcherViewModel;
                                        viewGroup2.post(new Runnable() { // from class: com.android.systemui.user.ui.binder.UserSwitcherViewBinder.bind.4.2.1.2.1.1

                                            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                                            /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$2$1$1$1, reason: invalid class name and collision with other inner class name */
                                            /* loaded from: classes2.dex */
                                            final /* synthetic */ class C01461 extends FunctionReferenceImpl implements Function0 {
                                                public C01461(Object obj) {
                                                    super(0, obj, UserSwitcherViewModel.class, "onMenuClosed", "onMenuClosed()V", 0);
                                                }

                                                @Override // kotlin.jvm.functions.Function0
                                                public final Object invoke() {
                                                    ((UserSwitcherViewModel) this.receiver)._isMenuVisible.setValue(Boolean.FALSE);
                                                    return Unit.INSTANCE;
                                                }
                                            }

                                            /* JADX WARN: Type inference failed for: r6v2, types: [T, android.widget.ListPopupWindow, com.android.systemui.user.UserSwitcherPopupMenu] */
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                Ref$ObjectRef ref$ObjectRef4 = ref$ObjectRef3;
                                                UserSwitcherViewBinder userSwitcherViewBinder = UserSwitcherViewBinder.INSTANCE;
                                                Context context = viewGroup2.getContext();
                                                View view3 = view2;
                                                UserSwitcherViewBinder.MenuAdapter menuAdapter3 = menuAdapter2;
                                                final C01461 c01461 = new C01461(userSwitcherViewModel2);
                                                userSwitcherViewBinder.getClass();
                                                ?? userSwitcherPopupMenu3 = new UserSwitcherPopupMenu(context);
                                                userSwitcherPopupMenu3.setDropDownGravity(8388613);
                                                userSwitcherPopupMenu3.setAnchorView(view3);
                                                userSwitcherPopupMenu3.setAdapter(menuAdapter3);
                                                userSwitcherPopupMenu3.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$createAndShowPopupMenu$1$1
                                                    @Override // android.widget.PopupWindow.OnDismissListener
                                                    public final void onDismiss() {
                                                        Function0.this.invoke();
                                                    }
                                                });
                                                userSwitcherPopupMenu3.show();
                                                ref$ObjectRef4.element = userSwitcherPopupMenu3;
                                            }
                                        });
                                        return Unit.INSTANCE;
                                    }
                                }
                                if (!booleanValue) {
                                    UserSwitcherPopupMenu userSwitcherPopupMenu3 = (UserSwitcherPopupMenu) ref$ObjectRef2.element;
                                    if (userSwitcherPopupMenu3 == null || !userSwitcherPopupMenu3.isShowing()) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        UserSwitcherPopupMenu userSwitcherPopupMenu4 = (UserSwitcherPopupMenu) ref$ObjectRef2.element;
                                        if (userSwitcherPopupMenu4 != null) {
                                            userSwitcherPopupMenu4.dismiss();
                                        }
                                        ref$ObjectRef2.element = null;
                                    }
                                }
                                return Unit.INSTANCE;
                            }
                        };
                        this.label = 1;
                        if (stateFlowImpl.collect(flowCollector, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.INSTANCE;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$3", f = "UserSwitcherViewBinder.kt", l = {123}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$3, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass3 extends SuspendLambda implements Function2 {
                final /* synthetic */ UserSwitcherViewBinder.MenuAdapter $popupMenuAdapter;
                final /* synthetic */ UserSwitcherViewModel $viewModel;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(UserSwitcherViewModel userSwitcherViewModel, UserSwitcherViewBinder.MenuAdapter menuAdapter, Continuation<? super AnonymousClass3> continuation) {
                    super(2, continuation);
                    this.$viewModel = userSwitcherViewModel;
                    this.$popupMenuAdapter = menuAdapter;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new AnonymousClass3(this.$viewModel, this.$popupMenuAdapter, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                        UserSwitcherViewModel$special$$inlined$map$3 userSwitcherViewModel$special$$inlined$map$3 = this.$viewModel.menu;
                        final UserSwitcherViewBinder.MenuAdapter menuAdapter = this.$popupMenuAdapter;
                        FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.user.ui.binder.UserSwitcherViewBinder.bind.4.2.1.3.1
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj2, Continuation continuation) {
                                boolean z;
                                List list = (List) obj2;
                                UserSwitcherViewBinder.MenuAdapter menuAdapter2 = UserSwitcherViewBinder.MenuAdapter.this;
                                menuAdapter2.getClass();
                                ArrayList arrayList = new ArrayList();
                                Iterator it = list.iterator();
                                while (true) {
                                    boolean z2 = true;
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    Object next = it.next();
                                    if (((UserActionViewModel) next).viewKey == UserActionModel.NAVIGATE_TO_USER_MANAGEMENT.ordinal()) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        arrayList.add(next);
                                    }
                                }
                                ArrayList arrayList2 = new ArrayList();
                                for (Object obj3 : list) {
                                    if (((UserActionViewModel) obj3).viewKey == UserActionModel.NAVIGATE_TO_USER_MANAGEMENT.ordinal()) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (z) {
                                        arrayList2.add(obj3);
                                    }
                                }
                                menuAdapter2.sections = CollectionsKt__CollectionsKt.listOf(arrayList, arrayList2);
                                menuAdapter2.notifyDataSetChanged();
                                return Unit.INSTANCE;
                            }
                        };
                        this.label = 1;
                        if (userSwitcherViewModel$special$$inlined$map$3.collect(flowCollector, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.INSTANCE;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$4", f = "UserSwitcherViewBinder.kt", l = {129}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$4, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass4 extends SuspendLambda implements Function2 {
                final /* synthetic */ Flow $flowWidget;
                final /* synthetic */ UserSwitcherViewModel $viewModel;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass4(UserSwitcherViewModel userSwitcherViewModel, Flow flow, Continuation<? super AnonymousClass4> continuation) {
                    super(2, continuation);
                    this.$viewModel = userSwitcherViewModel;
                    this.$flowWidget = flow;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new AnonymousClass4(this.$viewModel, this.$flowWidget, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((AnonymousClass4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                        UserSwitcherViewModel$special$$inlined$map$2 userSwitcherViewModel$special$$inlined$map$2 = this.$viewModel.maximumUserColumns;
                        final Flow flow = this.$flowWidget;
                        FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.user.ui.binder.UserSwitcherViewBinder.bind.4.2.1.4.1
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj2, Continuation continuation) {
                                int intValue = ((Number) obj2).intValue();
                                Flow flow2 = Flow.this;
                                flow2.mFlow.mMaxElementsWrap = intValue;
                                flow2.requestLayout();
                                return Unit.INSTANCE;
                            }
                        };
                        this.label = 1;
                        if (userSwitcherViewModel$special$$inlined$map$2.collect(flowCollector, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.INSTANCE;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$5", f = "UserSwitcherViewBinder.kt", l = {135}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$5, reason: invalid class name */
            /* loaded from: classes2.dex */
            public final class AnonymousClass5 extends SuspendLambda implements Function2 {
                final /* synthetic */ Flow $flowWidget;
                final /* synthetic */ UserSwitcherRootView $gridContainerView;
                final /* synthetic */ LayoutInflater $layoutInflater;
                final /* synthetic */ ViewGroup $view;
                final /* synthetic */ UserSwitcherViewModel $viewModel;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass5(UserSwitcherViewModel userSwitcherViewModel, UserSwitcherRootView userSwitcherRootView, Flow flow, LayoutInflater layoutInflater, ViewGroup viewGroup, Continuation<? super AnonymousClass5> continuation) {
                    super(2, continuation);
                    this.$viewModel = userSwitcherViewModel;
                    this.$gridContainerView = userSwitcherRootView;
                    this.$flowWidget = flow;
                    this.$layoutInflater = layoutInflater;
                    this.$view = viewGroup;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new AnonymousClass5(this.$viewModel, this.$gridContainerView, this.$flowWidget, this.$layoutInflater, this.$view, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((AnonymousClass5) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                        UserSwitcherViewModel$special$$inlined$map$1 userSwitcherViewModel$special$$inlined$map$1 = this.$viewModel.users;
                        final UserSwitcherRootView userSwitcherRootView = this.$gridContainerView;
                        final Flow flow = this.$flowWidget;
                        final LayoutInflater layoutInflater = this.$layoutInflater;
                        final ViewGroup viewGroup = this.$view;
                        FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.user.ui.binder.UserSwitcherViewBinder.bind.4.2.1.5.1
                            @Override // kotlinx.coroutines.flow.FlowCollector
                            public final Object emit(Object obj2, Continuation continuation) {
                                Flow flow2;
                                View inflate;
                                int i2;
                                List<UserViewModel> list = (List) obj2;
                                UserSwitcherRootView userSwitcherRootView2 = UserSwitcherRootView.this;
                                ArrayList arrayList = (ArrayList) SequencesKt___SequencesKt.toMutableList(SequencesKt___SequencesKt.filter(ConvenienceExtensionsKt.getChildren(userSwitcherRootView2), new Function1() { // from class: com.android.systemui.user.ui.binder.UserSwitcherViewBinder$bind$4$2$1$5$1$viewPool$1
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj3) {
                                        return Boolean.valueOf(Intrinsics.areEqual(((View) obj3).getTag(), "user_view"));
                                    }
                                }));
                                Iterator it = arrayList.iterator();
                                while (true) {
                                    boolean hasNext = it.hasNext();
                                    flow2 = flow;
                                    if (!hasNext) {
                                        break;
                                    }
                                    View view = (View) it.next();
                                    userSwitcherRootView2.removeView(view);
                                    flow2.getClass();
                                    int id = view.getId();
                                    if (id != -1) {
                                        flow2.mReferenceIds = null;
                                        int i3 = 0;
                                        while (true) {
                                            if (i3 >= flow2.mCount) {
                                                break;
                                            }
                                            if (flow2.mIds[i3] == id) {
                                                while (true) {
                                                    i2 = flow2.mCount - 1;
                                                    if (i3 >= i2) {
                                                        break;
                                                    }
                                                    int[] iArr = flow2.mIds;
                                                    int i4 = i3 + 1;
                                                    iArr[i3] = iArr[i4];
                                                    i3 = i4;
                                                }
                                                flow2.mIds[i2] = 0;
                                                flow2.mCount = i2;
                                            } else {
                                                i3++;
                                            }
                                        }
                                        flow2.requestLayout();
                                    }
                                }
                                for (final UserViewModel userViewModel : list) {
                                    if (!arrayList.isEmpty()) {
                                        inflate = (View) arrayList.remove(0);
                                    } else {
                                        inflate = layoutInflater.inflate(R.layout.user_switcher_fullscreen_item, viewGroup, false);
                                        inflate.setTag("user_view");
                                    }
                                    inflate.setId(View.generateViewId());
                                    userSwitcherRootView2.addView(inflate);
                                    flow2.addView(inflate);
                                    UserViewBinder.INSTANCE.getClass();
                                    TextViewBinder textViewBinder = TextViewBinder.INSTANCE;
                                    TextView textView = (TextView) inflate.requireViewById(R.id.user_switcher_text);
                                    Text text = userViewModel.name;
                                    textViewBinder.getClass();
                                    TextViewBinder.bind(textView, text);
                                    ImageView imageView = (ImageView) inflate.requireViewById(R.id.user_switcher_icon);
                                    Context context = inflate.getContext();
                                    Resources resources = context.getResources();
                                    Resources.Theme theme = context.getTheme();
                                    ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
                                    Drawable drawable = resources.getDrawable(R.drawable.user_switcher_icon_large, theme);
                                    if (drawable != null) {
                                        LayerDrawable layerDrawable = (LayerDrawable) drawable.mutate();
                                        if (userViewModel.isSelectionMarkerVisible) {
                                            ((GradientDrawable) layerDrawable.findDrawableByLayerId(R.id.ring)).setStroke(context.getResources().getDimensionPixelSize(R.dimen.user_switcher_icon_selected_width), Utils.getColorAttrDefaultColor(android.R.^attr-private.colorProgressBackgroundNormal, context, 0));
                                        }
                                        layerDrawable.setDrawableByLayerId(R.id.user_avatar, userViewModel.image);
                                        imageView.setImageDrawable(layerDrawable);
                                        inflate.setAlpha(userViewModel.alpha);
                                        if (userViewModel.onClicked != null) {
                                            inflate.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.user.ui.binder.UserViewBinder$bind$1
                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view2) {
                                                    UserViewModel.this.onClicked.invoke();
                                                }
                                            });
                                        } else {
                                            inflate.setOnClickListener(null);
                                        }
                                    } else {
                                        throw new IllegalStateException("Required value was null.".toString());
                                    }
                                }
                                return Unit.INSTANCE;
                            }
                        };
                        this.label = 1;
                        if (userSwitcherViewModel$special$$inlined$map$1.collect(flowCollector, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return Unit.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(UserSwitcherViewModel userSwitcherViewModel, View view, Ref$ObjectRef<UserSwitcherPopupMenu> ref$ObjectRef, ViewGroup viewGroup, UserSwitcherViewBinder.MenuAdapter menuAdapter, Flow flow, UserSwitcherRootView userSwitcherRootView, LayoutInflater layoutInflater, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$viewModel = userSwitcherViewModel;
                this.$addButton = view;
                this.$popupMenu = ref$ObjectRef;
                this.$view = viewGroup;
                this.$popupMenuAdapter = menuAdapter;
                this.$flowWidget = flow;
                this.$gridContainerView = userSwitcherRootView;
                this.$layoutInflater = layoutInflater;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$addButton, this.$popupMenu, this.$view, this.$popupMenuAdapter, this.$flowWidget, this.$gridContainerView, this.$layoutInflater, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                    BuildersKt.launch$default(coroutineScope, null, null, new C01411(this.$viewModel, this.$addButton, null), 3);
                    BuildersKt.launch$default(coroutineScope, null, null, new C01432(this.$viewModel, this.$popupMenu, this.$view, this.$addButton, this.$popupMenuAdapter, null), 3);
                    BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass3(this.$viewModel, this.$popupMenuAdapter, null), 3);
                    BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass4(this.$viewModel, this.$flowWidget, null), 3);
                    BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass5(this.$viewModel, this.$gridContainerView, this.$flowWidget, this.$layoutInflater, this.$view, null), 3);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(LifecycleOwner lifecycleOwner, UserSwitcherViewModel userSwitcherViewModel, View view, Ref$ObjectRef<UserSwitcherPopupMenu> ref$ObjectRef, ViewGroup viewGroup, UserSwitcherViewBinder.MenuAdapter menuAdapter, Flow flow, UserSwitcherRootView userSwitcherRootView, LayoutInflater layoutInflater, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$$this$repeatWhenAttached = lifecycleOwner;
            this.$viewModel = userSwitcherViewModel;
            this.$addButton = view;
            this.$popupMenu = ref$ObjectRef;
            this.$view = viewGroup;
            this.$popupMenuAdapter = menuAdapter;
            this.$flowWidget = flow;
            this.$gridContainerView = userSwitcherRootView;
            this.$layoutInflater = layoutInflater;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.$$this$repeatWhenAttached, this.$viewModel, this.$addButton, this.$popupMenu, this.$view, this.$popupMenuAdapter, this.$flowWidget, this.$gridContainerView, this.$layoutInflater, continuation);
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
                LifecycleOwner lifecycleOwner = this.$$this$repeatWhenAttached;
                Lifecycle.State state = Lifecycle.State.STARTED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$addButton, this.$popupMenu, this.$view, this.$popupMenuAdapter, this.$flowWidget, this.$gridContainerView, this.$layoutInflater, null);
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserSwitcherViewBinder$bind$4(UserSwitcherViewModel userSwitcherViewModel, Ref$ObjectRef<UserSwitcherPopupMenu> ref$ObjectRef, Function0 function0, View view, ViewGroup viewGroup, UserSwitcherViewBinder.MenuAdapter menuAdapter, Flow flow, UserSwitcherRootView userSwitcherRootView, LayoutInflater layoutInflater, Continuation<? super UserSwitcherViewBinder$bind$4> continuation) {
        super(3, continuation);
        this.$viewModel = userSwitcherViewModel;
        this.$popupMenu = ref$ObjectRef;
        this.$onFinish = function0;
        this.$addButton = view;
        this.$view = viewGroup;
        this.$popupMenuAdapter = menuAdapter;
        this.$flowWidget = flow;
        this.$gridContainerView = userSwitcherRootView;
        this.$layoutInflater = layoutInflater;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        UserSwitcherViewBinder$bind$4 userSwitcherViewBinder$bind$4 = new UserSwitcherViewBinder$bind$4(this.$viewModel, this.$popupMenu, this.$onFinish, this.$addButton, this.$view, this.$popupMenuAdapter, this.$flowWidget, this.$gridContainerView, this.$layoutInflater, (Continuation) obj3);
        userSwitcherViewBinder$bind$4.L$0 = (LifecycleOwner) obj;
        return userSwitcherViewBinder$bind$4.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            LifecycleOwner lifecycleOwner = (LifecycleOwner) this.L$0;
            BuildersKt.launch$default(LifecycleOwnerKt.getLifecycleScope(lifecycleOwner), null, null, new AnonymousClass1(lifecycleOwner, this.$viewModel, this.$popupMenu, this.$onFinish, null), 3);
            BuildersKt.launch$default(LifecycleOwnerKt.getLifecycleScope(lifecycleOwner), null, null, new AnonymousClass2(lifecycleOwner, this.$viewModel, this.$addButton, this.$popupMenu, this.$view, this.$popupMenuAdapter, this.$flowWidget, this.$gridContainerView, this.$layoutInflater, null), 3);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
