package com.android.systemui;

import android.content.Context;
import android.widget.Toast;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SysUIToast {
    public static Toast makeText(int i, Context context, int i2) {
        return Toast.makeText(context, context.getString(i), i2);
    }
}
