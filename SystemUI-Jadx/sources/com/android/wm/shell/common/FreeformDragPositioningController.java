package com.android.wm.shell.common;

import android.content.Context;
import android.graphics.PointF;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FreeformDragPositioningController {
    public static volatile FreeformDragPositioningController sFreeformDragPositioningController;
    public final FreeformDragListener mFreeformDragListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FreeformDragListener {
        public final DismissButtonManager mDismissButtonManager;
        public final PointF mTmpPoint = new PointF();

        public FreeformDragListener(Context context) {
            DismissButtonManager dismissButtonManager = new DismissButtonManager(context, 3);
            this.mDismissButtonManager = dismissButtonManager;
            dismissButtonManager.mTitle = "dismiss-button-freeform";
            dismissButtonManager.createDismissButtonView();
            dismissButtonManager.createOrUpdateWrapper();
        }
    }

    public FreeformDragPositioningController(Context context) {
        this.mFreeformDragListener = new FreeformDragListener(context);
    }

    public static FreeformDragPositioningController getInstance(Context context) {
        if (sFreeformDragPositioningController == null) {
            synchronized (FreeformDragPositioningController.class) {
                if (sFreeformDragPositioningController == null) {
                    sFreeformDragPositioningController = new FreeformDragPositioningController(context);
                }
            }
        }
        return sFreeformDragPositioningController;
    }
}
