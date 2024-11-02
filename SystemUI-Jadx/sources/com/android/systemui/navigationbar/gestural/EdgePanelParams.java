package com.android.systemui.navigationbar.gestural;

import android.content.res.Resources;
import android.util.TypedValue;
import androidx.core.animation.Interpolator;
import androidx.core.animation.PathInterpolator;
import androidx.dynamicanimation.animation.SpringForce;
import com.android.settingslib.udfps.UdfpsOverlayParams$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.R;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatRange;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class EdgePanelParams {
    public BackIndicatorDimens activeIndicator;
    public PathInterpolator activeWidthInterpolator;
    public Interpolator arrowAngleInterpolator;
    public float arrowThickness;
    public BackIndicatorDimens cancelledIndicator;
    public BackIndicatorDimens committedIndicator;
    public float deactivationTriggerThreshold;
    public ClosedFloatRange dynamicTriggerThresholdRange;
    public PathInterpolator edgeCornerInterpolator;
    public BackIndicatorDimens entryIndicator;
    public PathInterpolator entryWidthInterpolator;
    public PathInterpolator entryWidthTowardsEdgeInterpolator;
    public PathInterpolator farCornerInterpolator;
    public int fingerOffset;
    public BackIndicatorDimens flungIndicator;
    public BackIndicatorDimens fullyStretchedIndicator;
    public PathInterpolator heightInterpolator;
    public PathInterpolator horizontalTranslationInterpolator;
    public int minArrowYPosition;
    public BackIndicatorDimens preThresholdIndicator;
    public float reactivationTriggerThreshold;
    public Resources resources;
    public float staticTriggerThreshold;
    public float swipeProgressThreshold;
    public PathInterpolator verticalTranslationInterpolator;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ArrowDimens {
        public final float alpha;
        public final Step alphaInterpolator;
        public final Step alphaSpring;
        public final Float height;
        public final SpringForce heightSpring;
        public final Float length;
        public final SpringForce lengthSpring;

        public ArrowDimens() {
            this(null, null, 0.0f, null, null, null, null, 127, null);
        }

        public static ArrowDimens copy$default(ArrowDimens arrowDimens, Float f, Float f2, SpringForce springForce, SpringForce springForce2) {
            float f3 = arrowDimens.alpha;
            Step step = arrowDimens.alphaSpring;
            Step step2 = arrowDimens.alphaInterpolator;
            arrowDimens.getClass();
            return new ArrowDimens(f, f2, f3, springForce, springForce2, step, step2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ArrowDimens)) {
                return false;
            }
            ArrowDimens arrowDimens = (ArrowDimens) obj;
            if (Intrinsics.areEqual(this.length, arrowDimens.length) && Intrinsics.areEqual(this.height, arrowDimens.height) && Float.compare(this.alpha, arrowDimens.alpha) == 0 && Intrinsics.areEqual(this.heightSpring, arrowDimens.heightSpring) && Intrinsics.areEqual(this.lengthSpring, arrowDimens.lengthSpring) && Intrinsics.areEqual(this.alphaSpring, arrowDimens.alphaSpring) && Intrinsics.areEqual(this.alphaInterpolator, arrowDimens.alphaInterpolator)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int i = 0;
            Float f = this.length;
            if (f == null) {
                hashCode = 0;
            } else {
                hashCode = f.hashCode();
            }
            int i2 = hashCode * 31;
            Float f2 = this.height;
            if (f2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = f2.hashCode();
            }
            int m = UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.alpha, (i2 + hashCode2) * 31, 31);
            SpringForce springForce = this.heightSpring;
            if (springForce == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = springForce.hashCode();
            }
            int i3 = (m + hashCode3) * 31;
            SpringForce springForce2 = this.lengthSpring;
            if (springForce2 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = springForce2.hashCode();
            }
            int i4 = (i3 + hashCode4) * 31;
            Step step = this.alphaSpring;
            if (step == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = step.hashCode();
            }
            int i5 = (i4 + hashCode5) * 31;
            Step step2 = this.alphaInterpolator;
            if (step2 != null) {
                i = step2.hashCode();
            }
            return i5 + i;
        }

        public final String toString() {
            return "ArrowDimens(length=" + this.length + ", height=" + this.height + ", alpha=" + this.alpha + ", heightSpring=" + this.heightSpring + ", lengthSpring=" + this.lengthSpring + ", alphaSpring=" + this.alphaSpring + ", alphaInterpolator=" + this.alphaInterpolator + ")";
        }

        public ArrowDimens(Float f, Float f2, float f3, SpringForce springForce, SpringForce springForce2, Step step, Step step2) {
            this.length = f;
            this.height = f2;
            this.alpha = f3;
            this.heightSpring = springForce;
            this.lengthSpring = springForce2;
            this.alphaSpring = step;
            this.alphaInterpolator = step2;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public /* synthetic */ ArrowDimens(java.lang.Float r3, java.lang.Float r4, float r5, androidx.dynamicanimation.animation.SpringForce r6, androidx.dynamicanimation.animation.SpringForce r7, com.android.systemui.navigationbar.gestural.Step r8, com.android.systemui.navigationbar.gestural.Step r9, int r10, kotlin.jvm.internal.DefaultConstructorMarker r11) {
            /*
                r2 = this;
                r11 = r10 & 1
                r0 = 0
                java.lang.Float r1 = java.lang.Float.valueOf(r0)
                if (r11 == 0) goto La
                r3 = r1
            La:
                r11 = r10 & 2
                if (r11 == 0) goto Lf
                r4 = r1
            Lf:
                r11 = r10 & 4
                if (r11 == 0) goto L14
                r5 = r0
            L14:
                r11 = r10 & 8
                r0 = 0
                if (r11 == 0) goto L1a
                r6 = r0
            L1a:
                r11 = r10 & 16
                if (r11 == 0) goto L1f
                r7 = r0
            L1f:
                r11 = r10 & 32
                if (r11 == 0) goto L24
                r8 = r0
            L24:
                r10 = r10 & 64
                if (r10 == 0) goto L29
                r9 = r0
            L29:
                r2.<init>(r3, r4, r5, r6, r7, r8, r9)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.gestural.EdgePanelParams.ArrowDimens.<init>(java.lang.Float, java.lang.Float, float, androidx.dynamicanimation.animation.SpringForce, androidx.dynamicanimation.animation.SpringForce, com.android.systemui.navigationbar.gestural.Step, com.android.systemui.navigationbar.gestural.Step, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class BackgroundDimens {
        public final float alpha;
        public final SpringForce alphaSpring;
        public final float edgeCornerRadius;
        public final SpringForce edgeCornerRadiusSpring;
        public final float farCornerRadius;
        public final SpringForce farCornerRadiusSpring;
        public final float height;
        public final SpringForce heightSpring;
        public final Float width;
        public final SpringForce widthSpring;

        public BackgroundDimens() {
            this(null, 0.0f, 0.0f, 0.0f, 0.0f, null, null, null, null, null, 1023, null);
        }

        public static BackgroundDimens copy$default(BackgroundDimens backgroundDimens, Float f, SpringForce springForce, SpringForce springForce2, SpringForce springForce3, SpringForce springForce4, SpringForce springForce5, int i) {
            Float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            SpringForce springForce6;
            SpringForce springForce7;
            SpringForce springForce8;
            SpringForce springForce9;
            SpringForce springForce10;
            if ((i & 1) != 0) {
                f2 = backgroundDimens.width;
            } else {
                f2 = f;
            }
            if ((i & 2) != 0) {
                f3 = backgroundDimens.height;
            } else {
                f3 = 0.0f;
            }
            if ((i & 4) != 0) {
                f4 = backgroundDimens.edgeCornerRadius;
            } else {
                f4 = 0.0f;
            }
            if ((i & 8) != 0) {
                f5 = backgroundDimens.farCornerRadius;
            } else {
                f5 = 0.0f;
            }
            if ((i & 16) != 0) {
                f6 = backgroundDimens.alpha;
            } else {
                f6 = 0.0f;
            }
            if ((i & 32) != 0) {
                springForce6 = backgroundDimens.widthSpring;
            } else {
                springForce6 = springForce;
            }
            if ((i & 64) != 0) {
                springForce7 = backgroundDimens.heightSpring;
            } else {
                springForce7 = springForce2;
            }
            if ((i & 128) != 0) {
                springForce8 = backgroundDimens.farCornerRadiusSpring;
            } else {
                springForce8 = springForce3;
            }
            if ((i & 256) != 0) {
                springForce9 = backgroundDimens.edgeCornerRadiusSpring;
            } else {
                springForce9 = springForce4;
            }
            if ((i & 512) != 0) {
                springForce10 = backgroundDimens.alphaSpring;
            } else {
                springForce10 = springForce5;
            }
            backgroundDimens.getClass();
            return new BackgroundDimens(f2, f3, f4, f5, f6, springForce6, springForce7, springForce8, springForce9, springForce10);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BackgroundDimens)) {
                return false;
            }
            BackgroundDimens backgroundDimens = (BackgroundDimens) obj;
            if (Intrinsics.areEqual(this.width, backgroundDimens.width) && Float.compare(this.height, backgroundDimens.height) == 0 && Float.compare(this.edgeCornerRadius, backgroundDimens.edgeCornerRadius) == 0 && Float.compare(this.farCornerRadius, backgroundDimens.farCornerRadius) == 0 && Float.compare(this.alpha, backgroundDimens.alpha) == 0 && Intrinsics.areEqual(this.widthSpring, backgroundDimens.widthSpring) && Intrinsics.areEqual(this.heightSpring, backgroundDimens.heightSpring) && Intrinsics.areEqual(this.farCornerRadiusSpring, backgroundDimens.farCornerRadiusSpring) && Intrinsics.areEqual(this.edgeCornerRadiusSpring, backgroundDimens.edgeCornerRadiusSpring) && Intrinsics.areEqual(this.alphaSpring, backgroundDimens.alphaSpring)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int hashCode5;
            int i = 0;
            Float f = this.width;
            if (f == null) {
                hashCode = 0;
            } else {
                hashCode = f.hashCode();
            }
            int m = UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.alpha, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.farCornerRadius, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.edgeCornerRadius, UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.height, hashCode * 31, 31), 31), 31), 31);
            SpringForce springForce = this.widthSpring;
            if (springForce == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = springForce.hashCode();
            }
            int i2 = (m + hashCode2) * 31;
            SpringForce springForce2 = this.heightSpring;
            if (springForce2 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = springForce2.hashCode();
            }
            int i3 = (i2 + hashCode3) * 31;
            SpringForce springForce3 = this.farCornerRadiusSpring;
            if (springForce3 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = springForce3.hashCode();
            }
            int i4 = (i3 + hashCode4) * 31;
            SpringForce springForce4 = this.edgeCornerRadiusSpring;
            if (springForce4 == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = springForce4.hashCode();
            }
            int i5 = (i4 + hashCode5) * 31;
            SpringForce springForce5 = this.alphaSpring;
            if (springForce5 != null) {
                i = springForce5.hashCode();
            }
            return i5 + i;
        }

        public final String toString() {
            return "BackgroundDimens(width=" + this.width + ", height=" + this.height + ", edgeCornerRadius=" + this.edgeCornerRadius + ", farCornerRadius=" + this.farCornerRadius + ", alpha=" + this.alpha + ", widthSpring=" + this.widthSpring + ", heightSpring=" + this.heightSpring + ", farCornerRadiusSpring=" + this.farCornerRadiusSpring + ", edgeCornerRadiusSpring=" + this.edgeCornerRadiusSpring + ", alphaSpring=" + this.alphaSpring + ")";
        }

        public BackgroundDimens(Float f, float f2, float f3, float f4, float f5, SpringForce springForce, SpringForce springForce2, SpringForce springForce3, SpringForce springForce4, SpringForce springForce5) {
            this.width = f;
            this.height = f2;
            this.edgeCornerRadius = f3;
            this.farCornerRadius = f4;
            this.alpha = f5;
            this.widthSpring = springForce;
            this.heightSpring = springForce2;
            this.farCornerRadiusSpring = springForce3;
            this.edgeCornerRadiusSpring = springForce4;
            this.alphaSpring = springForce5;
        }

        public /* synthetic */ BackgroundDimens(Float f, float f2, float f3, float f4, float f5, SpringForce springForce, SpringForce springForce2, SpringForce springForce3, SpringForce springForce4, SpringForce springForce5, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? Float.valueOf(0.0f) : f, (i & 2) != 0 ? 0.0f : f2, (i & 4) != 0 ? 0.0f : f3, (i & 8) != 0 ? 0.0f : f4, (i & 16) == 0 ? f5 : 0.0f, (i & 32) != 0 ? null : springForce, (i & 64) != 0 ? null : springForce2, (i & 128) != 0 ? null : springForce3, (i & 256) != 0 ? null : springForce4, (i & 512) == 0 ? springForce5 : null);
        }
    }

    public EdgePanelParams(Resources resources) {
        this.resources = resources;
        update(resources);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof EdgePanelParams) && Intrinsics.areEqual(this.resources, ((EdgePanelParams) obj).resources)) {
            return true;
        }
        return false;
    }

    public final BackIndicatorDimens getActiveIndicator() {
        BackIndicatorDimens backIndicatorDimens = this.activeIndicator;
        if (backIndicatorDimens != null) {
            return backIndicatorDimens;
        }
        return null;
    }

    public final BackIndicatorDimens getCommittedIndicator() {
        BackIndicatorDimens backIndicatorDimens = this.committedIndicator;
        if (backIndicatorDimens != null) {
            return backIndicatorDimens;
        }
        return null;
    }

    public final float getDimen(int i) {
        return this.resources.getDimension(i);
    }

    public final float getDimenFloat(int i) {
        TypedValue typedValue = new TypedValue();
        this.resources.getValue(i, typedValue, true);
        return typedValue.getFloat();
    }

    public final BackIndicatorDimens getEntryIndicator() {
        BackIndicatorDimens backIndicatorDimens = this.entryIndicator;
        if (backIndicatorDimens != null) {
            return backIndicatorDimens;
        }
        return null;
    }

    public final BackIndicatorDimens getFlungIndicator() {
        BackIndicatorDimens backIndicatorDimens = this.flungIndicator;
        if (backIndicatorDimens != null) {
            return backIndicatorDimens;
        }
        return null;
    }

    public final BackIndicatorDimens getPreThresholdIndicator() {
        BackIndicatorDimens backIndicatorDimens = this.preThresholdIndicator;
        if (backIndicatorDimens != null) {
            return backIndicatorDimens;
        }
        return null;
    }

    public final int hashCode() {
        return this.resources.hashCode();
    }

    public final String toString() {
        return "EdgePanelParams(resources=" + this.resources + ")";
    }

    public final void update(Resources resources) {
        float f;
        int i;
        int i2;
        this.resources = resources;
        this.arrowThickness = getDimen(R.dimen.navigation_edge_arrow_thickness);
        this.resources.getDimensionPixelSize(R.dimen.navigation_edge_panel_padding);
        this.minArrowYPosition = this.resources.getDimensionPixelSize(R.dimen.navigation_edge_arrow_min_y);
        this.fingerOffset = this.resources.getDimensionPixelSize(R.dimen.navigation_edge_finger_offset);
        this.staticTriggerThreshold = getDimen(R.dimen.navigation_edge_action_drag_threshold);
        this.reactivationTriggerThreshold = getDimen(R.dimen.navigation_edge_action_reactivation_drag_threshold);
        float dimen = getDimen(R.dimen.navigation_edge_action_deactivation_drag_threshold);
        this.deactivationTriggerThreshold = dimen;
        this.dynamicTriggerThresholdRange = new ClosedFloatRange(this.reactivationTriggerThreshold, -dimen);
        this.swipeProgressThreshold = getDimen(R.dimen.navigation_edge_action_progress_threshold);
        this.entryWidthInterpolator = new PathInterpolator(0.19f, 1.27f, 0.71f, 0.86f);
        this.entryWidthTowardsEdgeInterpolator = new PathInterpolator(1.0f, -3.0f, 1.0f, 1.2f);
        this.activeWidthInterpolator = new PathInterpolator(0.7f, -0.24f, 0.48f, 1.21f);
        PathInterpolator pathInterpolator = this.entryWidthInterpolator;
        if (pathInterpolator == null) {
            pathInterpolator = null;
        }
        this.arrowAngleInterpolator = pathInterpolator;
        this.horizontalTranslationInterpolator = new PathInterpolator(0.2f, 1.0f, 1.0f, 1.0f);
        this.verticalTranslationInterpolator = new PathInterpolator(0.5f, 1.15f, 0.41f, 0.94f);
        this.farCornerInterpolator = new PathInterpolator(0.03f, 0.19f, 0.14f, 1.09f);
        this.edgeCornerInterpolator = new PathInterpolator(0.0f, 1.11f, 0.85f, 0.84f);
        this.heightInterpolator = new PathInterpolator(1.0f, 0.05f, 0.9f, -0.29f);
        SpringForce createSpring = EdgePanelParamsKt.createSpring(1500.0f, 0.29f);
        SpringForce createSpring2 = EdgePanelParamsKt.createSpring(1500.0f, 0.29f);
        SpringForce createSpring3 = EdgePanelParamsKt.createSpring(10000.0f, 1.0f);
        SpringForce createSpring4 = EdgePanelParamsKt.createSpring(10000.0f, 1.0f);
        SpringForce createSpring5 = EdgePanelParamsKt.createSpring(10000.0f, 1.0f);
        SpringForce createSpring6 = EdgePanelParamsKt.createSpring(10000.0f, 1.0f);
        Step step = new Step(0.165f, 1.05f, EdgePanelParamsKt.createSpring(180.0f, 0.9f), EdgePanelParamsKt.createSpring(2000.0f, 0.6f));
        Step step2 = new Step(0.165f, 1.05f, Float.valueOf(1.0f), Float.valueOf(0.0f));
        float dimen2 = getDimen(R.dimen.navigation_edge_entry_margin);
        float dimenFloat = getDimenFloat(R.dimen.navigation_edge_entry_scale);
        float dimen3 = getDimen(R.dimen.navigation_edge_pre_threshold_background_width);
        SpringForce createSpring7 = EdgePanelParamsKt.createSpring(800.0f, 0.76f);
        SpringForce createSpring8 = EdgePanelParamsKt.createSpring(30000.0f, 1.0f);
        SpringForce createSpring9 = EdgePanelParamsKt.createSpring(120.0f, 0.8f);
        float dimen4 = getDimen(R.dimen.navigation_edge_entry_arrow_length);
        float dimen5 = getDimen(R.dimen.navigation_edge_entry_arrow_height);
        SpringForce createSpring10 = EdgePanelParamsKt.createSpring(600.0f, 0.4f);
        ArrowDimens arrowDimens = new ArrowDimens(Float.valueOf(dimen4), Float.valueOf(dimen5), 0.0f, EdgePanelParamsKt.createSpring(600.0f, 0.4f), createSpring10, step, step2);
        float dimen6 = getDimen(R.dimen.navigation_edge_entry_background_width);
        this.entryIndicator = new BackIndicatorDimens(Float.valueOf(dimen2), dimenFloat, Float.valueOf(dimen3), arrowDimens, new BackgroundDimens(Float.valueOf(dimen6), getDimen(R.dimen.navigation_edge_entry_background_height), getDimen(R.dimen.navigation_edge_entry_edge_corners), getDimen(R.dimen.navigation_edge_entry_far_corners), 1.0f, EdgePanelParamsKt.createSpring(450.0f, 0.65f), EdgePanelParamsKt.createSpring(1500.0f, 0.45f), EdgePanelParamsKt.createSpring(300.0f, 0.5f), EdgePanelParamsKt.createSpring(150.0f, 0.5f), null, 512, null), createSpring8, createSpring7, createSpring9);
        float dimen7 = getDimen(R.dimen.navigation_edge_active_margin);
        float dimenFloat2 = getDimenFloat(R.dimen.navigation_edge_active_scale);
        SpringForce createSpring11 = EdgePanelParamsKt.createSpring(1000.0f, 0.8f);
        boolean z = BasicRune.NAVBAR_GESTURE;
        if (z) {
            f = 0.85f;
        } else {
            f = 0.55f;
        }
        SpringForce createSpring12 = EdgePanelParamsKt.createSpring(325.0f, f);
        float dimen8 = getDimen(R.dimen.navigation_edge_active_background_width);
        if (z) {
            i = R.dimen.samsung_navigation_edge_active_arrow_length;
        } else {
            i = R.dimen.navigation_edge_active_arrow_length;
        }
        float dimen9 = getDimen(i);
        if (z) {
            i2 = R.dimen.samsung_navigation_edge_active_arrow_height;
        } else {
            i2 = R.dimen.navigation_edge_active_arrow_height;
        }
        ArrowDimens arrowDimens2 = new ArrowDimens(Float.valueOf(dimen9), Float.valueOf(getDimen(i2)), 1.0f, createSpring2, createSpring, step, step2);
        float dimen10 = getDimen(R.dimen.navigation_edge_active_background_width);
        float dimen11 = getDimen(R.dimen.navigation_edge_active_background_height);
        float dimen12 = getDimen(R.dimen.navigation_edge_active_edge_corners);
        float dimen13 = getDimen(R.dimen.navigation_edge_active_far_corners);
        SpringForce createSpring13 = EdgePanelParamsKt.createSpring(850.0f, 0.75f);
        SpringForce createSpring14 = EdgePanelParamsKt.createSpring(10000.0f, 1.0f);
        SpringForce createSpring15 = EdgePanelParamsKt.createSpring(2600.0f, 0.855f);
        this.activeIndicator = new BackIndicatorDimens(Float.valueOf(dimen7), dimenFloat2, Float.valueOf(dimen8), arrowDimens2, new BackgroundDimens(Float.valueOf(dimen10), dimen11, dimen12, dimen13, 1.0f, createSpring13, createSpring14, EdgePanelParamsKt.createSpring(1200.0f, 0.3f), createSpring15, null, 512, null), null, createSpring11, createSpring12, 32, null);
        float dimen14 = getDimen(R.dimen.navigation_edge_pre_threshold_margin);
        float dimenFloat3 = getDimenFloat(R.dimen.navigation_edge_pre_threshold_scale);
        float dimen15 = getDimen(R.dimen.navigation_edge_pre_threshold_background_width);
        SpringForce createSpring16 = EdgePanelParamsKt.createSpring(120.0f, 0.8f);
        SpringForce createSpring17 = EdgePanelParamsKt.createSpring(6000.0f, 1.0f);
        float dimen16 = getDimen(R.dimen.navigation_edge_pre_threshold_arrow_length);
        float dimen17 = getDimen(R.dimen.navigation_edge_pre_threshold_arrow_height);
        SpringForce createSpring18 = EdgePanelParamsKt.createSpring(100.0f, 0.6f);
        ArrowDimens arrowDimens3 = new ArrowDimens(Float.valueOf(dimen16), Float.valueOf(dimen17), 1.0f, EdgePanelParamsKt.createSpring(100.0f, 0.6f), createSpring18, step, step2);
        float dimen18 = getDimen(R.dimen.navigation_edge_pre_threshold_background_width);
        float dimen19 = getDimen(R.dimen.navigation_edge_pre_threshold_background_height);
        float dimen20 = getDimen(R.dimen.navigation_edge_pre_threshold_edge_corners);
        float dimen21 = getDimen(R.dimen.navigation_edge_pre_threshold_far_corners);
        SpringForce createSpring19 = EdgePanelParamsKt.createSpring(650.0f, 1.0f);
        SpringForce createSpring20 = EdgePanelParamsKt.createSpring(1500.0f, 0.45f);
        SpringForce createSpring21 = EdgePanelParamsKt.createSpring(300.0f, 1.0f);
        SpringForce createSpring22 = EdgePanelParamsKt.createSpring(250.0f, 0.5f);
        BackgroundDimens backgroundDimens = new BackgroundDimens(Float.valueOf(dimen18), dimen19, dimen20, dimen21, 1.0f, createSpring19, createSpring20, createSpring21, createSpring22, null, 512, null);
        this.preThresholdIndicator = new BackIndicatorDimens(Float.valueOf(dimen14), dimenFloat3, Float.valueOf(dimen15), arrowDimens3, backgroundDimens, null, createSpring17, createSpring16, 32, null);
        this.committedIndicator = BackIndicatorDimens.copy$default(getActiveIndicator(), 0.86f, ArrowDimens.copy$default(getActiveIndicator().arrowDimens, null, null, createSpring2, createSpring), BackgroundDimens.copy$default(getActiveIndicator().backgroundDimens, null, createSpring5, createSpring6, createSpring4, createSpring3, EdgePanelParamsKt.createSpring(1400.0f, 1.0f), 14), null, EdgePanelParamsKt.createSpring(5700.0f, 1.0f), 96);
        BackIndicatorDimens committedIndicator = getCommittedIndicator();
        ArrowDimens arrowDimens4 = getCommittedIndicator().arrowDimens;
        SpringForce createSpring23 = EdgePanelParamsKt.createSpring(850.0f, 0.46f);
        this.flungIndicator = BackIndicatorDimens.copy$default(committedIndicator, 0.0f, ArrowDimens.copy$default(arrowDimens4, getActiveIndicator().arrowDimens.length, getActiveIndicator().arrowDimens.height, EdgePanelParamsKt.createSpring(850.0f, 0.46f), createSpring23), BackgroundDimens.copy$default(getCommittedIndicator().backgroundDimens, null, createSpring5, createSpring6, createSpring4, createSpring3, null, 543), null, null, IKnoxCustomManager.Stub.TRANSACTION_removeShortcut);
        this.cancelledIndicator = BackIndicatorDimens.copy$default(getEntryIndicator(), 0.0f, null, BackgroundDimens.copy$default(getEntryIndicator().backgroundDimens, Float.valueOf(0.0f), null, null, null, null, EdgePanelParamsKt.createSpring(450.0f, 1.0f), 494), null, null, IKnoxCustomManager.Stub.TRANSACTION_getFavoriteAppsMaxCount);
        float dimen22 = getDimen(R.dimen.navigation_edge_stretch_margin);
        float dimenFloat4 = getDimenFloat(R.dimen.navigation_edge_stretch_scale);
        float dimen23 = getDimen(R.dimen.navigation_edge_stretched_arrow_length);
        float dimen24 = getDimen(R.dimen.navigation_edge_stretched_arrow_height);
        Float valueOf = Float.valueOf(dimen23);
        Float valueOf2 = Float.valueOf(dimen24);
        float f2 = 1.0f;
        SpringForce springForce = null;
        SpringForce springForce2 = null;
        Step step3 = null;
        ArrowDimens arrowDimens5 = new ArrowDimens(valueOf, valueOf2, f2, springForce, springForce2, null, step3, 64, null);
        float dimen25 = getDimen(R.dimen.navigation_edge_stretch_background_width);
        BackgroundDimens backgroundDimens2 = new BackgroundDimens(Float.valueOf(dimen25), getDimen(R.dimen.navigation_edge_stretch_background_height), getDimen(R.dimen.navigation_edge_stretch_edge_corners), getDimen(R.dimen.navigation_edge_stretch_far_corners), 1.0f, null, null, null, null, null);
        Float valueOf3 = Float.valueOf(dimen22);
        SpringForce springForce3 = null;
        this.fullyStretchedIndicator = new BackIndicatorDimens(valueOf3, dimenFloat4, null, arrowDimens5, backgroundDimens2, springForce3, null, null, 4, null);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class BackIndicatorDimens {
        public final ArrowDimens arrowDimens;
        public final BackgroundDimens backgroundDimens;
        public final Float horizontalTranslation;
        public final SpringForce horizontalTranslationSpring;
        public final float scale;
        public final Float scalePivotX;
        public final SpringForce scaleSpring;
        public final SpringForce verticalTranslationSpring;

        public BackIndicatorDimens(Float f, float f2, Float f3, ArrowDimens arrowDimens, BackgroundDimens backgroundDimens, SpringForce springForce, SpringForce springForce2, SpringForce springForce3) {
            this.horizontalTranslation = f;
            this.scale = f2;
            this.scalePivotX = f3;
            this.arrowDimens = arrowDimens;
            this.backgroundDimens = backgroundDimens;
            this.verticalTranslationSpring = springForce;
            this.horizontalTranslationSpring = springForce2;
            this.scaleSpring = springForce3;
        }

        public static BackIndicatorDimens copy$default(BackIndicatorDimens backIndicatorDimens, float f, ArrowDimens arrowDimens, BackgroundDimens backgroundDimens, SpringForce springForce, SpringForce springForce2, int i) {
            Float f2;
            float f3;
            Float f4;
            ArrowDimens arrowDimens2;
            BackgroundDimens backgroundDimens2;
            SpringForce springForce3;
            SpringForce springForce4;
            SpringForce springForce5 = null;
            if ((i & 1) != 0) {
                f2 = backIndicatorDimens.horizontalTranslation;
            } else {
                f2 = null;
            }
            if ((i & 2) != 0) {
                f3 = backIndicatorDimens.scale;
            } else {
                f3 = f;
            }
            if ((i & 4) != 0) {
                f4 = backIndicatorDimens.scalePivotX;
            } else {
                f4 = null;
            }
            if ((i & 8) != 0) {
                arrowDimens2 = backIndicatorDimens.arrowDimens;
            } else {
                arrowDimens2 = arrowDimens;
            }
            if ((i & 16) != 0) {
                backgroundDimens2 = backIndicatorDimens.backgroundDimens;
            } else {
                backgroundDimens2 = backgroundDimens;
            }
            if ((i & 32) != 0) {
                springForce5 = backIndicatorDimens.verticalTranslationSpring;
            }
            SpringForce springForce6 = springForce5;
            if ((i & 64) != 0) {
                springForce3 = backIndicatorDimens.horizontalTranslationSpring;
            } else {
                springForce3 = springForce;
            }
            if ((i & 128) != 0) {
                springForce4 = backIndicatorDimens.scaleSpring;
            } else {
                springForce4 = springForce2;
            }
            backIndicatorDimens.getClass();
            return new BackIndicatorDimens(f2, f3, f4, arrowDimens2, backgroundDimens2, springForce6, springForce3, springForce4);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BackIndicatorDimens)) {
                return false;
            }
            BackIndicatorDimens backIndicatorDimens = (BackIndicatorDimens) obj;
            if (Intrinsics.areEqual(this.horizontalTranslation, backIndicatorDimens.horizontalTranslation) && Float.compare(this.scale, backIndicatorDimens.scale) == 0 && Intrinsics.areEqual(this.scalePivotX, backIndicatorDimens.scalePivotX) && Intrinsics.areEqual(this.arrowDimens, backIndicatorDimens.arrowDimens) && Intrinsics.areEqual(this.backgroundDimens, backIndicatorDimens.backgroundDimens) && Intrinsics.areEqual(this.verticalTranslationSpring, backIndicatorDimens.verticalTranslationSpring) && Intrinsics.areEqual(this.horizontalTranslationSpring, backIndicatorDimens.horizontalTranslationSpring) && Intrinsics.areEqual(this.scaleSpring, backIndicatorDimens.scaleSpring)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            int hashCode4;
            int i = 0;
            Float f = this.horizontalTranslation;
            if (f == null) {
                hashCode = 0;
            } else {
                hashCode = f.hashCode();
            }
            int m = UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.scale, hashCode * 31, 31);
            Float f2 = this.scalePivotX;
            if (f2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = f2.hashCode();
            }
            int hashCode5 = (this.backgroundDimens.hashCode() + ((this.arrowDimens.hashCode() + ((m + hashCode2) * 31)) * 31)) * 31;
            SpringForce springForce = this.verticalTranslationSpring;
            if (springForce == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = springForce.hashCode();
            }
            int i2 = (hashCode5 + hashCode3) * 31;
            SpringForce springForce2 = this.horizontalTranslationSpring;
            if (springForce2 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = springForce2.hashCode();
            }
            int i3 = (i2 + hashCode4) * 31;
            SpringForce springForce3 = this.scaleSpring;
            if (springForce3 != null) {
                i = springForce3.hashCode();
            }
            return i3 + i;
        }

        public final String toString() {
            return "BackIndicatorDimens(horizontalTranslation=" + this.horizontalTranslation + ", scale=" + this.scale + ", scalePivotX=" + this.scalePivotX + ", arrowDimens=" + this.arrowDimens + ", backgroundDimens=" + this.backgroundDimens + ", verticalTranslationSpring=" + this.verticalTranslationSpring + ", horizontalTranslationSpring=" + this.horizontalTranslationSpring + ", scaleSpring=" + this.scaleSpring + ")";
        }

        public /* synthetic */ BackIndicatorDimens(Float f, float f2, Float f3, ArrowDimens arrowDimens, BackgroundDimens backgroundDimens, SpringForce springForce, SpringForce springForce2, SpringForce springForce3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? Float.valueOf(0.0f) : f, (i & 2) != 0 ? 0.0f : f2, (i & 4) != 0 ? null : f3, arrowDimens, backgroundDimens, (i & 32) != 0 ? null : springForce, (i & 64) != 0 ? null : springForce2, (i & 128) != 0 ? null : springForce3);
        }
    }
}
