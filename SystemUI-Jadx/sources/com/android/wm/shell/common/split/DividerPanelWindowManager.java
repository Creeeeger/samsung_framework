package com.android.wm.shell.common.split;

import android.content.Context;
import android.view.View;
import android.view.WindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DividerPanelWindowManager {
    public DividerView mDividerView;
    public WindowManager.LayoutParams mLp;
    public View mView;
    public final WindowManager mWm;

    public DividerPanelWindowManager(Context context) {
        this.mWm = (WindowManager) context.getSystemService("window");
    }
}
