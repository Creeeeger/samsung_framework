package com.android.systemui.statusbar.notification.collection.render;

import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface NodeController {
    void addChildAt(NodeController nodeController, int i);

    View getChildAt(int i);

    int getChildCount();

    String getNodeLabel();

    View getView();

    void moveChildTo(NodeController nodeController, int i);

    boolean offerToKeepInParentForAnimation();

    void onViewAdded();

    void onViewMoved();

    void onViewRemoved();

    void removeChild(NodeController nodeController, boolean z);

    boolean removeFromParentIfKeptForAnimation();

    void resetKeepInParentForAnimation();
}
