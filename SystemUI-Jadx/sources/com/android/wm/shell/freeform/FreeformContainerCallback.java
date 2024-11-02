package com.android.wm.shell.freeform;

import android.graphics.Rect;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface FreeformContainerCallback {
    void onItemAdded(FreeformContainerItem freeformContainerItem);

    void onItemRemoved(FreeformContainerItem freeformContainerItem);

    void onRotationChanged(int i, int i2, Rect rect);

    void onViewDestroyed();
}
