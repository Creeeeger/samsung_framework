package com.android.systemui.monet.dynamiccolor;

import com.android.systemui.monet.contrast.Contrast;
import com.android.systemui.monet.hct.Hct;
import com.android.systemui.monet.scheme.DynamicScheme;
import java.util.HashMap;
import java.util.function.BiFunction;
import java.util.function.Function;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class DynamicColor {
    public final Function background;
    public final Function chroma;
    public final HashMap hctCache = new HashMap();
    public final Function hue;
    public final Function opacity;
    public final Function tone;
    public final Function toneDeltaConstraint;
    public final Function toneMaxContrast;
    public final Function toneMinContrast;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.monet.dynamiccolor.DynamicColor$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$monet$dynamiccolor$TonePolarity;

        static {
            int[] iArr = new int[TonePolarity.values().length];
            $SwitchMap$com$android$systemui$monet$dynamiccolor$TonePolarity = iArr;
            try {
                iArr[TonePolarity.DARKER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$monet$dynamiccolor$TonePolarity[TonePolarity.LIGHTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$systemui$monet$dynamiccolor$TonePolarity[TonePolarity.NO_PREFERENCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public DynamicColor(Function<DynamicScheme, Double> function, Function<DynamicScheme, Double> function2, Function<DynamicScheme, Double> function3, Function<DynamicScheme, Double> function4, Function<DynamicScheme, DynamicColor> function5, Function<DynamicScheme, Double> function6, Function<DynamicScheme, Double> function7, Function<DynamicScheme, ToneDeltaConstraint> function8) {
        this.hue = function;
        this.chroma = function2;
        this.tone = function3;
        this.opacity = function4;
        this.background = function5;
        this.toneMinContrast = function6;
        this.toneMaxContrast = function7;
        this.toneDeltaConstraint = function8;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0135, code lost:
    
        if (r3 > 100.0d) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
    
        return 100.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0146, code lost:
    
        if (r3 > 100.0d) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static double calculateDynamicTone(com.android.systemui.monet.scheme.DynamicScheme r17, java.util.function.Function r18, com.android.systemui.monet.dynamiccolor.DynamicColor$$ExternalSyntheticLambda0 r19, java.util.function.BiFunction r20, java.util.function.Function r21, java.util.function.Function r22, com.android.systemui.monet.dynamiccolor.DynamicColor$$ExternalSyntheticLambda2 r23, java.util.function.Function r24) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.monet.dynamiccolor.DynamicColor.calculateDynamicTone(com.android.systemui.monet.scheme.DynamicScheme, java.util.function.Function, com.android.systemui.monet.dynamiccolor.DynamicColor$$ExternalSyntheticLambda0, java.util.function.BiFunction, java.util.function.Function, java.util.function.Function, com.android.systemui.monet.dynamiccolor.DynamicColor$$ExternalSyntheticLambda2, java.util.function.Function):double");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
    
        if (r5 <= 100.0d) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static double contrastingTone(double r23, double r25) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.monet.dynamiccolor.DynamicColor.contrastingTone(double, double):double");
    }

    public static double enableLightForeground(double d) {
        boolean z;
        boolean z2 = true;
        if (Math.round(d) < 60) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (Math.round(d) > 49) {
                z2 = false;
            }
            if (!z2) {
                return 49.0d;
            }
            return d;
        }
        return d;
    }

    public static DynamicColor fromPalette(Function function, final Function function2, final Function function3, final Function function4) {
        final int i = 0;
        final int i2 = 1;
        return new DynamicColor(new DynamicColor$$ExternalSyntheticLambda3(function, 0), new DynamicColor$$ExternalSyntheticLambda3(function, 1), function2, null, function3, new Function() { // from class: com.android.systemui.monet.dynamiccolor.DynamicColor$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i) {
                    case 0:
                        Function function5 = function2;
                        Function function6 = function3;
                        DynamicScheme dynamicScheme = (DynamicScheme) obj;
                        return Double.valueOf(DynamicColor.calculateDynamicTone(dynamicScheme, function5, new DynamicColor$$ExternalSyntheticLambda0(dynamicScheme, 1), new DynamicColor$$ExternalSyntheticLambda5(function5, dynamicScheme, function6), function6, function4, null, new DynamicColor$$ExternalSyntheticLambda6()));
                    default:
                        Function function7 = function2;
                        Function function8 = function3;
                        DynamicScheme dynamicScheme2 = (DynamicScheme) obj;
                        return Double.valueOf(DynamicColor.calculateDynamicTone(dynamicScheme2, function7, new DynamicColor$$ExternalSyntheticLambda0(dynamicScheme2, 2), new DynamicColor$$ExternalSyntheticLambda7(function8, dynamicScheme2), function8, function4, null, null));
                }
            }
        }, new Function() { // from class: com.android.systemui.monet.dynamiccolor.DynamicColor$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (i2) {
                    case 0:
                        Function function5 = function2;
                        Function function6 = function3;
                        DynamicScheme dynamicScheme = (DynamicScheme) obj;
                        return Double.valueOf(DynamicColor.calculateDynamicTone(dynamicScheme, function5, new DynamicColor$$ExternalSyntheticLambda0(dynamicScheme, 1), new DynamicColor$$ExternalSyntheticLambda5(function5, dynamicScheme, function6), function6, function4, null, new DynamicColor$$ExternalSyntheticLambda6()));
                    default:
                        Function function7 = function2;
                        Function function8 = function3;
                        DynamicScheme dynamicScheme2 = (DynamicScheme) obj;
                        return Double.valueOf(DynamicColor.calculateDynamicTone(dynamicScheme2, function7, new DynamicColor$$ExternalSyntheticLambda0(dynamicScheme2, 2), new DynamicColor$$ExternalSyntheticLambda7(function8, dynamicScheme2), function8, function4, null, null));
                }
            }
        }, function4);
    }

    public final int getArgb(DynamicScheme dynamicScheme) {
        HashMap hashMap = this.hctCache;
        Hct hct = (Hct) hashMap.get(dynamicScheme);
        if (hct == null) {
            hct = Hct.from(((Double) this.hue.apply(dynamicScheme)).doubleValue(), ((Double) this.chroma.apply(dynamicScheme)).doubleValue(), getTone(dynamicScheme));
            if (hashMap.size() > 4) {
                hashMap.clear();
            }
            hashMap.put(dynamicScheme, hct);
        }
        int i = hct.argb;
        Function function = this.opacity;
        if (function == null) {
            return i;
        }
        int round = (int) Math.round(((Double) function.apply(dynamicScheme)).doubleValue() * 255.0d);
        if (round < 0) {
            round = 0;
        } else if (round > 255) {
            round = 255;
        }
        return (round << 24) | (16777215 & i);
    }

    public final double getTone(DynamicScheme dynamicScheme) {
        boolean z;
        DynamicColor dynamicColor;
        double d;
        double d2;
        boolean z2;
        double d3;
        Object apply;
        Function function = this.tone;
        final double doubleValue = ((Double) function.apply(dynamicScheme)).doubleValue();
        double d4 = dynamicScheme.contrastLevel;
        if (d4 < 0.0d) {
            z = true;
        } else {
            z = false;
        }
        Function function2 = this.toneMinContrast;
        Function function3 = this.toneMaxContrast;
        if (d4 != 0.0d) {
            double doubleValue2 = ((Double) function.apply(dynamicScheme)).doubleValue();
            if (z) {
                apply = function2.apply(dynamicScheme);
            } else {
                apply = function3.apply(dynamicScheme);
            }
            doubleValue = doubleValue2 + (Math.abs(dynamicScheme.contrastLevel) * (((Double) apply).doubleValue() - doubleValue2));
        }
        Function function4 = this.background;
        if (function4 == null) {
            dynamicColor = null;
        } else {
            dynamicColor = (DynamicColor) function4.apply(dynamicScheme);
        }
        if (dynamicColor != null) {
            Function function5 = dynamicColor.background;
            if (function5 != null && function5.apply(dynamicScheme) != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            double ratioOfTones = Contrast.ratioOfTones(((Double) function.apply(dynamicScheme)).doubleValue(), ((Double) dynamicColor.tone.apply(dynamicScheme)).doubleValue());
            if (z) {
                double ratioOfTones2 = Contrast.ratioOfTones(((Double) function2.apply(dynamicScheme)).doubleValue(), ((Double) dynamicColor.toneMinContrast.apply(dynamicScheme)).doubleValue());
                d = ratioOfTones;
                if (z2) {
                    d2 = ratioOfTones2;
                }
            } else {
                double ratioOfTones3 = Contrast.ratioOfTones(((Double) function3.apply(dynamicScheme)).doubleValue(), ((Double) dynamicColor.toneMaxContrast.apply(dynamicScheme)).doubleValue());
                if (z2) {
                    d3 = Math.min(ratioOfTones3, ratioOfTones);
                } else {
                    d3 = 1.0d;
                }
                if (z2) {
                    double max = Math.max(ratioOfTones3, ratioOfTones);
                    d2 = d3;
                    d = max;
                } else {
                    d2 = d3;
                    d = 21.0d;
                }
            }
            return calculateDynamicTone(dynamicScheme, this.tone, new DynamicColor$$ExternalSyntheticLambda0(dynamicScheme, 0), new BiFunction() { // from class: com.android.systemui.monet.dynamiccolor.DynamicColor$$ExternalSyntheticLambda1
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Double.valueOf(doubleValue);
                }
            }, new DynamicColor$$ExternalSyntheticLambda3(dynamicColor, 2), this.toneDeltaConstraint, new DynamicColor$$ExternalSyntheticLambda2(d2, 0), new DynamicColor$$ExternalSyntheticLambda2(d, 1));
        }
        d = 21.0d;
        d2 = 1.0d;
        return calculateDynamicTone(dynamicScheme, this.tone, new DynamicColor$$ExternalSyntheticLambda0(dynamicScheme, 0), new BiFunction() { // from class: com.android.systemui.monet.dynamiccolor.DynamicColor$$ExternalSyntheticLambda1
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Double.valueOf(doubleValue);
            }
        }, new DynamicColor$$ExternalSyntheticLambda3(dynamicColor, 2), this.toneDeltaConstraint, new DynamicColor$$ExternalSyntheticLambda2(d2, 0), new DynamicColor$$ExternalSyntheticLambda2(d, 1));
    }
}
