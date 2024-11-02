package com.android.systemui.navigationbar.remoteview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import com.android.systemui.R;
import com.android.systemui.navigationbar.buttons.KeyButtonRipple;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarRemoteView {
    public final int priority;
    public final RemoteViews remoteViews;
    public final String requestClass;
    public final View view;

    public NavBarRemoteView(Context context, String str, RemoteViews remoteViews, int i) {
        this.requestClass = str;
        this.remoteViews = remoteViews;
        this.priority = i;
        View apply = remoteViews.apply(context, null);
        this.view = apply;
        apply.setBackground(new KeyButtonRipple(context, apply, R.dimen.key_button_ripple_max_width));
        apply.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    }
}
