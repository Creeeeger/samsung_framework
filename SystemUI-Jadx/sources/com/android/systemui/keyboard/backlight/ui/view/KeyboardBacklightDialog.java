package com.android.systemui.keyboard.backlight.ui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker.model.viewdata.AppInfoViewData$$ExternalSyntheticOutline0;
import com.android.settingslib.Utils;
import com.android.settingslib.udfps.UdfpsOverlayParams$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyboardBacklightDialog extends Dialog {
    public static final int BACKLIGHT_ICON_ID;
    public static final int[] LEFT_CORNERS_INDICES;
    public static final int[] RIGHT_CORNERS_INDICES;
    public final int backgroundColor;
    public int currentLevel;
    public final int defaultIconBackgroundColor;
    public final int defaultIconColor;
    public final int dialogBottomMargin;
    public final int dimmedIconBackgroundColor;
    public final int dimmedIconColor;
    public final int emptyRectangleColor;
    public final int filledRectangleColor;
    public BacklightIconProperties iconProperties;
    public int maxLevel;
    public RootProperties rootProperties;
    public LinearLayout rootView;
    public StepViewProperties stepProperties;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class BacklightIconProperties {
        public final int height;
        public final int padding;
        public final int width;

        public BacklightIconProperties(int i, int i2, int i3) {
            this.width = i;
            this.height = i2;
            this.padding = i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BacklightIconProperties)) {
                return false;
            }
            BacklightIconProperties backlightIconProperties = (BacklightIconProperties) obj;
            if (this.width == backlightIconProperties.width && this.height == backlightIconProperties.height && this.padding == backlightIconProperties.padding) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.padding) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.height, Integer.hashCode(this.width) * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("BacklightIconProperties(width=");
            sb.append(this.width);
            sb.append(", height=");
            sb.append(this.height);
            sb.append(", padding=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.padding, ")");
        }
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
    public final class RootProperties {
        public final float cornerRadius;
        public final int horizontalPadding;
        public final int verticalPadding;

        public RootProperties(float f, int i, int i2) {
            this.cornerRadius = f;
            this.verticalPadding = i;
            this.horizontalPadding = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RootProperties)) {
                return false;
            }
            RootProperties rootProperties = (RootProperties) obj;
            if (Float.compare(this.cornerRadius, rootProperties.cornerRadius) == 0 && this.verticalPadding == rootProperties.verticalPadding && this.horizontalPadding == rootProperties.horizontalPadding) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.horizontalPadding) + AppInfoViewData$$ExternalSyntheticOutline0.m(this.verticalPadding, Float.hashCode(this.cornerRadius) * 31, 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("RootProperties(cornerRadius=");
            sb.append(this.cornerRadius);
            sb.append(", verticalPadding=");
            sb.append(this.verticalPadding);
            sb.append(", horizontalPadding=");
            return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, this.horizontalPadding, ")");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class StepViewProperties {
        public final int height;
        public final int horizontalMargin;
        public final float largeRadius;
        public final float smallRadius;
        public final int width;

        public StepViewProperties(int i, int i2, int i3, float f, float f2) {
            this.width = i;
            this.height = i2;
            this.horizontalMargin = i3;
            this.smallRadius = f;
            this.largeRadius = f2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StepViewProperties)) {
                return false;
            }
            StepViewProperties stepViewProperties = (StepViewProperties) obj;
            if (this.width == stepViewProperties.width && this.height == stepViewProperties.height && this.horizontalMargin == stepViewProperties.horizontalMargin && Float.compare(this.smallRadius, stepViewProperties.smallRadius) == 0 && Float.compare(this.largeRadius, stepViewProperties.largeRadius) == 0) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Float.hashCode(this.largeRadius) + UdfpsOverlayParams$$ExternalSyntheticOutline0.m(this.smallRadius, AppInfoViewData$$ExternalSyntheticOutline0.m(this.horizontalMargin, AppInfoViewData$$ExternalSyntheticOutline0.m(this.height, Integer.hashCode(this.width) * 31, 31), 31), 31);
        }

        public final String toString() {
            return "StepViewProperties(width=" + this.width + ", height=" + this.height + ", horizontalMargin=" + this.horizontalMargin + ", smallRadius=" + this.smallRadius + ", largeRadius=" + this.largeRadius + ")";
        }
    }

    static {
        new Companion(null);
        BACKLIGHT_ICON_ID = R.id.backlight_icon;
        LEFT_CORNERS_INDICES = new int[]{0, 1, 6, 7};
        RIGHT_CORNERS_INDICES = new int[]{2, 3, 4, 5};
    }

    public KeyboardBacklightDialog(Context context, int i, int i2) {
        super(context, 2132018527);
        this.dialogBottomMargin = 208;
        this.filledRectangleColor = getColorFromStyle(android.R.^attr-private.pointerIconSpotTouch);
        this.emptyRectangleColor = getColorFromStyle(android.R.^attr-private.pointerIconSpotHover);
        this.backgroundColor = getColorFromStyle(android.R.^attr-private.position);
        this.defaultIconColor = getColorFromStyle(android.R.^attr-private.pathAdvancedPattern);
        this.defaultIconBackgroundColor = getColorFromStyle(android.R.^attr-private.pointerIconSpotTouch);
        this.dimmedIconColor = getColorFromStyle(android.R.^attr-private.pointerIconCrosshair);
        this.dimmedIconBackgroundColor = getColorFromStyle(android.R.^attr-private.preferenceListStyle);
        this.currentLevel = i;
        this.maxLevel = i2;
    }

    public static void updateColor(ShapeDrawable shapeDrawable, int i) {
        if (shapeDrawable.getPaint().getColor() != i) {
            shapeDrawable.getPaint().setColor(i);
            shapeDrawable.invalidateSelf();
        }
    }

    public final int getColorFromStyle(int i) {
        return Utils.getColorAttrDefaultColor(i, getContext(), 0);
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        RootProperties rootProperties;
        RootProperties rootProperties2;
        RootProperties rootProperties3;
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
            window.setType(2017);
            window.addFlags(655360);
            window.clearFlags(2);
            window.setBackgroundDrawableResource(android.R.color.transparent);
            window.getAttributes().setTitle("KeyboardBacklightDialog");
        }
        setCanceledOnTouchOutside(true);
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setGravity(81);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.copyFrom(window2.getAttributes());
            layoutParams.y = this.dialogBottomMargin;
            window2.setAttributes(layoutParams);
        }
        Resources resources = getContext().getResources();
        this.rootProperties = new RootProperties(resources.getDimensionPixelSize(R.dimen.backlight_indicator_root_corner_radius), resources.getDimensionPixelSize(R.dimen.backlight_indicator_root_vertical_padding), resources.getDimensionPixelSize(R.dimen.backlight_indicator_root_horizontal_padding));
        this.iconProperties = new BacklightIconProperties(resources.getDimensionPixelSize(R.dimen.backlight_indicator_icon_width), resources.getDimensionPixelSize(R.dimen.backlight_indicator_icon_height), resources.getDimensionPixelSize(R.dimen.backlight_indicator_icon_padding));
        this.stepProperties = new StepViewProperties(resources.getDimensionPixelSize(R.dimen.backlight_indicator_step_width), resources.getDimensionPixelSize(R.dimen.backlight_indicator_step_height), resources.getDimensionPixelSize(R.dimen.backlight_indicator_step_horizontal_margin), resources.getDimensionPixelSize(R.dimen.backlight_indicator_step_small_radius), resources.getDimensionPixelSize(R.dimen.backlight_indicator_step_large_radius));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setId(R.id.keyboard_backlight_dialog_container);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        RootProperties rootProperties4 = this.rootProperties;
        if (rootProperties4 == null) {
            rootProperties = null;
        } else {
            rootProperties = rootProperties4;
        }
        int i = rootProperties.horizontalPadding;
        if (rootProperties4 == null) {
            rootProperties2 = null;
        } else {
            rootProperties2 = rootProperties4;
        }
        int i2 = rootProperties2.verticalPadding;
        if (rootProperties4 == null) {
            rootProperties3 = null;
        } else {
            rootProperties3 = rootProperties4;
        }
        int i3 = rootProperties3.horizontalPadding;
        if (rootProperties4 == null) {
            rootProperties4 = null;
        }
        linearLayout.setPadding(i, i2, i3, rootProperties4.verticalPadding);
        float[] fArr = new float[8];
        for (int i4 = 0; i4 < 8; i4++) {
            RootProperties rootProperties5 = this.rootProperties;
            if (rootProperties5 == null) {
                rootProperties5 = null;
            }
            fArr[i4] = rootProperties5.cornerRadius;
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.getPaint().setColor(this.backgroundColor);
        linearLayout.setBackground(shapeDrawable);
        this.rootView = linearLayout;
        setContentView(linearLayout);
        super.onCreate(bundle);
        updateState(this.currentLevel, this.maxLevel, true);
    }

    public final void updateState(int i, int i2, boolean z) {
        StepViewProperties stepViewProperties;
        StepViewProperties stepViewProperties2;
        StepViewProperties stepViewProperties3;
        StepViewProperties stepViewProperties4;
        int i3;
        if (this.maxLevel != i2 || z) {
            this.maxLevel = i2;
            LinearLayout linearLayout = this.rootView;
            if (linearLayout == null) {
                linearLayout = null;
            }
            linearLayout.removeAllViews();
            LinearLayout linearLayout2 = this.rootView;
            if (linearLayout2 == null) {
                linearLayout2 = null;
            }
            StepViewProperties stepViewProperties5 = this.stepProperties;
            if (stepViewProperties5 == null) {
                stepViewProperties5 = null;
            }
            int i4 = stepViewProperties5.height;
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.setIntrinsicHeight(i4);
            shapeDrawable.setIntrinsicWidth(i4);
            ImageView imageView = new ImageView(getContext());
            imageView.setImageResource(R.drawable.ic_keyboard_backlight);
            imageView.setId(BACKLIGHT_ICON_ID);
            imageView.setColorFilter(this.defaultIconColor);
            BacklightIconProperties backlightIconProperties = this.iconProperties;
            if (backlightIconProperties == null) {
                backlightIconProperties = null;
            }
            int i5 = backlightIconProperties.padding;
            imageView.setPadding(i5, i5, i5, i5);
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(i4, i4);
            StepViewProperties stepViewProperties6 = this.stepProperties;
            if (stepViewProperties6 == null) {
                stepViewProperties = null;
            } else {
                stepViewProperties = stepViewProperties6;
            }
            int i6 = stepViewProperties.horizontalMargin;
            if (stepViewProperties6 == null) {
                stepViewProperties6 = null;
            }
            marginLayoutParams.setMargins(i6, 0, stepViewProperties6.horizontalMargin, 0);
            imageView.setLayoutParams(marginLayoutParams);
            imageView.setBackground(shapeDrawable);
            linearLayout2.addView(imageView);
            IntRange intRange = new IntRange(1, this.maxLevel);
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10));
            IntProgressionIterator it = intRange.iterator();
            while (it.hasNext) {
                int nextInt = it.nextInt();
                FrameLayout frameLayout = new FrameLayout(getContext());
                StepViewProperties stepViewProperties7 = this.stepProperties;
                if (stepViewProperties7 == null) {
                    stepViewProperties2 = null;
                } else {
                    stepViewProperties2 = stepViewProperties7;
                }
                int i7 = stepViewProperties2.width;
                if (stepViewProperties7 == null) {
                    stepViewProperties7 = null;
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i7, stepViewProperties7.height);
                StepViewProperties stepViewProperties8 = this.stepProperties;
                if (stepViewProperties8 == null) {
                    stepViewProperties3 = null;
                } else {
                    stepViewProperties3 = stepViewProperties8;
                }
                int i8 = stepViewProperties3.horizontalMargin;
                if (stepViewProperties8 == null) {
                    stepViewProperties8 = null;
                }
                layoutParams.setMargins(i8, 0, stepViewProperties8.horizontalMargin, 0);
                frameLayout.setLayoutParams(layoutParams);
                int i9 = this.maxLevel;
                StepViewProperties stepViewProperties9 = this.stepProperties;
                if (stepViewProperties9 == null) {
                    stepViewProperties4 = null;
                } else {
                    stepViewProperties4 = stepViewProperties9;
                }
                float f = stepViewProperties4.smallRadius;
                if (stepViewProperties9 == null) {
                    stepViewProperties9 = null;
                }
                float f2 = stepViewProperties9.largeRadius;
                float[] fArr = new float[8];
                for (int i10 = 0; i10 < 8; i10++) {
                    fArr[i10] = f;
                }
                if (nextInt == 1) {
                    for (int i11 : LEFT_CORNERS_INDICES) {
                        fArr[i11] = f2;
                    }
                }
                if (nextInt == i9) {
                    for (int i12 : RIGHT_CORNERS_INDICES) {
                        fArr[i12] = f2;
                    }
                }
                ShapeDrawable shapeDrawable2 = new ShapeDrawable(new RoundRectShape(fArr, null, null));
                shapeDrawable2.getPaint().setColor(this.emptyRectangleColor);
                frameLayout.setBackground(shapeDrawable2);
                arrayList.add(frameLayout);
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                FrameLayout frameLayout2 = (FrameLayout) it2.next();
                LinearLayout linearLayout3 = this.rootView;
                if (linearLayout3 == null) {
                    linearLayout3 = null;
                }
                linearLayout3.addView(frameLayout2);
            }
        }
        this.currentLevel = i;
        LinearLayout linearLayout4 = this.rootView;
        if (linearLayout4 == null) {
            linearLayout4 = null;
        }
        ImageView imageView2 = (ImageView) linearLayout4.findViewById(BACKLIGHT_ICON_ID);
        ShapeDrawable shapeDrawable3 = (ShapeDrawable) imageView2.getBackground();
        if (this.currentLevel == 0) {
            imageView2.setColorFilter(this.dimmedIconColor);
            updateColor(shapeDrawable3, this.dimmedIconBackgroundColor);
        } else {
            imageView2.setColorFilter(this.defaultIconColor);
            updateColor(shapeDrawable3, this.defaultIconBackgroundColor);
        }
        LinearLayout linearLayout5 = this.rootView;
        if (linearLayout5 == null) {
            linearLayout5 = null;
        }
        IntProgressionIterator it3 = RangesKt___RangesKt.until(1, linearLayout5.getChildCount()).iterator();
        while (it3.hasNext) {
            int nextInt2 = it3.nextInt();
            LinearLayout linearLayout6 = this.rootView;
            if (linearLayout6 == null) {
                linearLayout6 = null;
            }
            ShapeDrawable shapeDrawable4 = (ShapeDrawable) linearLayout6.getChildAt(nextInt2).getBackground();
            if (nextInt2 <= this.currentLevel) {
                i3 = this.filledRectangleColor;
            } else {
                i3 = this.emptyRectangleColor;
            }
            updateColor(shapeDrawable4, i3);
        }
    }
}
