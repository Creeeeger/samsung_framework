package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.appcompat.app.ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.android.internal.logging.UiEventLogger;
import com.android.systemui.R;
import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.Utils;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class QSPanel extends LinearLayout implements TunerService.Tunable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final boolean mCanCollapse;
    public final ArrayMap mChildrenLayoutTop;
    public View mFooter;
    public boolean mListening;
    public final List mOnConfigurationChangedListeners;
    public final boolean mShouldMoveMediaOnExpansion;
    public QSTileLayout mTileLayout;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface QSTileLayout {
        void addTile(QSPanelControllerBase$TileRecord qSPanelControllerBase$TileRecord);

        int getHeight();

        int getTilesHeight();

        void removeTile(QSPanelControllerBase$TileRecord qSPanelControllerBase$TileRecord);

        void setListening(boolean z, UiEventLogger uiEventLogger);

        boolean updateResources();
    }

    public QSPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOnConfigurationChangedListeners = new ArrayList();
        this.mChildrenLayoutTop = new ArrayMap();
        new Rect();
        this.mShouldMoveMediaOnExpansion = true;
        this.mCanCollapse = true;
        Utils.useQsMediaPlayer(context);
        getResources().getDimensionPixelSize(R.dimen.quick_settings_bottom_margin_media);
        getResources().getDimensionPixelSize(R.dimen.qs_tile_margin_vertical);
        setOrientation(1);
        getChildCount();
    }

    public static void switchToParent(View view, ViewGroup viewGroup, int i, String str) {
        if (viewGroup == null) {
            Log.w(str, "Trying to move view to null parent", new IllegalStateException());
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        if (viewGroup2 != viewGroup) {
            if (viewGroup2 != null) {
                viewGroup2.removeView(view);
            }
            viewGroup.addView(view, i);
        } else {
            if (viewGroup.indexOfChild(view) == i) {
                return;
            }
            viewGroup.removeView(view);
            viewGroup.addView(view, i);
        }
    }

    public void drawTile(QSPanelControllerBase$TileRecord qSPanelControllerBase$TileRecord, QSTile.State state) {
        qSPanelControllerBase$TileRecord.tileView.onStateChanged(state);
    }

    @Override // android.view.View
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ((ArrayList) this.mOnConfigurationChangedListeners).forEach(new Consumer(configuration) { // from class: com.android.systemui.qs.QSPanel$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(obj);
                int i = QSPanel.$r8$clinit;
                throw null;
            }
        });
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mFooter = findViewById(R.id.qs_footer);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.mCanCollapse) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_COLLAPSE);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            this.mChildrenLayoutTop.put(childAt, Integer.valueOf(childAt.getTop()));
        }
        int tilesHeight = this.mTileLayout.getTilesHeight() - this.mTileLayout.getHeight();
        boolean z2 = false;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            View childAt2 = getChildAt(i7);
            if (z2) {
                if (childAt2 == null && !this.mShouldMoveMediaOnExpansion) {
                    i5 = 0;
                } else {
                    i5 = tilesHeight;
                }
                Integer num = (Integer) this.mChildrenLayoutTop.get(childAt2);
                if (num != null) {
                    int intValue = num.intValue() + i5;
                    childAt2.setLeftTopRightBottom(childAt2.getLeft(), intValue, childAt2.getRight(), childAt2.getHeight() + intValue);
                }
            }
            if (childAt2 == this.mTileLayout) {
                z2 = true;
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        Object obj = this.mTileLayout;
        if ((obj instanceof PagedTileLayout) && ((View) obj).getParent() == this) {
            View.MeasureSpec.getSize(i2);
            i2 = View.MeasureSpec.makeMeasureSpec(10000, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
            ((PagedTileLayout) this.mTileLayout).getClass();
        }
        super.onMeasure(i, i2);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                int measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                paddingTop = marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + measuredHeight;
            }
        }
        setMeasuredDimension(getMeasuredWidth(), paddingTop);
    }

    @Override // com.android.systemui.tuner.TunerService.Tunable
    public void onTuningChanged(String str, String str2) {
        "qs_show_brightness".equals(str);
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        if (i != 262144) {
        }
        return super.performAccessibilityAction(i, bundle);
    }
}
