package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.systemui.R;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import com.samsung.android.nexus.video.VideoPlayer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SecShelfNotificationIconContainer extends NotificationIconContainer {
    public int mCount;
    public TextView mMoreView;
    public Drawable mMoreViewBackground;
    public int mMoreViewRange;
    public int mPaddingBetweenIcons;
    public int mPaddingForMoreView;

    public SecShelfNotificationIconContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0080, code lost:
    
        if (((r6 - r13) + 1) > 4) goto L40;
     */
    @Override // com.android.systemui.statusbar.phone.NotificationIconContainer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void calculateIconXTranslations() {
        /*
            Method dump skipped, instructions count: 306
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.SecShelfNotificationIconContainer.calculateIconXTranslations():void");
    }

    @Override // com.android.systemui.statusbar.phone.NotificationIconContainer
    public final void initResources() {
        super.initResources();
        updateResource();
    }

    @Override // com.android.systemui.statusbar.phone.NotificationIconContainer
    public final void onClockColorChanged(int i) {
        onClockColorChanged(i, false);
    }

    public final void onDensityOrFontScaleChanged() {
        updateResource();
        this.mMoreViewRange = -1;
        updateMoreView(this.mCount);
    }

    @Override // com.android.systemui.statusbar.phone.NotificationIconContainer, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float height = getHeight() / 2.0f;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            int i7 = this.mIconSize;
            if (childAt instanceof TextView) {
                i5 = childAt.getMeasuredWidth();
                i7 = childAt.getMeasuredHeight();
            } else {
                i5 = i7;
            }
            int i8 = (int) (height - (i7 / 2.0f));
            childAt.layout(0, i8, i5, i7 + i8);
        }
    }

    @Override // com.android.systemui.statusbar.phone.NotificationIconContainer, android.view.View
    public final void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mIconSize, VideoPlayer.MEDIA_ERROR_SYSTEM);
        for (int i3 = 0; i3 < childCount; i3++) {
            measureChild(getChildAt(i3), makeMeasureSpec, i2);
        }
        setMeasuredDimension(ViewGroup.resolveSize(getResources().getDimensionPixelSize(R.dimen.sec_notification_shelf_width), i), View.MeasureSpec.getSize(i2));
    }

    public final void updateMoreView(int i) {
        int i2;
        int dimensionPixelSize;
        if (i > 0) {
            if (i >= 100) {
                i2 = 3;
            } else if (i >= 10) {
                i2 = 2;
            } else {
                i2 = 1;
            }
            if (i2 == 3) {
                dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.more_view_width_in_shelf_3rd);
            } else if (i2 == 2) {
                dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.more_view_width_in_shelf_2nd);
            } else {
                dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.more_view_width_in_shelf_1st);
            }
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(dimensionPixelSize, getResources().getDimensionPixelSize(R.dimen.more_view_height_in_shelf));
            if (this.mMoreView.getParent() == null) {
                addView(this.mMoreView, layoutParams);
            } else if (this.mMoreViewRange != i2) {
                this.mMoreView.setLayoutParams(layoutParams);
                this.mMoreViewRange = i2;
            }
            this.mMoreView.setText("+" + i);
            this.mMoreView.setVisibility(0);
        } else {
            this.mMoreView.setVisibility(8);
            removeView(this.mMoreView);
        }
        this.mCount = i;
    }

    public final void updateResource() {
        this.mPaddingBetweenIcons = getResources().getDimensionPixelSize(R.dimen.padding_between_icons_in_shelf);
        this.mPaddingForMoreView = getResources().getDimensionPixelSize(R.dimen.padding_for_more_view_in_shelf);
        setIconSize(getResources().getDimensionPixelSize(R.dimen.icon_size_in_shelf));
        if (this.mMoreView == null) {
            this.mMoreView = new TextView(getContext());
        }
        this.mMoreView.setTextAppearance(2132018282);
        this.mMoreView.setIncludeFontPadding(false);
        this.mMoreView.setGravity(17);
        this.mMoreViewBackground = getResources().getDrawable(R.drawable.shelf_more_view_background);
        onClockColorChanged(this.mShelfIconColor, true);
    }

    public final void onClockColorChanged(int i, boolean z) {
        if (z || !(this.mMoreView == null || i == 0 || this.mShelfIconColor == i)) {
            Log.d("SecShelfNotificationIconContainer", " onClockColorChanged - current : " + Integer.toHexString(this.mShelfIconColor) + " new : " + Integer.toHexString(i) + " F : " + z);
            this.mMoreViewBackground.setColorFilter(i, PorterDuff.Mode.SRC);
            this.mMoreView.setBackground(this.mMoreViewBackground);
            this.mMoreView.setTextColor(((Color.red(i) + Color.green(i)) + Color.blue(i)) / 3 >= 128 ? EmergencyPhoneWidget.BG_COLOR : -1);
            this.mShelfIconColor = i;
        }
    }
}
