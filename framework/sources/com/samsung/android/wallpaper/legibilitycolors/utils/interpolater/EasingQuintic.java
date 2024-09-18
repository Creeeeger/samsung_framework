package com.samsung.android.wallpaper.legibilitycolors.utils.interpolater;

import com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing;

/* loaded from: classes5.dex */
public class EasingQuintic implements IEasing {
    private static EasingQuintic mInstance = null;

    private EasingQuintic() {
    }

    public static EasingQuintic getInstance() {
        if (mInstance == null) {
            mInstance = new EasingQuintic();
        }
        return mInstance;
    }

    @Override // com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing
    public float easeIn(float t, float b, float c, float d) {
        float t2 = t / d;
        return (t2 * c * t2 * t2 * t2 * t2) + b;
    }

    @Override // com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing
    public float easeInOut(float t, float b, float c, float d) {
        float t2 = t / (d / 2.0f);
        if (t2 >= 1.0f) {
            float t3 = t2 - 2.0f;
            return ((c / 2.0f) * ((t3 * t3 * t3 * t3 * t3) + 2.0f)) + b;
        }
        return ((c / 2.0f) * t2 * t2 * t2 * t2 * t2) + b;
    }

    @Override // com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing
    public float easeOut(float t, float b, float c, float d) {
        float t2 = (t / d) - 1.0f;
        return (((t2 * t2 * t2 * t2 * t2) + 1.0f) * c) + b;
    }

    @Override // com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.IEasing
    public float easeOutIn(float t, float b, float c, float d) {
        if (t < d / 2.0f) {
            float t2 = ((2.0f * t) / d) - 1.0f;
            return ((c / 2.0f) * ((t2 * t2 * t2 * t2 * t2) + 1.0f)) + b;
        }
        float t3 = ((t * 2.0f) - d) / d;
        return ((c / 2.0f) * t3 * t3 * t3 * t3 * t3) + (c / 2.0f) + b;
    }

    /* renamed from: com.samsung.android.wallpaper.legibilitycolors.utils.interpolater.EasingQuintic$1, reason: invalid class name */
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
