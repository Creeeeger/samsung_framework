package com.android.wm.shell.pip;

import android.content.Context;
import android.graphics.Rect;
import com.android.wm.shell.common.DisplayLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipDisplayLayoutState {
    public final Context mContext;
    public int mDisplayId;
    public final DisplayLayout mDisplayLayout = new DisplayLayout();

    public PipDisplayLayoutState(Context context) {
        this.mContext = context;
    }

    public final Rect getDisplayBounds() {
        DisplayLayout displayLayout = this.mDisplayLayout;
        return new Rect(0, 0, displayLayout.mWidth, displayLayout.mHeight);
    }

    public final DisplayLayout getDisplayLayout() {
        return new DisplayLayout(this.mDisplayLayout);
    }

    public final void rotateTo(int i) {
        this.mDisplayLayout.rotateTo(i, this.mContext.getResources());
    }
}
