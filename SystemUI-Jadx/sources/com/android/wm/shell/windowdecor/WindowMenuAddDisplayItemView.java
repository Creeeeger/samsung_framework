package com.android.wm.shell.windowdecor;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.widget.LinearLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class WindowMenuAddDisplayItemView extends LinearLayout {
    public WindowMenuAddDisplayItemView(Context context, AttributeSet attributeSet) {
        super(new ContextThemeWrapper(context, R.style.Theme.DeviceDefault.DayNight), attributeSet);
        setTooltipNull(true);
        setClickable(true);
    }
}
