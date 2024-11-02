package com.android.wm.shell.bubbles;

import android.graphics.Bitmap;
import android.graphics.Path;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface BubbleViewProvider {
    Bitmap getAppBadge();

    Bitmap getBubbleIcon();

    int getDotColor();

    Path getDotPath();

    BubbleExpandedView getExpandedView();

    BadgedImageView getIconView$1();

    String getKey();

    int getTaskId();

    void setTaskViewVisibility();

    boolean showDot();
}
