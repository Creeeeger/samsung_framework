package com.samsung.android.knox.lockscreen;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.LinearLayout;
import com.samsung.android.knox.lockscreen.LSOItemContainer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LSOContainerView extends LinearLayout {
    public final LSOItemContainer lsoContainer;
    public final Context mContext;

    public LSOContainerView(Context context, LSOItemContainer lSOItemContainer) {
        super(context);
        Drawable drawable;
        this.mContext = context;
        this.lsoContainer = lSOItemContainer;
        if (lSOItemContainer.isFieldUpdated(32)) {
            setGravity(lSOItemContainer.gravity);
        } else {
            setGravity(1);
        }
        if (lSOItemContainer.orientation == LSOItemContainer.ORIENTATION.VERTICAL) {
            setOrientation(1);
        }
        if (lSOItemContainer.isFieldUpdated(256) && (drawable = LSOUtils.getDrawable(lSOItemContainer.bgImagePath)) != null) {
            setBackgroundDrawable(drawable);
        }
        setClickable(false);
        setPadding(0, 0, 0, 0);
        addViews();
    }

    public final void addViews() {
        View view;
        int numItems = this.lsoContainer.getNumItems();
        for (int i = 0; i < numItems; i++) {
            LSOItemData item = this.lsoContainer.getItem(i);
            if (item != null && (view = LSOItemView.getView(this.mContext, item)) != null) {
                LinearLayout.LayoutParams layoutParams = getLayoutParams(item);
                if (layoutParams != null) {
                    addView(view, layoutParams);
                } else {
                    addView(view);
                }
            }
        }
    }

    public final LinearLayout.LayoutParams getLayoutParams(LSOItemData lSOItemData) {
        int i;
        LinearLayout.LayoutParams layoutParams;
        if (!lSOItemData.isFieldUpdated(2) && !lSOItemData.isFieldUpdated(4) && !lSOItemData.isFieldUpdated(8) && !lSOItemData.isFieldUpdated(32)) {
            return null;
        }
        float weight = lSOItemData.getWeight();
        int i2 = -2;
        if (lSOItemData.isFieldUpdated(2)) {
            i = lSOItemData.getWidth();
        } else {
            i = -2;
        }
        if (lSOItemData.isFieldUpdated(4)) {
            i2 = lSOItemData.getHeight();
        }
        if (weight != 0.0f) {
            layoutParams = new LinearLayout.LayoutParams(i, i2, weight);
        } else {
            layoutParams = new LinearLayout.LayoutParams(i, i2);
        }
        if (lSOItemData.isFieldUpdated(32)) {
            layoutParams.gravity = lSOItemData.getGravity();
            return layoutParams;
        }
        return layoutParams;
    }
}
