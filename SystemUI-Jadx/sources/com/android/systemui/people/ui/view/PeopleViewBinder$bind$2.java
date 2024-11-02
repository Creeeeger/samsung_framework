package com.android.systemui.people.ui.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.systemui.R;
import com.android.systemui.people.data.repository.PeopleWidgetRepositoryImpl;
import com.android.systemui.people.ui.viewmodel.PeopleTileViewModel;
import com.android.systemui.people.ui.viewmodel.PeopleViewModel;
import java.util.List;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.people.ui.view.PeopleViewBinder$bind$2", f = "PeopleViewBinder.kt", l = {91}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class PeopleViewBinder$bind$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ LifecycleOwner $lifecycleOwner;
    final /* synthetic */ ViewGroup $view;
    final /* synthetic */ PeopleViewModel $viewModel;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.people.ui.view.PeopleViewBinder$bind$2$1", f = "PeopleViewBinder.kt", l = {98}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.people.ui.view.PeopleViewBinder$bind$2$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ ViewGroup $view;
        final /* synthetic */ PeopleViewModel $viewModel;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.people.ui.view.PeopleViewBinder$bind$2$1$1", f = "PeopleViewBinder.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.people.ui.view.PeopleViewBinder$bind$2$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        public final class C00701 extends SuspendLambda implements Function3 {
            /* synthetic */ Object L$0;
            /* synthetic */ Object L$1;
            int label;

            public C00701(Continuation<? super C00701> continuation) {
                super(3, continuation);
            }

            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                C00701 c00701 = new C00701((Continuation) obj3);
                c00701.L$0 = (List) obj;
                c00701.L$1 = (List) obj2;
                return c00701.invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (this.label == 0) {
                    ResultKt.throwOnFailure(obj);
                    return new Pair((List) this.L$0, (List) this.L$1);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PeopleViewModel peopleViewModel, ViewGroup viewGroup, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$viewModel = peopleViewModel;
            this.$view = viewGroup;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.$viewModel, this.$view, continuation);
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
                PeopleViewModel peopleViewModel = this.$viewModel;
                FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(peopleViewModel.priorityTiles, peopleViewModel.recentTiles, new C00701(null));
                final ViewGroup viewGroup = this.$view;
                final PeopleViewModel peopleViewModel2 = this.$viewModel;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.people.ui.view.PeopleViewBinder.bind.2.1.2

                    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                    /* renamed from: com.android.systemui.people.ui.view.PeopleViewBinder$bind$2$1$2$1, reason: invalid class name and collision with other inner class name */
                    /* loaded from: classes2.dex */
                    final /* synthetic */ class C00711 extends FunctionReferenceImpl implements Function1 {
                        public C00711(Object obj) {
                            super(1, obj, PeopleViewModel.class, "onTileClicked", "onTileClicked(Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;)V", 0);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            PeopleViewModel peopleViewModel = (PeopleViewModel) this.receiver;
                            ((PeopleWidgetRepositoryImpl) peopleViewModel.widgetRepository).peopleSpaceWidgetManager.addNewWidget(((Number) peopleViewModel._appWidgetId.getValue()).intValue(), ((PeopleTileViewModel) obj).key);
                            Intent intent = new Intent();
                            intent.putExtra("appWidgetId", ((Number) peopleViewModel.appWidgetId.getValue()).intValue());
                            peopleViewModel._result.setValue(new PeopleViewModel.Result.Success(intent));
                            return Unit.INSTANCE;
                        }
                    }

                    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                    /* renamed from: com.android.systemui.people.ui.view.PeopleViewBinder$bind$2$1$2$2, reason: invalid class name and collision with other inner class name */
                    /* loaded from: classes2.dex */
                    final /* synthetic */ class C00722 extends FunctionReferenceImpl implements Function0 {
                        public C00722(Object obj) {
                            super(0, obj, PeopleViewModel.class, "onUserJourneyCancelled", "onUserJourneyCancelled()V", 0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            ((PeopleViewModel) this.receiver)._result.setValue(PeopleViewModel.Result.Cancelled.INSTANCE);
                            return Unit.INSTANCE;
                        }
                    }

                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        Pair pair = (Pair) obj2;
                        List list = (List) pair.component1();
                        List list2 = (List) pair.component2();
                        boolean z = !list.isEmpty();
                        PeopleViewModel peopleViewModel3 = peopleViewModel2;
                        ViewGroup viewGroup2 = viewGroup;
                        if (!z && !(!list2.isEmpty())) {
                            PeopleViewBinder peopleViewBinder = PeopleViewBinder.INSTANCE;
                            final C00722 c00722 = new C00722(peopleViewModel3);
                            peopleViewBinder.getClass();
                            if (viewGroup2.getChildCount() <= 1) {
                                if (viewGroup2.findViewById(R.id.top_level_no_conversations) == null) {
                                    if (viewGroup2.getChildCount() == 1) {
                                        viewGroup2.removeViewAt(0);
                                    }
                                    Context context = viewGroup2.getContext();
                                    View inflate = LayoutInflater.from(context).inflate(R.layout.people_space_activity_no_conversations, viewGroup2);
                                    inflate.findViewById(R.id.got_it_button).setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.people.ui.view.PeopleViewBinder$setNoConversationsContent$1
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            Function0.this.invoke();
                                        }
                                    });
                                    GradientDrawable gradientDrawable = (GradientDrawable) ((LinearLayout) inflate.findViewById(android.R.id.background)).getBackground();
                                    TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{android.R.^attr-private.dialogTitleIconsDecorLayout});
                                    gradientDrawable.setColor(obtainStyledAttributes.getColor(0, -1));
                                    obtainStyledAttributes.recycle();
                                }
                            } else {
                                throw new IllegalStateException(("view has " + viewGroup2.getChildCount() + " children, it should have maximum 1").toString());
                            }
                        } else {
                            PeopleViewBinder peopleViewBinder2 = PeopleViewBinder.INSTANCE;
                            C00711 c00711 = new C00711(peopleViewModel3);
                            peopleViewBinder2.getClass();
                            if (viewGroup2.getChildCount() <= 1) {
                                if (viewGroup2.findViewById(R.id.top_level_with_conversations) == null) {
                                    if (viewGroup2.getChildCount() == 1) {
                                        viewGroup2.removeViewAt(0);
                                    }
                                    LayoutInflater.from(viewGroup2.getContext()).inflate(R.layout.people_space_activity_with_conversations, viewGroup2);
                                }
                                View requireViewById = viewGroup2.requireViewById(R.id.top_level_with_conversations);
                                PeopleViewBinder.setTileViews(requireViewById, R.id.priority, R.id.priority_tiles, list, c00711);
                                PeopleViewBinder.setTileViews(requireViewById, R.id.recent, R.id.recent_tiles, list2, c00711);
                            } else {
                                throw new IllegalStateException(("view has " + viewGroup2.getChildCount() + " children, it should have maximum 1").toString());
                            }
                        }
                        return Unit.INSTANCE;
                    }
                };
                this.label = 1;
                if (flowKt__ZipKt$combine$$inlined$unsafeFlow$1.collect(flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeopleViewBinder$bind$2(LifecycleOwner lifecycleOwner, PeopleViewModel peopleViewModel, ViewGroup viewGroup, Continuation<? super PeopleViewBinder$bind$2> continuation) {
        super(2, continuation);
        this.$lifecycleOwner = lifecycleOwner;
        this.$viewModel = peopleViewModel;
        this.$view = viewGroup;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PeopleViewBinder$bind$2(this.$lifecycleOwner, this.$viewModel, this.$view, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PeopleViewBinder$bind$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
            LifecycleOwner lifecycleOwner = this.$lifecycleOwner;
            Lifecycle.State state = Lifecycle.State.STARTED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$viewModel, this.$view, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
