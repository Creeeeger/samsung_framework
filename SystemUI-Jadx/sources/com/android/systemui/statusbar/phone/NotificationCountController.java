package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.vectordrawable.graphics.drawable.ArgbEvaluator;
import com.android.systemui.R;
import com.android.systemui.plugins.DarkIconDispatcher;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationCountController implements DarkIconDispatcher.DarkReceiver {
    public final Context mContext;
    public TextView mCountIcon;
    public int mCountIconSize;
    public int mCountTextSize;
    public float mDarkIntensity;
    public int mDarkModeIconColorSingleTone;
    public final NotificationIconAreaController mIconController;
    public int mLightModeIconColorSingleTone;
    public final ArrayList mTintAreas = new ArrayList();
    public List mEntries = List.of();

    public NotificationCountController(Context context, NotificationIconAreaController notificationIconAreaController) {
        this.mContext = context;
        this.mIconController = notificationIconAreaController;
    }

    public final void applyNotificationCountTint() {
        boolean z;
        boolean z2;
        int i;
        int i2;
        boolean z3 = false;
        if (!DarkIconDispatcher.isInAreas(this.mTintAreas, this.mCountIcon) && this.mCountIcon.getWidth() != 0) {
            z = false;
        } else {
            z = true;
        }
        int intValue = ((Integer) ArgbEvaluator.sInstance.evaluate(this.mDarkIntensity, Integer.valueOf(this.mLightModeIconColorSingleTone), Integer.valueOf(this.mDarkModeIconColorSingleTone))).intValue();
        if (this.mDarkModeIconColorSingleTone - intValue > intValue - this.mLightModeIconColorSingleTone) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z) {
            z3 = z2;
        } else if (!z2) {
            z3 = true;
        }
        TextView textView = this.mCountIcon;
        if (z3) {
            i = R.color.notification_count_text_color_dark;
        } else {
            i = R.color.notification_count_text_color_light;
        }
        Context context = this.mContext;
        textView.setTextColor(context.getColor(i));
        TextView textView2 = this.mCountIcon;
        if (z3) {
            i2 = R.drawable.notification_count_background_dark;
        } else {
            i2 = R.drawable.notification_count_background_light;
        }
        textView2.setBackground(context.getDrawable(i2));
    }

    @Override // com.android.systemui.plugins.DarkIconDispatcher.DarkReceiver
    public final void onDarkChanged(ArrayList arrayList, float f, int i) {
        ArrayList arrayList2 = this.mTintAreas;
        arrayList2.clear();
        if (arrayList != null) {
            arrayList2.addAll(arrayList);
        }
        this.mDarkIntensity = f;
        if (this.mCountIcon != null) {
            applyNotificationCountTint();
        }
    }

    public final void updateNotificationCountLayoutParams() {
        int i;
        this.mCountIcon.setTextSize(0, this.mCountTextSize);
        if (this.mCountIcon.getText().length() >= 3) {
            int i2 = this.mCountIconSize;
            i = (i2 / 2) + i2;
        } else {
            i = this.mCountIconSize;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, this.mCountIconSize);
        layoutParams.gravity = 16;
        layoutParams.leftMargin = this.mContext.getResources().getDimensionPixelSize(R.dimen.notification_count_icon_start_margin);
        this.mCountIcon.setLayoutParams(layoutParams);
    }
}
