package com.android.keyguard;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.android.systemui.R;
import com.android.systemui.widget.SystemUIButton;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SecEmergencyCarrierArea extends EmergencyCarrierArea {
    public LinearLayout mEmergencyButtonArea;
    public SystemUIButton mForgotPatternButton;

    public SecEmergencyCarrierArea(Context context) {
        super(context);
    }

    @Override // com.android.keyguard.EmergencyCarrierArea, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mForgotPatternButton = (SystemUIButton) findViewById(R.id.forgot_password_button);
        this.mEmergencyButton = (EmergencyButton) findViewById(R.id.emergency_call_button);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.keyguard_emergency_button_area);
        this.mEmergencyButtonArea = linearLayout;
        if (linearLayout != null && this.mEmergencyButton != null && this.mForgotPatternButton != null) {
            View view = null;
            int i = 0;
            for (int i2 = 0; i2 < this.mEmergencyButtonArea.getChildCount(); i2++) {
                if (this.mEmergencyButtonArea.getChildAt(i2) != null && this.mEmergencyButtonArea.getChildAt(i2).getVisibility() == 0) {
                    i++;
                    view = this.mEmergencyButtonArea.getChildAt(i2);
                }
            }
            if (i > 0 && this.mEmergencyButton.getVisibility() == 4) {
                this.mEmergencyButton.setVisibility(8);
            }
            if (i != 1) {
                if (i == 2) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mEmergencyButton.getLayoutParams();
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mForgotPatternButton.getLayoutParams();
                    layoutParams.width = 0;
                    layoutParams2.width = 0;
                    layoutParams.weight = 1.0f;
                    layoutParams2.weight = 1.0f;
                    this.mEmergencyButton.setLayoutParams(layoutParams);
                    this.mForgotPatternButton.setLayoutParams(layoutParams2);
                    this.mForgotPatternButton.setPadding(0, 0, 0, 0);
                    return;
                }
                return;
            }
            if (view != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams3.width = -2;
                layoutParams3.weight = 0.0f;
                view.setLayoutParams(layoutParams3);
            }
        }
    }

    public SecEmergencyCarrierArea(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
