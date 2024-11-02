package androidx.core.view;

import android.content.Context;
import android.view.PointerIcon;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class PointerIconCompat {
    public final PointerIcon mPointerIcon;

    private PointerIconCompat(PointerIcon pointerIcon) {
        this.mPointerIcon = pointerIcon;
    }

    public static PointerIconCompat getSystemIcon(Context context) {
        return new PointerIconCompat(PointerIcon.getSystemIcon(context, 1002));
    }
}
