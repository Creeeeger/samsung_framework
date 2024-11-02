package com.android.systemui.qp.flashlight;

import android.content.Context;
import android.text.method.ScrollingMovementMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.systemui.R;
import com.android.systemui.statusbar.policy.FlashlightControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SubroomFlashLightTurnOnView extends LinearLayout {
    public TurnOnClickListener mListener;
    public TextView mTurnOnHelpText;
    public Button mTurnOnView;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface TurnOnClickListener {
    }

    public SubroomFlashLightTurnOnView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mTurnOnView = (Button) findViewById(R.id.turn_on_view);
        TextView textView = (TextView) findViewById(R.id.turn_on_help_text);
        this.mTurnOnHelpText = textView;
        textView.setMovementMethod(new ScrollingMovementMethod());
        this.mTurnOnView.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.qp.flashlight.SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubroomFlashLightSettingsActivity subroomFlashLightSettingsActivity = (SubroomFlashLightSettingsActivity) SubroomFlashLightTurnOnView.this.mListener;
                if (!((FlashlightControllerImpl) subroomFlashLightSettingsActivity.mFlashlightController).isAvailable()) {
                    ((FlashlightControllerImpl) subroomFlashLightSettingsActivity.mFlashlightController).showUnavailableMessage();
                } else {
                    subroomFlashLightSettingsActivity.showTurnOffView();
                    ((FlashlightControllerImpl) subroomFlashLightSettingsActivity.mFlashlightController).setFlashlight(true);
                }
            }
        });
        this.mTurnOnHelpText.setAccessibilityDelegate(new View.AccessibilityDelegate(this) { // from class: com.android.systemui.qp.flashlight.SubroomFlashLightTurnOnView.1
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                Log.d("SubroomFlahLightTurnOnView", "setAccessibilityDelegate");
                accessibilityNodeInfo.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                accessibilityNodeInfo.removeAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_LONG_CLICK);
                accessibilityNodeInfo.setClickable(false);
                accessibilityNodeInfo.setLongClickable(false);
            }
        });
    }
}
