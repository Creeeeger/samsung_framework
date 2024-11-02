package com.android.systemui.keyguard.ui.binder;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
import android.os.VibrationEffect;
import android.util.Size;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.TextView;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.app.animation.Interpolators;
import com.android.settingslib.Utils;
import com.android.systemui.animation.Expandable;
import com.android.systemui.animation.Expandable$Companion$fromView$1;
import com.android.systemui.animation.view.LaunchableLinearLayout;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.common.ui.binder.IconViewBinder;
import com.android.systemui.keyguard.data.repository.KeyguardRepositoryImpl;
import com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder;
import com.android.systemui.keyguard.ui.binder.KeyguardQuickAffordanceOnTouchListener;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel;
import com.android.systemui.keyguard.ui.viewmodel.KeyguardQuickAffordanceViewModel;
import com.android.systemui.lifecycle.RepeatWhenAttachedKt;
import com.android.systemui.lifecycle.RepeatWhenAttachedKt$repeatWhenAttached$1;
import com.android.systemui.plugins.ActivityStarter;
import com.android.systemui.plugins.FalsingManager;
import com.android.systemui.statusbar.KeyguardSecAffordanceView;
import com.android.systemui.statusbar.VibratorHelper;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardBottomAreaViewBinder {
    public static final Companion Companion = new Companion(null);
    public static final KeyguardBottomAreaViewBinder INSTANCE = new KeyguardBottomAreaViewBinder();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface Binding {
        void destroy();

        List getIndicationAreaAnimators();

        void onConfigurationChanged();

        boolean shouldConstrainToTopOfLockIcon();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ConfigurationBasedDimensions {
        public final Size buttonSizePx;
        public final int defaultBurnInPreventionYOffsetPx;
        public final int indicationAreaPaddingPx;
        public final int indicationTextSizePx;

        public ConfigurationBasedDimensions(int i, int i2, int i3, Size size) {
            this.defaultBurnInPreventionYOffsetPx = i;
            this.indicationAreaPaddingPx = i2;
            this.indicationTextSizePx = i3;
            this.buttonSizePx = size;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConfigurationBasedDimensions)) {
                return false;
            }
            ConfigurationBasedDimensions configurationBasedDimensions = (ConfigurationBasedDimensions) obj;
            if (this.defaultBurnInPreventionYOffsetPx == configurationBasedDimensions.defaultBurnInPreventionYOffsetPx && this.indicationAreaPaddingPx == configurationBasedDimensions.indicationAreaPaddingPx && this.indicationTextSizePx == configurationBasedDimensions.indicationTextSizePx && Intrinsics.areEqual(this.buttonSizePx, configurationBasedDimensions.buttonSizePx)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.buttonSizePx.hashCode() + AppInfoViewData$$ExternalSyntheticOutline0.m(this.indicationTextSizePx, AppInfoViewData$$ExternalSyntheticOutline0.m(this.indicationAreaPaddingPx, Integer.hashCode(this.defaultBurnInPreventionYOffsetPx) * 31, 31), 31);
        }

        public final String toString() {
            return "ConfigurationBasedDimensions(defaultBurnInPreventionYOffsetPx=" + this.defaultBurnInPreventionYOffsetPx + ", indicationAreaPaddingPx=" + this.indicationAreaPaddingPx + ", indicationTextSizePx=" + this.indicationTextSizePx + ", buttonSizePx=" + this.buttonSizePx + ")";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OnClickListener implements View.OnClickListener {
        public final FalsingManager falsingManager;
        public final KeyguardQuickAffordanceViewModel viewModel;

        public OnClickListener(KeyguardQuickAffordanceViewModel keyguardQuickAffordanceViewModel, FalsingManager falsingManager) {
            this.viewModel = keyguardQuickAffordanceViewModel;
            this.falsingManager = falsingManager;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            KeyguardQuickAffordanceViewModel keyguardQuickAffordanceViewModel;
            String str;
            if (!this.falsingManager.isFalseTap(1) && (str = (keyguardQuickAffordanceViewModel = this.viewModel).configKey) != null) {
                Function1 function1 = keyguardQuickAffordanceViewModel.onClicked;
                Expandable.Companion.getClass();
                function1.invoke(new KeyguardQuickAffordanceViewModel.OnClickedParameters(str, new Expandable$Companion$fromView$1(view), this.viewModel.slotId));
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OnLongClickListener implements View.OnLongClickListener {
        public final FalsingManager falsingManager;
        public final KeyguardQuickAffordanceOnTouchListener onTouchListener;
        public final VibratorHelper vibratorHelper;
        public final KeyguardQuickAffordanceViewModel viewModel;

        public OnLongClickListener(FalsingManager falsingManager, KeyguardQuickAffordanceViewModel keyguardQuickAffordanceViewModel, VibratorHelper vibratorHelper, KeyguardQuickAffordanceOnTouchListener keyguardQuickAffordanceOnTouchListener) {
            this.falsingManager = falsingManager;
            this.viewModel = keyguardQuickAffordanceViewModel;
            this.vibratorHelper = vibratorHelper;
            this.onTouchListener = keyguardQuickAffordanceOnTouchListener;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            boolean z;
            VibrationEffect vibrationEffect;
            FalsingManager falsingManager = this.falsingManager;
            if (falsingManager != null && falsingManager.isFalseLongTap(2)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
            KeyguardQuickAffordanceViewModel keyguardQuickAffordanceViewModel = this.viewModel;
            String str = keyguardQuickAffordanceViewModel.configKey;
            if (str != null) {
                Expandable.Companion.getClass();
                keyguardQuickAffordanceViewModel.onClicked.invoke(new KeyguardQuickAffordanceViewModel.OnClickedParameters(str, new Expandable$Companion$fromView$1(view), this.viewModel.slotId));
                VibratorHelper vibratorHelper = this.vibratorHelper;
                if (vibratorHelper != null) {
                    if (this.viewModel.isActivated) {
                        KeyguardBottomAreaVibrations.INSTANCE.getClass();
                        vibrationEffect = KeyguardBottomAreaVibrations.Activated;
                    } else {
                        KeyguardBottomAreaVibrations.INSTANCE.getClass();
                        vibrationEffect = KeyguardBottomAreaVibrations.Deactivated;
                    }
                    vibratorHelper.vibrate(vibrationEffect);
                }
            }
            KeyguardQuickAffordanceOnTouchListener keyguardQuickAffordanceOnTouchListener = this.onTouchListener;
            KeyguardQuickAffordanceOnTouchListener.Companion companion = KeyguardQuickAffordanceOnTouchListener.Companion;
            keyguardQuickAffordanceOnTouchListener.cancel(null);
            return true;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClickUseDefaultHapticFeedback(View view) {
            return false;
        }
    }

    public static final void access$updateButton(KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder, KeyguardSecAffordanceView keyguardSecAffordanceView, KeyguardQuickAffordanceViewModel keyguardQuickAffordanceViewModel, FalsingManager falsingManager, Function1 function1, VibratorHelper vibratorHelper) {
        boolean z;
        Animatable2 animatable2;
        int i;
        ColorStateList colorStateList;
        float f;
        int i2;
        Icon.Resource resource;
        keyguardBottomAreaViewBinder.getClass();
        if (!keyguardQuickAffordanceViewModel.isVisible) {
            keyguardSecAffordanceView.setVisibility(4);
            return;
        }
        if (keyguardSecAffordanceView.getVisibility() == 0) {
            z = true;
        } else {
            z = false;
        }
        float f2 = 1.0f;
        if (!z) {
            keyguardSecAffordanceView.setVisibility(0);
            if (keyguardQuickAffordanceViewModel.animateReveal) {
                keyguardSecAffordanceView.setAlpha(0.0f);
                keyguardSecAffordanceView.setTranslationY(keyguardSecAffordanceView.getHeight() / 2.0f);
                keyguardSecAffordanceView.animate().alpha(1.0f).translationY(0.0f).setInterpolator(Interpolators.LINEAR_OUT_SLOW_IN).setDuration(250L).start();
            }
        }
        IconViewBinder.INSTANCE.getClass();
        Icon icon = keyguardQuickAffordanceViewModel.icon;
        IconViewBinder.bind(icon, keyguardSecAffordanceView);
        Object drawable = keyguardSecAffordanceView.getDrawable();
        if (drawable instanceof Animatable2) {
            animatable2 = (Animatable2) drawable;
        } else {
            animatable2 = null;
        }
        if (animatable2 != null) {
            if (icon instanceof Icon.Resource) {
                resource = (Icon.Resource) icon;
            } else {
                resource = null;
            }
            if (resource != null) {
                animatable2.start();
                Object tag = keyguardSecAffordanceView.getTag();
                int i3 = resource.res;
                if (!Intrinsics.areEqual(tag, Integer.valueOf(i3))) {
                    keyguardSecAffordanceView.setTag(Integer.valueOf(i3));
                } else {
                    animatable2.stop();
                }
            }
        }
        boolean z2 = keyguardQuickAffordanceViewModel.isActivated;
        keyguardSecAffordanceView.setActivated(z2);
        Drawable drawable2 = keyguardSecAffordanceView.getDrawable();
        Context context = keyguardSecAffordanceView.getContext();
        if (z2) {
            i = R.^attr-private.pointerIconAlias;
        } else {
            i = R.^attr-private.pointerIconCrosshair;
        }
        drawable2.setTint(Utils.getColorAttrDefaultColor(i, context, 0));
        boolean z3 = keyguardQuickAffordanceViewModel.isSelected;
        if (!z3) {
            Context context2 = keyguardSecAffordanceView.getContext();
            if (z2) {
                i2 = R.^attr-private.pointerIconTopLeftDiagonalDoubleArrow;
            } else {
                i2 = R.^attr-private.preferenceFragmentListStyle;
            }
            colorStateList = Utils.getColorAttr(i2, context2);
        } else {
            colorStateList = null;
        }
        keyguardSecAffordanceView.setBackgroundTintList(colorStateList);
        ViewPropertyAnimator animate = keyguardSecAffordanceView.animate();
        if (z3) {
            f = 1.23f;
        } else {
            f = 1.0f;
        }
        ViewPropertyAnimator scaleX = animate.scaleX(f);
        if (z3) {
            f2 = 1.23f;
        }
        scaleX.scaleY(f2).start();
        boolean z4 = keyguardQuickAffordanceViewModel.isClickable;
        keyguardSecAffordanceView.setClickable(z4);
        if (z4) {
            if (keyguardQuickAffordanceViewModel.useLongPress) {
                KeyguardQuickAffordanceOnTouchListener keyguardQuickAffordanceOnTouchListener = new KeyguardQuickAffordanceOnTouchListener(keyguardSecAffordanceView, keyguardQuickAffordanceViewModel, function1, vibratorHelper, falsingManager);
                keyguardSecAffordanceView.setOnTouchListener(keyguardQuickAffordanceOnTouchListener);
                keyguardSecAffordanceView.setOnLongClickListener(new OnLongClickListener(falsingManager, keyguardQuickAffordanceViewModel, vibratorHelper, keyguardQuickAffordanceOnTouchListener));
            } else if (falsingManager != null) {
                keyguardSecAffordanceView.setOnClickListener(new OnClickListener(keyguardQuickAffordanceViewModel, falsingManager));
            } else {
                throw new IllegalStateException("Required value was null.".toString());
            }
        } else {
            keyguardSecAffordanceView.setOnLongClickListener(null);
            keyguardSecAffordanceView.setOnClickListener(null);
            keyguardSecAffordanceView.setOnTouchListener(null);
        }
        keyguardSecAffordanceView.setSelected(z3);
    }

    public static final Object access$updateButtonAlpha(KeyguardBottomAreaViewBinder keyguardBottomAreaViewBinder, final KeyguardSecAffordanceView keyguardSecAffordanceView, final ChannelFlowTransformLatest channelFlowTransformLatest, ChannelFlowTransformLatest channelFlowTransformLatest2, Continuation continuation) {
        keyguardBottomAreaViewBinder.getClass();
        Object collect = new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(new Flow() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1$2, reason: invalid class name */
            /* loaded from: classes.dex */
            public final class AnonymousClass2 implements FlowCollector {
                public final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
                @DebugMetadata(c = "com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1$2", f = "KeyguardBottomAreaViewBinder.kt", l = {IKnoxCustomManager.Stub.TRANSACTION_getLockScreenShortcut}, m = "emit")
                /* renamed from: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1$2$1, reason: invalid class name */
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
                        boolean r0 = r6 instanceof com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1$2$1 r0 = (com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1$2$1 r0 = new com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L2f
                        if (r2 != r3) goto L27
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L45
                    L27:
                        java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                        java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                        r4.<init>(r5)
                        throw r4
                    L2f:
                        kotlin.ResultKt.throwOnFailure(r6)
                        com.android.systemui.keyguard.ui.viewmodel.KeyguardQuickAffordanceViewModel r5 = (com.android.systemui.keyguard.ui.viewmodel.KeyguardQuickAffordanceViewModel) r5
                        boolean r5 = r5.isDimmed
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        r0.label = r3
                        kotlinx.coroutines.flow.FlowCollector r4 = r4.$this_unsafeFlow
                        java.lang.Object r4 = r4.emit(r5, r0)
                        if (r4 != r1) goto L45
                        return r1
                    L45:
                        kotlin.Unit r4 = kotlin.Unit.INSTANCE
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object collect(FlowCollector flowCollector, Continuation continuation2) {
                Object collect2 = Flow.this.collect(new AnonymousClass2(flowCollector), continuation2);
                if (collect2 == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return collect2;
                }
                return Unit.INSTANCE;
            }
        }, channelFlowTransformLatest2, new KeyguardBottomAreaViewBinder$updateButtonAlpha$3(null)).collect(new FlowCollector() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$updateButtonAlpha$4
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object emit(Object obj, Continuation continuation2) {
                keyguardSecAffordanceView.setAlpha(((Number) obj).floatValue());
                return Unit.INSTANCE;
            }
        }, continuation);
        if (collect != CoroutineSingletons.COROUTINE_SUSPENDED) {
            return Unit.INSTANCE;
        }
        return collect;
    }

    public static ConfigurationBasedDimensions loadFromResources(View view) {
        return new ConfigurationBasedDimensions(view.getResources().getDimensionPixelOffset(com.android.systemui.R.dimen.default_burn_in_prevention_offset), view.getResources().getDimensionPixelOffset(com.android.systemui.R.dimen.keyguard_indication_area_padding), view.getResources().getDimensionPixelSize(17106213), new Size(view.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.keyguard_shrotcut_default_size), view.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.keyguard_shrotcut_default_size)));
    }

    /* JADX WARN: Type inference failed for: r8v3, types: [com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$2] */
    public final KeyguardBottomAreaViewBinder$bind$2 bind(final ViewGroup viewGroup, final KeyguardBottomAreaViewModel keyguardBottomAreaViewModel, FalsingManager falsingManager, VibratorHelper vibratorHelper, ActivityStarter activityStarter, Function1 function1) {
        final RepeatWhenAttachedKt$repeatWhenAttached$1 repeatWhenAttached;
        final View requireViewById = viewGroup.requireViewById(com.android.systemui.R.id.keyguard_indication_area);
        final View findViewById = viewGroup.findViewById(com.android.systemui.R.id.ambient_indication_container);
        KeyguardSecAffordanceView keyguardSecAffordanceView = (KeyguardSecAffordanceView) viewGroup.requireViewById(com.android.systemui.R.id.start_button);
        KeyguardSecAffordanceView keyguardSecAffordanceView2 = (KeyguardSecAffordanceView) viewGroup.requireViewById(com.android.systemui.R.id.end_button);
        View requireViewById2 = viewGroup.requireViewById(com.android.systemui.R.id.overlay_container);
        TextView textView = (TextView) viewGroup.requireViewById(com.android.systemui.R.id.keyguard_indication_text);
        TextView textView2 = (TextView) viewGroup.requireViewById(com.android.systemui.R.id.keyguard_indication_text_bottom);
        final LaunchableLinearLayout launchableLinearLayout = (LaunchableLinearLayout) viewGroup.requireViewById(com.android.systemui.R.id.keyguard_settings_button);
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        viewGroup.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean z;
                LaunchableLinearLayout launchableLinearLayout2 = LaunchableLinearLayout.this;
                Intrinsics.checkNotNull(launchableLinearLayout2);
                if (launchableLinearLayout2.getVisibility() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    Rect rect = new Rect();
                    LaunchableLinearLayout.this.getHitRect(rect);
                    if (!rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                        keyguardBottomAreaViewModel.longPressViewModel.interactor.hideMenu();
                    }
                }
                return false;
            }
        });
        final StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(loadFromResources(viewGroup));
        repeatWhenAttached = RepeatWhenAttachedKt.repeatWhenAttached(viewGroup, EmptyCoroutineContext.INSTANCE, new KeyguardBottomAreaViewBinder$bind$disposableHandle$1(activityStarter, keyguardBottomAreaViewModel, this, keyguardSecAffordanceView, falsingManager, function1, vibratorHelper, keyguardSecAffordanceView2, requireViewById2, viewGroup, findViewById, requireViewById, MutableStateFlow, textView, textView2, launchableLinearLayout, null));
        return new Binding() { // from class: com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder$bind$2
            @Override // com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.Binding
            public final void destroy() {
                repeatWhenAttached.dispose();
            }

            @Override // com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.Binding
            public final List getIndicationAreaAnimators() {
                ViewPropertyAnimator viewPropertyAnimator;
                List<View> listOf = CollectionsKt__CollectionsKt.listOf(requireViewById, findViewById);
                ArrayList arrayList = new ArrayList();
                for (View view : listOf) {
                    if (view != null) {
                        viewPropertyAnimator = view.animate();
                    } else {
                        viewPropertyAnimator = null;
                    }
                    if (viewPropertyAnimator != null) {
                        arrayList.add(viewPropertyAnimator);
                    }
                }
                return arrayList;
            }

            @Override // com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.Binding
            public final void onConfigurationChanged() {
                KeyguardBottomAreaViewBinder.Companion companion = KeyguardBottomAreaViewBinder.Companion;
                this.getClass();
                ((StateFlowImpl) MutableStateFlow).setValue(KeyguardBottomAreaViewBinder.loadFromResources(viewGroup));
            }

            @Override // com.android.systemui.keyguard.ui.binder.KeyguardBottomAreaViewBinder.Binding
            public final boolean shouldConstrainToTopOfLockIcon() {
                return ((KeyguardRepositoryImpl) keyguardBottomAreaViewModel.bottomAreaInteractor.repository).keyguardUpdateMonitor.isUdfpsSupported();
            }
        };
    }
}
