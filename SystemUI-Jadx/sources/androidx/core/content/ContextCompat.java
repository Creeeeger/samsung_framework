package androidx.core.content;

import android.content.Context;
import android.content.res.ColorStateList;
import androidx.core.content.res.ResourcesCompat;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ContextCompat {
    public static final Object sLock = new Object();

    public static ColorStateList getColorStateList(int i, Context context) {
        return ResourcesCompat.getColorStateList(context.getResources(), i, context.getTheme());
    }
}
