package com.android.systemui.keyguard.ui.binder;

import android.content.Intent;
import android.util.Size;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.android.systemui.R;
import com.android.systemui.animation.ActivityLaunchAnimator;
import com.android.systemui.animation.view.LaunchableLinearLayout;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.common.ui.binder.IconViewBinder;
import com.android.systemui.common.ui.binder.TextViewBinder;
import com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardQuickAffordanceViewModel;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardSettingsMenuViewModel;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.statusbar.KeyguardSecAffordanceView;
import com.android.systemui.statusbar.VibratorHelper;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
@DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1", f = "KeyguardBottomAreaViewBinder.kt", l = {150}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class KeyguardBottomAreaViewBinder$bind$disposableHandle$1 extends SuspendLambda implements Function3 {
    final /* synthetic */ ActivityStarter $activityStarter;
    final /* synthetic */ View $ambientIndicationArea;
    final /* synthetic */ MutableStateFlow $configurationBasedDimensions;
    final /* synthetic */ KeyguardSecAffordanceView $endButton;
    final /* synthetic */ FalsingManager $falsingManager;
    final /* synthetic */ View $indicationArea;
    final /* synthetic */ TextView $indicationText;
    final /* synthetic */ TextView $indicationTextBottom;
    final /* synthetic */ Function1 $messageDisplayer;
    final /* synthetic */ View $overlayContainer;
    final /* synthetic */ LaunchableLinearLayout $settingsMenu;
    final /* synthetic */ KeyguardSecAffordanceView $startButton;
    final /* synthetic */ VibratorHelper $vibratorHelper;
    final /* synthetic */ ViewGroup $view;
    final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ KeyguardBottomAreaViewBinder this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1", f = "KeyguardBottomAreaViewBinder.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ ActivityStarter $activityStarter;
        final /* synthetic */ View $ambientIndicationArea;
        final /* synthetic */ MutableStateFlow $configurationBasedDimensions;
        final /* synthetic */ KeyguardSecAffordanceView $endButton;
        final /* synthetic */ FalsingManager $falsingManager;
        final /* synthetic */ View $indicationArea;
        final /* synthetic */ TextView $indicationText;
        final /* synthetic */ TextView $indicationTextBottom;
        final /* synthetic */ Function1 $messageDisplayer;
        final /* synthetic */ View $overlayContainer;
        final /* synthetic */ LaunchableLinearLayout $settingsMenu;
        final /* synthetic */ KeyguardSecAffordanceView $startButton;
        final /* synthetic */ VibratorHelper $vibratorHelper;
        final /* synthetic */ ViewGroup $view;
        final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ KeyguardBottomAreaViewBinder this$0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$1", f = "KeyguardBottomAreaViewBinder.kt", l = {152}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C00331 extends SuspendLambda implements Function2 {
            final /* synthetic */ FalsingManager $falsingManager;
            final /* synthetic */ Function1 $messageDisplayer;
            final /* synthetic */ KeyguardSecAffordanceView $startButton;
            final /* synthetic */ VibratorHelper $vibratorHelper;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;
            final /* synthetic */ KeyguardBottomAreaViewBinder this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00331(KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder, KeyguardSecAffordanceView keyguardSecAffordanceView, FalsingManager falsingManager, Function1 function1, VibratorHelper vibratorHelper, Continuation<? super C00331> continuation) {
                super(2, continuation);
                this.$viewModel = keyguardBottomAreaViewModel;
                this.this$0 = keyguardBottomAreaViewBinder;
                this.$startButton = keyguardSecAffordanceView;
                this.$falsingManager = falsingManager;
                this.$messageDisplayer = function1;
                this.$vibratorHelper = vibratorHelper;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C00331(this.$viewModel, this.this$0, this.$startButton, this.$falsingManager, this.$messageDisplayer, this.$vibratorHelper, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00331) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    ChannelFlowTransformLatest channelFlowTransformLatest = this.$viewModel.startButton;
                    final KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder = this.this$0;
                    final KeyguardSecAffordanceView keyguardSecAffordanceView = this.$startButton;
                    final FalsingManager falsingManager = this.$falsingManager;
                    final Function1 function1 = this.$messageDisplayer;
                    final VibratorHelper vibratorHelper = this.$vibratorHelper;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.bind.disposableHandle.1.1.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            KeyguardBottomAreaViewBinder.access$updateButton(KeyguardBottomAreaViewBinder.this, keyguardSecAffordanceView, (KeyguardQuickAffordanceViewModel) obj2, falsingManager, function1, vibratorHelper);
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (channelFlowTransformLatest.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$10", f = "KeyguardBottomAreaViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_setDexForegroundModePackageList}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$10, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass10 extends SuspendLambda implements Function2 {
            final /* synthetic */ MutableStateFlow $configurationBasedDimensions;
            final /* synthetic */ KeyguardSecAffordanceView $endButton;
            final /* synthetic */ TextView $indicationText;
            final /* synthetic */ TextView $indicationTextBottom;
            final /* synthetic */ KeyguardSecAffordanceView $startButton;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass10(MutableStateFlow mutableStateFlow, TextView textView, TextView textView2, KeyguardSecAffordanceView keyguardSecAffordanceView, KeyguardSecAffordanceView keyguardSecAffordanceView2, Continuation<? super AnonymousClass10> continuation) {
                super(2, continuation);
                this.$configurationBasedDimensions = mutableStateFlow;
                this.$indicationText = textView;
                this.$indicationTextBottom = textView2;
                this.$startButton = keyguardSecAffordanceView;
                this.$endButton = keyguardSecAffordanceView2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass10(this.$configurationBasedDimensions, this.$indicationText, this.$indicationTextBottom, this.$startButton, this.$endButton, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass10) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i != 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                } else {
                    ResultKt.throwOnFailure(obj);
                    MutableStateFlow mutableStateFlow = this.$configurationBasedDimensions;
                    final TextView textView = this.$indicationText;
                    final TextView textView2 = this.$indicationTextBottom;
                    final KeyguardSecAffordanceView keyguardSecAffordanceView = this.$startButton;
                    final KeyguardSecAffordanceView keyguardSecAffordanceView2 = this.$endButton;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.bind.disposableHandle.1.1.10.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            KeyguardBottomAreaViewBinder.ConfigurationBasedDimensions configurationBasedDimensions = (KeyguardBottomAreaViewBinder.ConfigurationBasedDimensions) obj2;
                            textView.setTextSize(0, configurationBasedDimensions.indicationTextSizePx);
                            textView2.setTextSize(0, configurationBasedDimensions.indicationTextSizePx);
                            KeyguardSecAffordanceView keyguardSecAffordanceView3 = keyguardSecAffordanceView;
                            ViewGroup.LayoutParams layoutParams = keyguardSecAffordanceView3.getLayoutParams();
                            if (layoutParams != null) {
                                Size size = configurationBasedDimensions.buttonSizePx;
                                layoutParams.width = size.getWidth();
                                layoutParams.height = size.getHeight();
                                keyguardSecAffordanceView3.setLayoutParams(layoutParams);
                                KeyguardSecAffordanceView keyguardSecAffordanceView4 = keyguardSecAffordanceView2;
                                ViewGroup.LayoutParams layoutParams2 = keyguardSecAffordanceView4.getLayoutParams();
                                if (layoutParams2 != null) {
                                    layoutParams2.width = size.getWidth();
                                    layoutParams2.height = size.getHeight();
                                    keyguardSecAffordanceView4.setLayoutParams(layoutParams2);
                                    return Unit.INSTANCE;
                                }
                                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                            }
                            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                        }
                    };
                    this.label = 1;
                    if (((StateFlowImpl) mutableStateFlow).collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$11", f = "KeyguardBottomAreaViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_setHardKeyIntentBroadcastInternal}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$11, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass11 extends SuspendLambda implements Function2 {
            final /* synthetic */ LaunchableLinearLayout $settingsMenu;
            final /* synthetic */ VibratorHelper $vibratorHelper;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;
            final /* synthetic */ KeyguardBottomAreaViewBinder this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass11(KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder, LaunchableLinearLayout launchableLinearLayout, VibratorHelper vibratorHelper, Continuation<? super AnonymousClass11> continuation) {
                super(2, continuation);
                this.$viewModel = keyguardBottomAreaViewModel;
                this.this$0 = keyguardBottomAreaViewBinder;
                this.$settingsMenu = launchableLinearLayout;
                this.$vibratorHelper = vibratorHelper;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass11(this.$viewModel, this.this$0, this.$settingsMenu, this.$vibratorHelper, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass11) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    Flow distinctUntilChanged = FlowKt.distinctUntilChanged(this.$viewModel.settingsMenuViewModel.isVisible);
                    final KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder = this.this$0;
                    final LaunchableLinearLayout launchableLinearLayout = this.$settingsMenu;
                    final VibratorHelper vibratorHelper = this.$vibratorHelper;
                    final KeyguardBottomAreaViewModel keyguardBottomAreaViewModel = this.$viewModel;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.bind.disposableHandle.1.1.11.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            float f;
                            final boolean booleanValue = ((Boolean) obj2).booleanValue();
                            final LaunchableLinearLayout launchableLinearLayout2 = launchableLinearLayout;
                            Intrinsics.checkNotNull(launchableLinearLayout2);
                            KeyguardBottomAreaViewBinder.Companion companion = KeyguardBottomAreaViewBinder.Companion;
                            KeyguardBottomAreaViewBinder.this.getClass();
                            ViewPropertyAnimator withStartAction = launchableLinearLayout2.animate().withStartAction(new Runnable() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$animateVisibility$1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (booleanValue) {
                                        launchableLinearLayout2.setAlpha(0.0f);
                                        launchableLinearLayout2.setVisibility(0);
                                    }
                                }
                            });
                            if (booleanValue) {
                                f = 1.0f;
                            } else {
                                f = 0.0f;
                            }
                            withStartAction.alpha(f).withEndAction(new Runnable() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$animateVisibility$2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (!booleanValue) {
                                        launchableLinearLayout2.setVisibility(8);
                                    }
                                }
                            }).start();
                            if (booleanValue) {
                                VibratorHelper vibratorHelper2 = vibratorHelper;
                                if (vibratorHelper2 != null) {
                                    KeyguardBottomAreaVibrations.INSTANCE.getClass();
                                    vibratorHelper2.vibrate(KeyguardBottomAreaVibrations.Activated);
                                }
                                KeyguardBottomAreaViewModel keyguardBottomAreaViewModel2 = keyguardBottomAreaViewModel;
                                launchableLinearLayout2.setOnTouchListener(new KeyguardSettingsButtonOnTouchListener(launchableLinearLayout2, keyguardBottomAreaViewModel2.settingsMenuViewModel));
                                IconViewBinder iconViewBinder = IconViewBinder.INSTANCE;
                                KeyguardSettingsMenuViewModel keyguardSettingsMenuViewModel = keyguardBottomAreaViewModel2.settingsMenuViewModel;
                                Icon.Resource resource = keyguardSettingsMenuViewModel.icon;
                                ImageView imageView = (ImageView) launchableLinearLayout2.requireViewById(R.id.icon);
                                iconViewBinder.getClass();
                                IconViewBinder.bind(resource, imageView);
                                TextViewBinder textViewBinder = TextViewBinder.INSTANCE;
                                TextView textView = (TextView) launchableLinearLayout2.requireViewById(R.id.text);
                                textViewBinder.getClass();
                                TextViewBinder.bind(textView, keyguardSettingsMenuViewModel.text);
                            }
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (distinctUntilChanged.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12", f = "KeyguardBottomAreaViewBinder.kt", l = {305}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass12 extends SuspendLambda implements Function2 {
            final /* synthetic */ ActivityStarter $activityStarter;
            final /* synthetic */ LaunchableLinearLayout $settingsMenu;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;
            final /* synthetic */ KeyguardBottomAreaViewBinder this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass12(KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, LaunchableLinearLayout launchableLinearLayout, KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder, ActivityStarter activityStarter, Continuation<? super AnonymousClass12> continuation) {
                super(2, continuation);
                this.$viewModel = keyguardBottomAreaViewModel;
                this.$settingsMenu = launchableLinearLayout;
                this.this$0 = keyguardBottomAreaViewBinder;
                this.$activityStarter = activityStarter;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass12(this.$viewModel, this.$settingsMenu, this.this$0, this.$activityStarter, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass12) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    final ReadonlyStateFlow readonlyStateFlow = this.$viewModel.settingsMenuViewModel.shouldOpenSettings;
                    Flow flow = new Flow() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12$invokeSuspend$$inlined$filter$1

                        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                        /* loaded from: classes.dex */
                        public final class AnonymousClass2 implements FlowCollector {
                            public final /* synthetic */ FlowCollector $this_unsafeFlow;

                            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                            @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12$invokeSuspend$$inlined$filter$1$2", f = "KeyguardBottomAreaViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                            /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                            /* loaded from: classes.dex */
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
                                    boolean r0 = r6 instanceof com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                                    if (r0 == 0) goto L13
                                    r0 = r6
                                    com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12$invokeSuspend$$inlined$filter$1$2$1 r0 = (com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                                    int r1 = r0.label
                                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                    r3 = r1 & r2
                                    if (r3 == 0) goto L13
                                    int r1 = r1 - r2
                                    r0.label = r1
                                    goto L18
                                L13:
                                    com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12$invokeSuspend$$inlined$filter$1$2$1 r0 = new com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12$invokeSuspend$$inlined$filter$1$2$1
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
                                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$12$invokeSuspend$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                            }
                        }

                        @Override // kotlinx.coroutines.flow.Flow
                        public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                            Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                            if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                                return collect;
                            }
                            return Unit.INSTANCE;
                        }
                    };
                    final LaunchableLinearLayout launchableLinearLayout = this.$settingsMenu;
                    final KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder = this.this$0;
                    final ActivityStarter activityStarter = this.$activityStarter;
                    final KeyguardBottomAreaViewModel keyguardBottomAreaViewModel = this.$viewModel;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.bind.disposableHandle.1.1.12.2
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            boolean z;
                            ((Boolean) obj2).booleanValue();
                            LaunchableLinearLayout launchableLinearLayout2 = LaunchableLinearLayout.this;
                            if (launchableLinearLayout2 != null) {
                                KeyguardBottomAreaViewBinder.Companion companion = KeyguardBottomAreaViewBinder.Companion;
                                keyguardBottomAreaViewBinder.getClass();
                                Intent intent = new Intent("android.intent.action.SET_WALLPAPER");
                                intent.setFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                                String string = launchableLinearLayout2.getContext().getString(R.string.config_wallpaperPickerPackage);
                                if (string.length() > 0) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (!z) {
                                    string = null;
                                }
                                if (string != null) {
                                    intent.setPackage(string);
                                }
                                ActivityLaunchAnimator.Controller.Companion.getClass();
                                activityStarter.postStartActivityDismissingKeyguard(intent, 0, ActivityLaunchAnimator.Controller.Companion.fromView(launchableLinearLayout2, null), launchableLinearLayout2.getContext().getString(R.string.keyguard_unlock_to_customize_ls));
                            }
                            keyguardBottomAreaViewModel.settingsMenuViewModel.interactor._shouldOpenSettings.setValue(Boolean.FALSE);
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

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2", f = "KeyguardBottomAreaViewBinder.kt", l = {164}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$2, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass2 extends SuspendLambda implements Function2 {
            final /* synthetic */ KeyguardSecAffordanceView $endButton;
            final /* synthetic */ FalsingManager $falsingManager;
            final /* synthetic */ Function1 $messageDisplayer;
            final /* synthetic */ VibratorHelper $vibratorHelper;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;
            final /* synthetic */ KeyguardBottomAreaViewBinder this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass2(KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder, KeyguardSecAffordanceView keyguardSecAffordanceView, FalsingManager falsingManager, Function1 function1, VibratorHelper vibratorHelper, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.$viewModel = keyguardBottomAreaViewModel;
                this.this$0 = keyguardBottomAreaViewBinder;
                this.$endButton = keyguardSecAffordanceView;
                this.$falsingManager = falsingManager;
                this.$messageDisplayer = function1;
                this.$vibratorHelper = vibratorHelper;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass2(this.$viewModel, this.this$0, this.$endButton, this.$falsingManager, this.$messageDisplayer, this.$vibratorHelper, continuation);
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
                    ChannelFlowTransformLatest channelFlowTransformLatest = this.$viewModel.endButton;
                    final KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder = this.this$0;
                    final KeyguardSecAffordanceView keyguardSecAffordanceView = this.$endButton;
                    final FalsingManager falsingManager = this.$falsingManager;
                    final Function1 function1 = this.$messageDisplayer;
                    final VibratorHelper vibratorHelper = this.$vibratorHelper;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.bind.disposableHandle.1.1.2.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            KeyguardBottomAreaViewBinder.access$updateButton(KeyguardBottomAreaViewBinder.this, keyguardSecAffordanceView, (KeyguardQuickAffordanceViewModel) obj2, falsingManager, function1, vibratorHelper);
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (channelFlowTransformLatest.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$3", f = "KeyguardBottomAreaViewBinder.kt", l = {176}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$3, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass3 extends SuspendLambda implements Function2 {
            final /* synthetic */ View $overlayContainer;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass3(KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, View view, Continuation<? super AnonymousClass3> continuation) {
                super(2, continuation);
                this.$viewModel = keyguardBottomAreaViewModel;
                this.$overlayContainer = view;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass3(this.$viewModel, this.$overlayContainer, continuation);
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
                    Flow flow = this.$viewModel.isOverlayContainerVisible;
                    final View view = this.$overlayContainer;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.bind.disposableHandle.1.1.3.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            ((Boolean) obj2).booleanValue();
                            view.setVisibility(8);
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

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$4", f = "KeyguardBottomAreaViewBinder.kt", l = {187}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$4, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass4 extends SuspendLambda implements Function2 {
            final /* synthetic */ View $ambientIndicationArea;
            final /* synthetic */ View $indicationArea;
            final /* synthetic */ ViewGroup $view;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass4(KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, ViewGroup viewGroup, View view, View view2, Continuation<? super AnonymousClass4> continuation) {
                super(2, continuation);
                this.$viewModel = keyguardBottomAreaViewModel;
                this.$view = viewGroup;
                this.$ambientIndicationArea = view;
                this.$indicationArea = view2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass4(this.$viewModel, this.$view, this.$ambientIndicationArea, this.$indicationArea, continuation);
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
                    ChannelFlowTransformLatest channelFlowTransformLatest = this.$viewModel.alpha;
                    final ViewGroup viewGroup = this.$view;
                    final View view = this.$ambientIndicationArea;
                    final View view2 = this.$indicationArea;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.bind.disposableHandle.1.1.4.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            boolean z;
                            float floatValue = ((Number) obj2).floatValue();
                            int i2 = 0;
                            if (floatValue == 0.0f) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                i2 = 4;
                            }
                            viewGroup.setImportantForAccessibility(i2);
                            View view3 = view;
                            if (view3 != null) {
                                view3.setAlpha(floatValue);
                            }
                            view2.setAlpha(floatValue);
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (channelFlowTransformLatest.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$5", f = "KeyguardBottomAreaViewBinder.kt", l = {201}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$5, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass5 extends SuspendLambda implements Function2 {
            final /* synthetic */ KeyguardSecAffordanceView $startButton;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;
            final /* synthetic */ KeyguardBottomAreaViewBinder this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass5(KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder, KeyguardSecAffordanceView keyguardSecAffordanceView, KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, Continuation<? super AnonymousClass5> continuation) {
                super(2, continuation);
                this.this$0 = keyguardBottomAreaViewBinder;
                this.$startButton = keyguardSecAffordanceView;
                this.$viewModel = keyguardBottomAreaViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass5(this.this$0, this.$startButton, this.$viewModel, continuation);
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
                    KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder = this.this$0;
                    KeyguardSecAffordanceView keyguardSecAffordanceView = this.$startButton;
                    KeyguardBottomAreaViewModel keyguardBottomAreaViewModel = this.$viewModel;
                    ChannelFlowTransformLatest channelFlowTransformLatest = keyguardBottomAreaViewModel.startButton;
                    this.label = 1;
                    if (KeyguardBottomAreaViewBinder.access$updateButtonAlpha(keyguardBottomAreaViewBinder, keyguardSecAffordanceView, channelFlowTransformLatest, keyguardBottomAreaViewModel.alpha, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6", f = "KeyguardBottomAreaViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getVibrationIntensity}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$6, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass6 extends SuspendLambda implements Function2 {
            final /* synthetic */ KeyguardSecAffordanceView $endButton;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;
            final /* synthetic */ KeyguardBottomAreaViewBinder this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass6(KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder, KeyguardSecAffordanceView keyguardSecAffordanceView, KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, Continuation<? super AnonymousClass6> continuation) {
                super(2, continuation);
                this.this$0 = keyguardBottomAreaViewBinder;
                this.$endButton = keyguardSecAffordanceView;
                this.$viewModel = keyguardBottomAreaViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass6(this.this$0, this.$endButton, this.$viewModel, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass6) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder = this.this$0;
                    KeyguardSecAffordanceView keyguardSecAffordanceView = this.$endButton;
                    KeyguardBottomAreaViewModel keyguardBottomAreaViewModel = this.$viewModel;
                    ChannelFlowTransformLatest channelFlowTransformLatest = keyguardBottomAreaViewModel.endButton;
                    this.label = 1;
                    if (KeyguardBottomAreaViewBinder.access$updateButtonAlpha(keyguardBottomAreaViewBinder, keyguardSecAffordanceView, channelFlowTransformLatest, keyguardBottomAreaViewModel.alpha, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$7", f = "KeyguardBottomAreaViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getAutoCallNumberList}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$7, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass7 extends SuspendLambda implements Function2 {
            final /* synthetic */ View $ambientIndicationArea;
            final /* synthetic */ View $indicationArea;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass7(KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, View view, View view2, Continuation<? super AnonymousClass7> continuation) {
                super(2, continuation);
                this.$viewModel = keyguardBottomAreaViewModel;
                this.$indicationArea = view;
                this.$ambientIndicationArea = view2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass7(this.$viewModel, this.$indicationArea, this.$ambientIndicationArea, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass7) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    Flow flow = this.$viewModel.indicationAreaTranslationX;
                    final View view = this.$indicationArea;
                    final View view2 = this.$ambientIndicationArea;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.bind.disposableHandle.1.1.7.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            float floatValue = ((Number) obj2).floatValue();
                            view.setTranslationX(floatValue);
                            View view3 = view2;
                            if (view3 != null) {
                                view3.setTranslationX(floatValue);
                            }
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

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8", f = "KeyguardBottomAreaViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_deleteHomeScreenPage}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass8 extends SuspendLambda implements Function2 {
            final /* synthetic */ MutableStateFlow $configurationBasedDimensions;
            final /* synthetic */ View $indicationArea;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$2", f = "KeyguardBottomAreaViewBinder.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 extends SuspendLambda implements Function3 {
                /* synthetic */ int I$0;
                /* synthetic */ boolean Z$0;
                int label;

                public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    boolean booleanValue = ((Boolean) obj).booleanValue();
                    int intValue = ((Number) obj2).intValue();
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2((Continuation) obj3);
                    anonymousClass2.Z$0 = booleanValue;
                    anonymousClass2.I$0 = intValue;
                    return anonymousClass2.invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    if (this.label == 0) {
                        ResultKt.throwOnFailure(obj);
                        boolean z = this.Z$0;
                        int i = this.I$0;
                        if (!z) {
                            i = 0;
                        }
                        return new Integer(i);
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass8(KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, MutableStateFlow mutableStateFlow, View view, Continuation<? super AnonymousClass8> continuation) {
                super(2, continuation);
                this.$viewModel = keyguardBottomAreaViewModel;
                this.$configurationBasedDimensions = mutableStateFlow;
                this.$indicationArea = view;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass8(this.$viewModel, this.$configurationBasedDimensions, this.$indicationArea, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass8) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    Flow flow = this.$viewModel.isIndicationAreaPadded;
                    final MutableStateFlow mutableStateFlow = this.$configurationBasedDimensions;
                    FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 flowKt__ZipKt$combine$$inlined$unsafeFlow$1 = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(flow, new Flow() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$invokeSuspend$$inlined$map$1

                        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                        /* loaded from: classes.dex */
                        public final class AnonymousClass2 implements FlowCollector {
                            public final /* synthetic */ FlowCollector $this_unsafeFlow;

                            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                            @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$invokeSuspend$$inlined$map$1$2", f = "KeyguardBottomAreaViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                            /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                            /* loaded from: classes.dex */
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
                                    boolean r0 = r6 instanceof com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                    if (r0 == 0) goto L13
                                    r0 = r6
                                    com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$invokeSuspend$$inlined$map$1$2$1 r0 = (com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                                    int r1 = r0.label
                                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                    r3 = r1 & r2
                                    if (r3 == 0) goto L13
                                    int r1 = r1 - r2
                                    r0.label = r1
                                    goto L18
                                L13:
                                    com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$invokeSuspend$$inlined$map$1$2$1 r0 = new com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$invokeSuspend$$inlined$map$1$2$1
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
                                    com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$ConfigurationBasedDimensions r5 = (com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.ConfigurationBasedDimensions) r5
                                    int r5 = r5.indicationAreaPaddingPx
                                    java.lang.Integer r6 = new java.lang.Integer
                                    r6.<init>(r5)
                                    r0.label = r3
                                    kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                                    java.lang.Object r4 = r4.emit(r6, r0)
                                    if (r4 != r1) goto L46
                                    return r1
                                L46:
                                    kotlin.Unit r4 = kotlin.Unit.INSTANCE
                                    return r4
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$8$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                            }
                        }

                        @Override // kotlinx.coroutines.flow.Flow
                        public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                            Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                            if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                                return collect;
                            }
                            return Unit.INSTANCE;
                        }
                    }, new AnonymousClass2(null));
                    final View view = this.$indicationArea;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.bind.disposableHandle.1.1.8.3
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            int intValue = ((Number) obj2).intValue();
                            view.setPadding(intValue, 0, intValue, 0);
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

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9", f = "KeyguardBottomAreaViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_setHomeScreenMode}, m = "invokeSuspend")
        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass9 extends SuspendLambda implements Function2 {
            final /* synthetic */ View $ambientIndicationArea;
            final /* synthetic */ MutableStateFlow $configurationBasedDimensions;
            final /* synthetic */ View $indicationArea;
            final /* synthetic */ KeyguardBottomAreaViewModel $viewModel;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass9(MutableStateFlow mutableStateFlow, KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, View view, View view2, Continuation<? super AnonymousClass9> continuation) {
                super(2, continuation);
                this.$configurationBasedDimensions = mutableStateFlow;
                this.$viewModel = keyguardBottomAreaViewModel;
                this.$indicationArea = view;
                this.$ambientIndicationArea = view2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new AnonymousClass9(this.$configurationBasedDimensions, this.$viewModel, this.$indicationArea, this.$ambientIndicationArea, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass9) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
                    final MutableStateFlow mutableStateFlow = this.$configurationBasedDimensions;
                    ChannelFlowTransformLatest transformLatest = FlowKt.transformLatest(new Flow() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$map$1

                        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                        /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                        /* loaded from: classes.dex */
                        public final class AnonymousClass2 implements FlowCollector {
                            public final /* synthetic */ FlowCollector $this_unsafeFlow;

                            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                            @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$map$1$2", f = "KeyguardBottomAreaViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                            /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                            /* loaded from: classes.dex */
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
                                    boolean r0 = r6 instanceof com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                    if (r0 == 0) goto L13
                                    r0 = r6
                                    com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$map$1$2$1 r0 = (com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                                    int r1 = r0.label
                                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                    r3 = r1 & r2
                                    if (r3 == 0) goto L13
                                    int r1 = r1 - r2
                                    r0.label = r1
                                    goto L18
                                L13:
                                    com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$map$1$2$1 r0 = new com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$map$1$2$1
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
                                    com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$ConfigurationBasedDimensions r5 = (com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.ConfigurationBasedDimensions) r5
                                    int r5 = r5.defaultBurnInPreventionYOffsetPx
                                    java.lang.Integer r6 = new java.lang.Integer
                                    r6.<init>(r5)
                                    r0.label = r3
                                    kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                                    java.lang.Object r4 = r4.emit(r6, r0)
                                    if (r4 != r1) goto L46
                                    return r1
                                L46:
                                    kotlin.Unit r4 = kotlin.Unit.INSTANCE
                                    return r4
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                            }
                        }

                        @Override // kotlinx.coroutines.flow.Flow
                        public final Object collect(FlowCollector flowCollector, Continuation continuation) {
                            Object collect = Flow.this.collect(new AnonymousClass2(flowCollector), continuation);
                            if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                                return collect;
                            }
                            return Unit.INSTANCE;
                        }
                    }, new KeyguardBottomAreaViewBinder$bind$disposableHandle$1$1$9$invokeSuspend$$inlined$flatMapLatest$1(null, this.$viewModel));
                    final View view = this.$indicationArea;
                    final View view2 = this.$ambientIndicationArea;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.bind.disposableHandle.1.1.9.3
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            float floatValue = ((Number) obj2).floatValue();
                            view.setTranslationY(floatValue);
                            View view3 = view2;
                            if (view3 != null) {
                                view3.setTranslationY(floatValue);
                            }
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (transformLatest.collect(flowCollector, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ActivityStarter activityStarter, KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder, KeyguardSecAffordanceView keyguardSecAffordanceView, FalsingManager falsingManager, Function1 function1, VibratorHelper vibratorHelper, KeyguardSecAffordanceView keyguardSecAffordanceView2, View view, ViewGroup viewGroup, View view2, View view3, MutableStateFlow mutableStateFlow, TextView textView, TextView textView2, LaunchableLinearLayout launchableLinearLayout, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$activityStarter = activityStarter;
            this.$viewModel = keyguardBottomAreaViewModel;
            this.this$0 = keyguardBottomAreaViewBinder;
            this.$startButton = keyguardSecAffordanceView;
            this.$falsingManager = falsingManager;
            this.$messageDisplayer = function1;
            this.$vibratorHelper = vibratorHelper;
            this.$endButton = keyguardSecAffordanceView2;
            this.$overlayContainer = view;
            this.$view = viewGroup;
            this.$ambientIndicationArea = view2;
            this.$indicationArea = view3;
            this.$configurationBasedDimensions = mutableStateFlow;
            this.$indicationText = textView;
            this.$indicationTextBottom = textView2;
            this.$settingsMenu = launchableLinearLayout;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$activityStarter, this.$viewModel, this.this$0, this.$startButton, this.$falsingManager, this.$messageDisplayer, this.$vibratorHelper, this.$endButton, this.$overlayContainer, this.$view, this.$ambientIndicationArea, this.$indicationArea, this.$configurationBasedDimensions, this.$indicationText, this.$indicationTextBottom, this.$settingsMenu, continuation);
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
                BuildersKt.launch$default(coroutineScope, null, null, new C00331(this.$viewModel, this.this$0, this.$startButton, this.$falsingManager, this.$messageDisplayer, this.$vibratorHelper, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.$viewModel, this.this$0, this.$endButton, this.$falsingManager, this.$messageDisplayer, this.$vibratorHelper, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass3(this.$viewModel, this.$overlayContainer, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass4(this.$viewModel, this.$view, this.$ambientIndicationArea, this.$indicationArea, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass5(this.this$0, this.$startButton, this.$viewModel, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass6(this.this$0, this.$endButton, this.$viewModel, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass7(this.$viewModel, this.$indicationArea, this.$ambientIndicationArea, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass8(this.$viewModel, this.$configurationBasedDimensions, this.$indicationArea, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass9(this.$configurationBasedDimensions, this.$viewModel, this.$indicationArea, this.$ambientIndicationArea, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass10(this.$configurationBasedDimensions, this.$indicationText, this.$indicationTextBottom, this.$startButton, this.$endButton, null), 3);
                BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass11(this.$viewModel, this.this$0, this.$settingsMenu, this.$vibratorHelper, null), 3);
                ActivityStarter activityStarter = this.$activityStarter;
                if (activityStarter != null) {
                    BuildersKt.launch$default(coroutineScope, null, null, new AnonymousClass12(this.$viewModel, this.$settingsMenu, this.this$0, activityStarter, null), 3);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyguardBottomAreaViewBinder$bind$disposableHandle$1(ActivityStarter activityStarter, KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder, KeyguardSecAffordanceView keyguardSecAffordanceView, FalsingManager falsingManager, Function1 function1, VibratorHelper vibratorHelper, KeyguardSecAffordanceView keyguardSecAffordanceView2, View view, ViewGroup viewGroup, View view2, View view3, MutableStateFlow mutableStateFlow, TextView textView, TextView textView2, LaunchableLinearLayout launchableLinearLayout, Continuation<? super KeyguardBottomAreaViewBinder$bind$disposableHandle$1> continuation) {
        super(3, continuation);
        this.$activityStarter = activityStarter;
        this.$viewModel = keyguardBottomAreaViewModel;
        this.this$0 = keyguardBottomAreaViewBinder;
        this.$startButton = keyguardSecAffordanceView;
        this.$falsingManager = falsingManager;
        this.$messageDisplayer = function1;
        this.$vibratorHelper = vibratorHelper;
        this.$endButton = keyguardSecAffordanceView2;
        this.$overlayContainer = view;
        this.$view = viewGroup;
        this.$ambientIndicationArea = view2;
        this.$indicationArea = view3;
        this.$configurationBasedDimensions = mutableStateFlow;
        this.$indicationText = textView;
        this.$indicationTextBottom = textView2;
        this.$settingsMenu = launchableLinearLayout;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        KeyguardBottomAreaViewBinder$bind$disposableHandle$1 keyguardBottomAreaViewBinder$bind$disposableHandle$1 = new KeyguardBottomAreaViewBinder$bind$disposableHandle$1(this.$activityStarter, this.$viewModel, this.this$0, this.$startButton, this.$falsingManager, this.$messageDisplayer, this.$vibratorHelper, this.$endButton, this.$overlayContainer, this.$view, this.$ambientIndicationArea, this.$indicationArea, this.$configurationBasedDimensions, this.$indicationText, this.$indicationTextBottom, this.$settingsMenu, (Continuation) obj3);
        keyguardBottomAreaViewBinder$bind$disposableHandle$1.L$0 = (LifecycleOwner) obj;
        return keyguardBottomAreaViewBinder$bind$disposableHandle$1.invokeSuspend(Unit.INSTANCE);
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
            LifecycleOwner lifecycleOwner = (LifecycleOwner) this.L$0;
            Lifecycle.State state = Lifecycle.State.STARTED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$activityStarter, this.$viewModel, this.this$0, this.$startButton, this.$falsingManager, this.$messageDisplayer, this.$vibratorHelper, this.$endButton, this.$overlayContainer, this.$view, this.$ambientIndicationArea, this.$indicationArea, this.$configurationBasedDimensions, this.$indicationText, this.$indicationTextBottom, this.$settingsMenu, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.repeatOnLifecycle(lifecycleOwner, state, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.INSTANCE;
    }
}
