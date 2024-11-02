package androidx.appcompat.util;

import android.content.Context;
import android.util.TypedValue;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SeslMisc {
    public static boolean isLightTheme(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.isLightTheme, typedValue, true);
        if (typedValue.data != 0) {
            return true;
        }
        return false;
    }
}
