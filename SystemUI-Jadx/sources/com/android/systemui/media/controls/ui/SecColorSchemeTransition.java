package com.android.systemui.media.controls.ui;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import com.android.settingslib.Utils;
import com.android.systemui.R;
import com.android.systemui.media.SecPlayerViewHolder;
import com.android.systemui.media.audiovisseekbar.AudioVisSeekBarProgressDrawable;
import com.android.systemui.monet.ColorScheme;
import com.android.systemui.util.ColorUtilKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SecColorSchemeTransition {
    public final SecAnimatingColorTransition bgGradientEnd;
    public final SecAnimatingColorTransition bgGradientStart;
    public final SecAnimatingColorTransition[] colorTransitions;
    public final Context context;
    public boolean isGradientEnabled;
    public final SecPlayerViewHolder mediaViewHolder;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.media.controls.ui.SecColorSchemeTransition$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function3 {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(3, SecAnimatingColorTransition.class, "<init>", "<init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            return new SecAnimatingColorTransition(((Number) obj).intValue(), (Function1) obj2, (Function1) obj3);
        }
    }

    public SecColorSchemeTransition(Context context, SecPlayerViewHolder secPlayerViewHolder, Function3 function3) {
        this.context = context;
        this.mediaViewHolder = secPlayerViewHolder;
        this.isGradientEnabled = true;
        int color = context.getColor(R.color.material_dynamic_secondary95);
        SecAnimatingColorTransition secAnimatingColorTransition = (SecAnimatingColorTransition) function3.invoke(Integer.valueOf(color), SecColorSchemeTransition$surfaceColor$1.INSTANCE, new Function1() { // from class: com.android.systemui.media.controls.ui.SecColorSchemeTransition$surfaceColor$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SecColorSchemeTransition.this.mediaViewHolder.getAlbumView().setBackgroundTintList(ColorStateList.valueOf(((Number) obj).intValue()));
                return Unit.INSTANCE;
            }
        });
        SecAnimatingColorTransition secAnimatingColorTransition2 = (SecAnimatingColorTransition) function3.invoke(Integer.valueOf(Utils.getColorAttr(android.R.attr.textColorPrimary, context).getDefaultColor()), SecColorSchemeTransition$accentPrimary$1.INSTANCE, new Function1() { // from class: com.android.systemui.media.controls.ui.SecColorSchemeTransition$accentPrimary$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int intValue = ((Number) obj).intValue();
                ColorStateList.valueOf(intValue);
                if (SecColorSchemeTransition.this.mediaViewHolder.getSeekBar().getProgressDrawable() instanceof AudioVisSeekBarProgressDrawable) {
                    ((AudioVisSeekBarProgressDrawable) SecColorSchemeTransition.this.mediaViewHolder.getSeekBar().getProgressDrawable()).config.primaryColor = intValue;
                    SecPlayerViewHolder secPlayerViewHolder2 = SecColorSchemeTransition.this.mediaViewHolder;
                    secPlayerViewHolder2.progressBarPrimaryColor = intValue;
                    secPlayerViewHolder2.getSeekBar().getThumb().setColorFilter(intValue, PorterDuff.Mode.MULTIPLY);
                }
                return Unit.INSTANCE;
            }
        });
        SecAnimatingColorTransition secAnimatingColorTransition3 = (SecAnimatingColorTransition) function3.invoke(Integer.valueOf(Utils.getColorAttr(android.R.attr.textColorPrimary, context).getDefaultColor()), SecColorSchemeTransition$accentSecondary$1.INSTANCE, new Function1() { // from class: com.android.systemui.media.controls.ui.SecColorSchemeTransition$accentSecondary$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Drawable drawable;
                int intValue = ((Number) obj).intValue();
                ColorStateList valueOf = ColorStateList.valueOf(intValue);
                if (SecColorSchemeTransition.this.mediaViewHolder.getSeekBar().getProgressDrawable() instanceof AudioVisSeekBarProgressDrawable) {
                    ((AudioVisSeekBarProgressDrawable) SecColorSchemeTransition.this.mediaViewHolder.getSeekBar().getProgressDrawable()).config.secondaryColor = intValue;
                    SecColorSchemeTransition.this.mediaViewHolder.progressBarSecondaryColor = intValue;
                } else {
                    SecColorSchemeTransition.this.mediaViewHolder.getSeekBar().setProgressTintList(valueOf);
                }
                LayerDrawable layerDrawable = SecColorSchemeTransition.this.mediaViewHolder.dummyProgressDrawable;
                if (layerDrawable != null && (drawable = layerDrawable.getDrawable(2)) != null) {
                    drawable.setColorFilter(intValue, PorterDuff.Mode.SRC_ATOP);
                }
                return Unit.INSTANCE;
            }
        });
        Integer valueOf = Integer.valueOf(color);
        final SecColorSchemeTransition$bgGradientStart$1 secColorSchemeTransition$bgGradientStart$1 = SecColorSchemeTransition$bgGradientStart$1.INSTANCE;
        final float f = 0.45f;
        SecAnimatingColorTransition secAnimatingColorTransition4 = (SecAnimatingColorTransition) function3.invoke(valueOf, new Function1() { // from class: com.android.systemui.media.controls.ui.SecColorSchemeTransition$albumGradientPicker$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i;
                ColorScheme colorScheme = (ColorScheme) obj;
                if (SecColorSchemeTransition.this.isGradientEnabled) {
                    int intValue = ((Number) secColorSchemeTransition$bgGradientStart$1.invoke(colorScheme)).intValue();
                    float[] fArr = new float[3];
                    Color.colorToHSV(intValue, fArr);
                    if (fArr[2] > 0.2f) {
                        fArr[2] = 0.2f;
                        intValue = Color.HSVToColor(fArr);
                    }
                    i = ColorUtilKt.getColorWithAlpha(f, intValue);
                } else {
                    i = 0;
                }
                return Integer.valueOf(i);
            }
        }, new Function1() { // from class: com.android.systemui.media.controls.ui.SecColorSchemeTransition$bgGradientStart$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((Number) obj).intValue();
                SecColorSchemeTransition.access$updateAlbumGradient(SecColorSchemeTransition.this);
                return Unit.INSTANCE;
            }
        });
        this.bgGradientStart = secAnimatingColorTransition4;
        Integer valueOf2 = Integer.valueOf(color);
        final SecColorSchemeTransition$bgGradientEnd$1 secColorSchemeTransition$bgGradientEnd$1 = SecColorSchemeTransition$bgGradientEnd$1.INSTANCE;
        final float f2 = 1.0f;
        SecAnimatingColorTransition secAnimatingColorTransition5 = (SecAnimatingColorTransition) function3.invoke(valueOf2, new Function1() { // from class: com.android.systemui.media.controls.ui.SecColorSchemeTransition$albumGradientPicker$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i;
                ColorScheme colorScheme = (ColorScheme) obj;
                if (SecColorSchemeTransition.this.isGradientEnabled) {
                    int intValue = ((Number) secColorSchemeTransition$bgGradientEnd$1.invoke(colorScheme)).intValue();
                    float[] fArr = new float[3];
                    Color.colorToHSV(intValue, fArr);
                    if (fArr[2] > 0.2f) {
                        fArr[2] = 0.2f;
                        intValue = Color.HSVToColor(fArr);
                    }
                    i = ColorUtilKt.getColorWithAlpha(f2, intValue);
                } else {
                    i = 0;
                }
                return Integer.valueOf(i);
            }
        }, new Function1() { // from class: com.android.systemui.media.controls.ui.SecColorSchemeTransition$bgGradientEnd$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((Number) obj).intValue();
                SecColorSchemeTransition.access$updateAlbumGradient(SecColorSchemeTransition.this);
                return Unit.INSTANCE;
            }
        });
        this.bgGradientEnd = secAnimatingColorTransition5;
        this.colorTransitions = new SecAnimatingColorTransition[]{secAnimatingColorTransition, secAnimatingColorTransition2, secAnimatingColorTransition3, secAnimatingColorTransition4, secAnimatingColorTransition5};
    }

    public static final void access$updateAlbumGradient(SecColorSchemeTransition secColorSchemeTransition) {
        Drawable drawable;
        int i;
        Drawable foreground = secColorSchemeTransition.mediaViewHolder.getAlbumView().getForeground();
        if (foreground != null) {
            drawable = foreground.mutate();
        } else {
            drawable = null;
        }
        if (drawable instanceof GradientDrawable) {
            GradientDrawable gradientDrawable = (GradientDrawable) drawable;
            int[] iArr = new int[2];
            int i2 = 0;
            SecAnimatingColorTransition secAnimatingColorTransition = secColorSchemeTransition.bgGradientStart;
            if (secAnimatingColorTransition != null) {
                i = secAnimatingColorTransition.currentColor;
            } else {
                i = 0;
            }
            iArr[0] = i;
            SecAnimatingColorTransition secAnimatingColorTransition2 = secColorSchemeTransition.bgGradientEnd;
            if (secAnimatingColorTransition2 != null) {
                i2 = secAnimatingColorTransition2.currentColor;
            }
            iArr[1] = i2;
            gradientDrawable.setColors(iArr);
        }
    }

    public SecColorSchemeTransition(Context context, SecPlayerViewHolder secPlayerViewHolder) {
        this(context, secPlayerViewHolder, AnonymousClass1.INSTANCE);
    }
}
