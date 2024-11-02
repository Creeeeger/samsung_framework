package com.samsung.android.wallpaper.legibilitycolors.utils.interpolater;

import com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing;

/* loaded from: classes5.dex */
public class EasingSineFunc implements IEasing {
    private static EasingSineFunc mInstance = null;

    private EasingSineFunc() {
    }

    public static EasingSineFunc getInstance() {
        if (mInstance == null) {
            mInstance = new EasingSineFunc();
        }
        return mInstance;
    }

    @Override // com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing
    public float easeIn(float t, float b, float c, float d) {
        return ((-c) * ((float) Math.cos((t / d) * 1.5707963267948966d))) + c + b;
    }

    @Override // com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing
    public float easeInOut(float t, float b, float c, float d) {
        return (((-c) / 2.0f) * (((float) Math.cos((t * 3.141592653589793d) / d)) - 1.0f)) + b;
    }

    @Override // com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing
    public float easeOut(float t, float b, float c, float d) {
        return (((float) Math.sin((t / d) * 1.5707963267948966d)) * c) + b;
    }

    @Override // com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing
    public float easeOutIn(float t, float b, float c, float d) {
        return t < d / 2.0f ? ((c / 2.0f) * ((float) Math.sin(((2.0f * t) / d) * 1.5707963267948966d))) + b : ((-(c / 2.0f)) * ((float) Math.cos((((t * 2.0f) - d) / d) * 1.5707963267948966d))) + (c / 2.0f) + (c / 2.0f) + b;
    }

    /* renamed from: com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.EasingSineFunc$1 */
    /* loaded from: classes5.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing;

        static {
            int[] iArr = new int[IEasing.EEasing.values().length];
            $SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing = iArr;
            try {
                iArr[IEasing.EEasing.In.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing[IEasing.EEasing.Out.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing[IEasing.EEasing.InOut.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing[IEasing.EEasing.OutIn.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    @Override // com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing
    public float ease(float t, float b, float c, float d, IEasing.EEasing easing) {
        switch (AnonymousClass1.$SwitchMap$com$samsung$android$wallpaper$legibilitycolors$utils$interpolater$IEasing$EEasing[easing.ordinal()]) {
            case 1:
                return easeIn(t, b, c, d);
            case 2:
                return easeOut(t, b, c, d);
            case 3:
                return easeInOut(t, b, c, d);
            case 4:
                return easeOutIn(t, b, c, d);
            default:
                return ((c * t) / d) + b;
        }
    }
}
