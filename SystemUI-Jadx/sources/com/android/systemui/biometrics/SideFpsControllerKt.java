package com.android.systemui.biometrics;

import android.R;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import com.airbnb.lottie.LottieAnimationView;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.value.SimpleLottieValueCallback;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class SideFpsControllerKt {
    public static final void addOverlayDynamicColor$update(int i, final Context context, LottieAnimationView lottieAnimationView) {
        boolean z;
        boolean z2 = true;
        if (i == 4) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            final int colorAttrDefaultColor = com.android.settingslib.Utils.getColorAttrDefaultColor(R.^attr-private.pointerIconTopLeftDiagonalDoubleArrow, context, 0);
            final int colorAttrDefaultColor2 = com.android.settingslib.Utils.getColorAttrDefaultColor(R.^attr-private.pointerIconTopRightDiagonalDoubleArrow, context, 0);
            final int colorAttrDefaultColor3 = com.android.settingslib.Utils.getColorAttrDefaultColor(R.^attr-private.pointerIconAlias, context, 0);
            KeyPath keyPath = new KeyPath(".blue600", "**");
            ColorFilter colorFilter = LottieProperty.COLOR_FILTER;
            lottieAnimationView.addValueCallback(keyPath, colorFilter, new SimpleLottieValueCallback() { // from class: com.android.systemui.biometrics.SideFpsControllerKt$addOverlayDynamicColor$update$1
                @Override // com.airbnb.lottie.value.SimpleLottieValueCallback
                public final Object getValue() {
                    return new PorterDuffColorFilter(colorAttrDefaultColor, PorterDuff.Mode.SRC_ATOP);
                }
            });
            lottieAnimationView.addValueCallback(new KeyPath(".blue400", "**"), colorFilter, new SimpleLottieValueCallback() { // from class: com.android.systemui.biometrics.SideFpsControllerKt$addOverlayDynamicColor$update$2
                @Override // com.airbnb.lottie.value.SimpleLottieValueCallback
                public final Object getValue() {
                    return new PorterDuffColorFilter(colorAttrDefaultColor2, PorterDuff.Mode.SRC_ATOP);
                }
            });
            lottieAnimationView.addValueCallback(new KeyPath(".black", "**"), colorFilter, new SimpleLottieValueCallback() { // from class: com.android.systemui.biometrics.SideFpsControllerKt$addOverlayDynamicColor$update$3
                @Override // com.airbnb.lottie.value.SimpleLottieValueCallback
                public final Object getValue() {
                    return new PorterDuffColorFilter(colorAttrDefaultColor3, PorterDuff.Mode.SRC_ATOP);
                }
            });
            return;
        }
        if ((context.getResources().getConfiguration().uiMode & 48) != 32) {
            z2 = false;
        }
        if (!z2) {
            lottieAnimationView.addValueCallback(new KeyPath(".black", "**"), LottieProperty.COLOR_FILTER, new SimpleLottieValueCallback() { // from class: com.android.systemui.biometrics.SideFpsControllerKt$addOverlayDynamicColor$update$4
                @Override // com.airbnb.lottie.value.SimpleLottieValueCallback
                public final Object getValue() {
                    return new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP);
                }
            });
        }
        Iterator it = CollectionsKt__CollectionsKt.listOf(".blue600", ".blue400").iterator();
        while (it.hasNext()) {
            lottieAnimationView.addValueCallback(new KeyPath((String) it.next(), "**"), LottieProperty.COLOR_FILTER, new SimpleLottieValueCallback() { // from class: com.android.systemui.biometrics.SideFpsControllerKt$addOverlayDynamicColor$update$5
                @Override // com.airbnb.lottie.value.SimpleLottieValueCallback
                public final Object getValue() {
                    return new PorterDuffColorFilter(context.getColor(com.android.systemui.R.color.settingslib_color_blue400), PorterDuff.Mode.SRC_ATOP);
                }
            });
        }
    }
}
