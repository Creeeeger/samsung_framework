package com.android.systemui.qp;

import android.content.Context;
import android.provider.Settings;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubroomFlashLightSettingsView extends LinearLayout {
    public LinearLayout mFlashLightBackground;
    public ImageView mFlashLightButton;

    public SubroomFlashLightSettingsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        String string;
        super.onAttachedToWindow();
        boolean z = false;
        if (Settings.Secure.getInt(((LinearLayout) this).mContext.getContentResolver(), "flashlight_enabled", 0) == 1) {
            z = true;
        }
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            this.mFlashLightBackground.setBackground(((LinearLayout) this).mContext.getResources().getDrawable(R.drawable.subroom_active_background));
            string = ((LinearLayout) this).mContext.getString(R.string.accessibility_desc_on);
        } else {
            this.mFlashLightBackground.setBackground(((LinearLayout) this).mContext.getResources().getDrawable(R.drawable.subroom_inactive_background));
            string = ((LinearLayout) this).mContext.getString(R.string.accessibility_desc_off);
        }
        stringBuffer.append(((LinearLayout) this).mContext.getString(R.string.quick_settings_flashlight_label));
        stringBuffer.append(",");
        stringBuffer.append(string);
        this.mFlashLightButton.setContentDescription(stringBuffer);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mFlashLightBackground = (LinearLayout) findViewById(R.id.flashlight_background);
        this.mFlashLightButton = (ImageView) findViewById(R.id.flashlight_image_view);
    }
}
