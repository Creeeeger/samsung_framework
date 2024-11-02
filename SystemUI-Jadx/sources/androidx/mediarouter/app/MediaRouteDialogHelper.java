package androidx.mediarouter.app;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MediaRouteDialogHelper {
    private MediaRouteDialogHelper() {
    }

    public static int getDialogWidth(Context context) {
        boolean z;
        int i;
        float fraction;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            z = true;
        } else {
            z = false;
        }
        TypedValue typedValue = new TypedValue();
        Resources resources = context.getResources();
        if (z) {
            i = R.dimen.mr_dialog_fixed_width_minor;
        } else {
            i = R.dimen.mr_dialog_fixed_width_major;
        }
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (i2 == 5) {
            fraction = typedValue.getDimension(displayMetrics);
        } else if (i2 == 6) {
            int i3 = displayMetrics.widthPixels;
            fraction = typedValue.getFraction(i3, i3);
        } else {
            return -2;
        }
        return (int) fraction;
    }
}
