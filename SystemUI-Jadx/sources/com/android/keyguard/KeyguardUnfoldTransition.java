package com.android.keyguard;

import android.content.Context;
import android.view.View;
import com.android.systemui.R;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shared.animation.UnfoldConstantTranslateAnimator;
import com.android.systemui.unfold.util.NaturalRotationUnfoldProgressProvider;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardUnfoldTransition {
    public final Context context;
    public final Function0 filterKeyguard;
    public final Function0 filterKeyguardAndSplitShadeOnly;
    public boolean statusViewCentered;
    public final Lazy translateAnimator$delegate;

    public KeyguardUnfoldTransition(Context context, final StatusBarStateController statusBarStateController, final NaturalRotationUnfoldProgressProvider naturalRotationUnfoldProgressProvider) {
        this.context = context;
        this.filterKeyguardAndSplitShadeOnly = new Function0() { // from class: com.android.keyguard.KeyguardUnfoldTransition$filterKeyguardAndSplitShadeOnly$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                boolean z = true;
                if (StatusBarStateController.this.getState() != 1 || this.statusViewCentered) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        };
        this.filterKeyguard = new Function0() { // from class: com.android.keyguard.KeyguardUnfoldTransition$filterKeyguard$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                boolean z = true;
                if (StatusBarStateController.this.getState() != 1) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        };
        this.translateAnimator$delegate = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.android.keyguard.KeyguardUnfoldTransition$translateAnimator$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                UnfoldConstantTranslateAnimator.Direction direction = UnfoldConstantTranslateAnimator.Direction.START;
                UnfoldConstantTranslateAnimator.ViewIdToTranslate viewIdToTranslate = new UnfoldConstantTranslateAnimator.ViewIdToTranslate(R.id.keyguard_status_area, direction, KeyguardUnfoldTransition.this.filterKeyguard, new Function2() { // from class: com.android.keyguard.KeyguardUnfoldTransition$translateAnimator$2.1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        KeyguardStatusAreaView keyguardStatusAreaView;
                        View view = (View) obj;
                        float floatValue = ((Number) obj2).floatValue();
                        if (view instanceof KeyguardStatusAreaView) {
                            keyguardStatusAreaView = (KeyguardStatusAreaView) view;
                        } else {
                            keyguardStatusAreaView = null;
                        }
                        if (keyguardStatusAreaView != null) {
                            keyguardStatusAreaView.translateXFromUnfold = floatValue;
                            keyguardStatusAreaView.setTranslationX(keyguardStatusAreaView.translateXFromAod + keyguardStatusAreaView.translateXFromClockDesign + floatValue);
                        }
                        return Unit.INSTANCE;
                    }
                });
                Function2 function2 = null;
                int i = 8;
                DefaultConstructorMarker defaultConstructorMarker = null;
                UnfoldConstantTranslateAnimator.ViewIdToTranslate viewIdToTranslate2 = new UnfoldConstantTranslateAnimator.ViewIdToTranslate(R.id.lockscreen_clock_view_large, direction, KeyguardUnfoldTransition.this.filterKeyguardAndSplitShadeOnly, function2, i, defaultConstructorMarker);
                UnfoldConstantTranslateAnimator.ViewIdToTranslate viewIdToTranslate3 = new UnfoldConstantTranslateAnimator.ViewIdToTranslate(R.id.lockscreen_clock_view, direction, KeyguardUnfoldTransition.this.filterKeyguard, function2, i, defaultConstructorMarker);
                int i2 = R.id.notification_stack_scroller;
                UnfoldConstantTranslateAnimator.Direction direction2 = UnfoldConstantTranslateAnimator.Direction.END;
                return new UnfoldConstantTranslateAnimator(SetsKt__SetsKt.setOf(viewIdToTranslate, viewIdToTranslate2, viewIdToTranslate3, new UnfoldConstantTranslateAnimator.ViewIdToTranslate(i2, direction2, KeyguardUnfoldTransition.this.filterKeyguardAndSplitShadeOnly, null, 8, null), new UnfoldConstantTranslateAnimator.ViewIdToTranslate(R.id.start_button, direction, KeyguardUnfoldTransition.this.filterKeyguard, function2, i, defaultConstructorMarker), new UnfoldConstantTranslateAnimator.ViewIdToTranslate(R.id.end_button, direction2, KeyguardUnfoldTransition.this.filterKeyguard, function2, i, defaultConstructorMarker)), naturalRotationUnfoldProgressProvider);
            }
        });
    }
}
