package com.android.wm.shell.freeform;

import android.content.Context;
import android.graphics.Insets;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.android.wm.shell.common.DismissButtonManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FreeformContainerDismissButtonView extends FrameLayout {
    public final DismissButtonManager mDismissButtonManager;
    public boolean mDismissButtonShowing;
    public View mDismissingIconView;

    public FreeformContainerDismissButtonView(Context context) {
        super(context);
        this.mDismissButtonShowing = false;
        DismissButtonManager dismissButtonManager = new DismissButtonManager(context, 3);
        this.mDismissButtonManager = dismissButtonManager;
        dismissButtonManager.createDismissButtonView();
        setVisibility(8);
    }

    public final void show(Rect rect) {
        Log.i("FreeformContainer", "[FreeformContainerDismissButtonView] show()");
        setVisibility(0);
        if (!this.mDismissButtonShowing) {
            this.mDismissButtonShowing = true;
        }
        this.mDismissButtonManager.mView.updateView(rect);
        Rect rect2 = new Rect();
        FreeformContainerManager.getInstance(((FrameLayout) this).mContext).getClass();
        FreeformContainerManager.getStableInsets(rect2);
        DismissButtonManager dismissButtonManager = this.mDismissButtonManager;
        Insets.of(rect2);
        dismissButtonManager.show();
    }
}
