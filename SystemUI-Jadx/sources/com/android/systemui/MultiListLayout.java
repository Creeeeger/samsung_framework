package com.android.systemui;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import com.android.systemui.globalactions.GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0;
import com.android.systemui.util.leak.RotationUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class MultiListLayout extends LinearLayout {
    public MultiListAdapter mAdapter;
    public int mRotation;
    public GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0 mRotationListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract class MultiListAdapter extends BaseAdapter {
        public abstract int countListItems();

        public abstract int countSeparatedItems();

        public abstract boolean shouldBeSeparated(int i);
    }

    public MultiListLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRotation = RotationUtils.getRotation(context);
    }

    public abstract ViewGroup getListView();

    public abstract ViewGroup getSeparatedView();

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int rotation = RotationUtils.getRotation(((LinearLayout) this).mContext);
        if (rotation != this.mRotation) {
            GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0 globalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0 = this.mRotationListener;
            if (globalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0 != null) {
                globalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda0.onRotate();
            }
            this.mRotation = rotation;
        }
    }

    public void onUpdateList() {
        boolean z;
        removeAllItems();
        int i = 0;
        if (this.mAdapter.countSeparatedItems() > 0) {
            z = true;
        } else {
            z = false;
        }
        ViewGroup separatedView = getSeparatedView();
        if (separatedView != null) {
            if (!z) {
                i = 8;
            }
            separatedView.setVisibility(i);
        }
    }

    public void removeAllItems() {
        removeAllListViews();
        ViewGroup separatedView = getSeparatedView();
        if (separatedView != null) {
            separatedView.removeAllViews();
        }
    }

    public void removeAllListViews() {
        ViewGroup listView = getListView();
        if (listView != null) {
            listView.removeAllViews();
        }
    }
}
