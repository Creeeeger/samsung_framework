package com.android.systemui.accessibility;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class MirrorWindowControl {
    public static final boolean DBG = Log.isLoggable("MirrorWindowControl", 3) | false;
    public final Context mContext;
    public View mControlsView;
    public final WindowManager mWindowManager;
    public final Rect mDraggableBound = new Rect();
    public final Point mTmpPoint = new Point();
    public final Point mControlPosition = new Point();

    public MirrorWindowControl(Context context) {
        this.mContext = context;
        this.mWindowManager = (WindowManager) context.getSystemService("window");
    }

    public abstract String getWindowTitle();

    public abstract View onCreateView();
}
