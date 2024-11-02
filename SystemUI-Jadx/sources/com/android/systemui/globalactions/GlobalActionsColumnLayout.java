package com.android.systemui.globalactions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class GlobalActionsColumnLayout extends GlobalActionsLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean mLastSnap;

    public GlobalActionsColumnLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void centerAlongEdge() {
        int currentRotation = getCurrentRotation();
        if (currentRotation != 1) {
            if (currentRotation != 3) {
                setPadding(0, 0, 0, 0);
                setGravity(21);
                return;
            } else {
                setPadding(0, 0, 0, 0);
                setGravity(81);
                return;
            }
        }
        setPadding(0, 0, 0, 0);
        setGravity(49);
    }

    public float getAnimationDistance() {
        return getGridItemSize() / 2.0f;
    }

    public float getGridItemSize() {
        return getContext().getResources().getDimension(R.dimen.global_actions_grid_item_height);
    }

    public int getPowerButtonOffsetDistance() {
        return Math.round(getContext().getResources().getDimension(R.dimen.global_actions_top_padding));
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        post(new Runnable() { // from class: com.android.systemui.globalactions.GlobalActionsColumnLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                GlobalActionsColumnLayout globalActionsColumnLayout = GlobalActionsColumnLayout.this;
                int i5 = GlobalActionsColumnLayout.$r8$clinit;
                globalActionsColumnLayout.updateSnap();
            }
        });
    }

    @Override // com.android.systemui.globalactions.GlobalActionsLayout, android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // com.android.systemui.globalactions.GlobalActionsLayout, com.android.systemui.MultiListLayout
    public final void onUpdateList() {
        super.onUpdateList();
        if (shouldReverseListItems()) {
            getListView().bringToFront();
        } else {
            getSeparatedView().bringToFront();
        }
    }

    @Override // com.android.systemui.globalactions.GlobalActionsLayout
    public boolean shouldReverseListItems() {
        int currentRotation = getCurrentRotation();
        if (currentRotation == 0) {
            return false;
        }
        if (getCurrentLayoutDirection() == 1) {
            if (currentRotation != 1) {
                return false;
            }
            return true;
        }
        if (currentRotation != 3) {
            return false;
        }
        return true;
    }

    public boolean shouldSnapToPowerButton() {
        int measuredWidth;
        int measuredWidth2;
        int powerButtonOffsetDistance = getPowerButtonOffsetDistance();
        View childAt = getChildAt(0);
        if (getCurrentRotation() == 0) {
            measuredWidth = childAt.getMeasuredHeight();
            measuredWidth2 = getMeasuredHeight();
        } else {
            measuredWidth = childAt.getMeasuredWidth();
            measuredWidth2 = getMeasuredWidth();
        }
        if (measuredWidth + powerButtonOffsetDistance >= measuredWidth2) {
            return false;
        }
        return true;
    }

    public void snapToPowerButton() {
        int powerButtonOffsetDistance = getPowerButtonOffsetDistance();
        int currentRotation = getCurrentRotation();
        if (currentRotation != 1) {
            if (currentRotation != 3) {
                setPadding(0, powerButtonOffsetDistance, 0, 0);
                setGravity(53);
                return;
            } else {
                setPadding(0, 0, powerButtonOffsetDistance, 0);
                setGravity(85);
                return;
            }
        }
        setPadding(powerButtonOffsetDistance, 0, 0, 0);
        setGravity(51);
    }

    public void updateSnap() {
        boolean shouldSnapToPowerButton = shouldSnapToPowerButton();
        if (shouldSnapToPowerButton != this.mLastSnap) {
            if (shouldSnapToPowerButton) {
                snapToPowerButton();
            } else {
                centerAlongEdge();
            }
        }
        this.mLastSnap = shouldSnapToPowerButton;
    }
}
