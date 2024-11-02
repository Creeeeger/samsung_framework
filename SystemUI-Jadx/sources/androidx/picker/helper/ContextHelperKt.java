package androidx.picker.helper;

import android.content.Context;
import android.util.TypedValue;
import androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;
import androidx.core.content.ContextCompat;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class ContextHelperKt {
    public static final int getPrimaryColor(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorPrimary, typedValue, true);
        int i = typedValue.resourceId;
        if (i != 0) {
            Object obj = ContextCompat.sLock;
            return context.getColor(i);
        }
        return typedValue.data;
    }

    public static final boolean isRTL(Context context) {
        if (MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0.m(context) == 1) {
            return true;
        }
        return false;
    }
}
