package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.android.systemui.R;
import com.google.android.material.navigation.NavigationBarItemView;
import com.google.android.material.navigation.NavigationBarMenuView;
import com.samsung.android.nexus.video.VideoPlayer;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BottomNavigationMenuView extends NavigationBarMenuView {
    public int activeItemMaxWidth;
    public final int activeItemMinWidth;
    public final int inactiveItemMaxWidth;
    public final int inactiveItemMinWidth;
    public boolean itemHorizontalTranslationEnabled;
    public boolean mHasIcon;
    public float mWidthPercent;
    public int[] tempChildWidths;

    public BottomNavigationMenuView(Context context) {
        super(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
        Resources resources = getResources();
        TypedValue typedValue = new TypedValue();
        resources.getValue(R.dimen.sesl_bottom_navigation_width_proportion, typedValue, true);
        this.mWidthPercent = typedValue.getFloat();
        this.inactiveItemMaxWidth = resources.getDimensionPixelSize(R.dimen.sesl_bottom_navigation_item_max_width);
        this.inactiveItemMinWidth = resources.getDimensionPixelSize(R.dimen.sesl_bottom_navigation_item_min_width);
        this.activeItemMaxWidth = (int) (getResources().getDisplayMetrics().widthPixels * this.mWidthPercent);
        this.activeItemMinWidth = resources.getDimensionPixelSize(R.dimen.sesl_bottom_navigation_active_item_min_width);
        resources.getDimensionPixelSize(R.dimen.sesl_bottom_navigation_icon_mode_height);
        this.tempChildWidths = new int[5];
        this.mUseItemPool = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int childCount = getChildCount();
        int i6 = i3 - i;
        int i7 = i4 - i2;
        if (this.mHasIcon) {
            if (this.mViewVisibleItemCount == 5) {
                i5 = getResources().getDimensionPixelSize(R.dimen.sesl_bottom_navigation_icon_mode_min_padding_horizontal);
            } else {
                i5 = getResources().getDimensionPixelSize(R.dimen.sesl_bottom_navigation_icon_mode_padding_horizontal);
            }
        } else {
            i5 = 0;
        }
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                if (ViewCompat.Api17Impl.getLayoutDirection(this) == 1) {
                    int i10 = i6 - i8;
                    childAt.layout((i10 - childAt.getMeasuredWidth()) + i5, 0, i10 - i5, i7);
                } else {
                    childAt.layout(i8 + i5, 0, (childAt.getMeasuredWidth() + i8) - i5, i7);
                }
                i8 += childAt.getMeasuredWidth();
            }
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    updateBadge(navigationBarItemView);
                } else {
                    return;
                }
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        int i4;
        int i5;
        if (View.MeasureSpec.getSize(i) / getResources().getDisplayMetrics().density < 590.0f) {
            this.mWidthPercent = 1.0f;
        } else {
            this.mWidthPercent = 0.75f;
        }
        this.activeItemMaxWidth = (int) (getResources().getDisplayMetrics().widthPixels * this.mWidthPercent);
        int size = (int) (View.MeasureSpec.getSize(i) * this.mWidthPercent);
        int i6 = 0;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            if (getChildAt(i7).getVisibility() == 0) {
                i6++;
            }
        }
        int childCount = getChildCount();
        this.tempChildWidths = new int[childCount];
        int i8 = 1;
        if (this.mViewType != 3) {
            z = true;
        } else {
            z = false;
        }
        this.mHasIcon = z;
        Resources resources = getResources();
        if (this.mHasIcon) {
            i3 = R.dimen.sesl_bottom_navigation_icon_mode_height;
        } else {
            i3 = R.dimen.sesl_bottom_navigation_text_mode_height;
        }
        resources.getDimensionPixelSize(i3);
        int size2 = View.MeasureSpec.getSize(i2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size2, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
        if (this.labelVisibilityMode == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 && this.itemHorizontalTranslationEnabled) {
            View childAt = getChildAt(this.selectedItemPosition);
            int i9 = this.activeItemMinWidth;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.activeItemMaxWidth, VideoPlayer.MEDIA_ERROR_SYSTEM), makeMeasureSpec);
                i9 = Math.max(i9, childAt.getMeasuredWidth());
            }
            if (childAt.getVisibility() != 8) {
                i4 = 1;
            } else {
                i4 = 0;
            }
            int i10 = childCount - i4;
            int min = Math.min(size - (this.inactiveItemMinWidth * i10), Math.min(i9, this.activeItemMaxWidth));
            int i11 = size - min;
            if (i10 != 0) {
                i8 = i10;
            }
            int min2 = Math.min(i11 / i8, this.inactiveItemMaxWidth);
            int i12 = i11 - (i10 * min2);
            for (int i13 = 0; i13 < childCount; i13++) {
                if (getChildAt(i13).getVisibility() != 8) {
                    int[] iArr = this.tempChildWidths;
                    if (i13 == this.selectedItemPosition) {
                        i5 = min;
                    } else {
                        i5 = min2;
                    }
                    iArr[i13] = i5;
                    if (i12 > 0) {
                        iArr[i13] = i5 + 1;
                        i12--;
                    }
                } else {
                    this.tempChildWidths[i13] = 0;
                }
            }
        } else {
            if (i6 != 0) {
                i8 = i6;
            }
            int i14 = size / i8;
            if (i6 != 2) {
                i14 = Math.min(i14, this.activeItemMaxWidth);
            }
            int i15 = size - (i6 * i14);
            for (int i16 = 0; i16 < childCount; i16++) {
                if (getChildAt(i16).getVisibility() != 8) {
                    int[] iArr2 = this.tempChildWidths;
                    iArr2[i16] = i14;
                    if (i15 > 0) {
                        iArr2[i16] = i14 + 1;
                        i15--;
                    }
                } else {
                    this.tempChildWidths[i16] = 0;
                }
            }
        }
        int i17 = 0;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt2 = getChildAt(i18);
            if (childAt2 != null && childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.tempChildWidths[i18], VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i17 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i17, View.MeasureSpec.makeMeasureSpec(i17, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), 0), View.resolveSizeAndState(size2, i2, 0));
    }
}
