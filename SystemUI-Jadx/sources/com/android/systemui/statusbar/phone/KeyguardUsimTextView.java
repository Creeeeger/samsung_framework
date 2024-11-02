package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.os.SystemProperties;
import android.telephony.TelephonyManager;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.util.DeviceState;
import com.android.systemui.widget.SystemUITextView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class KeyguardUsimTextView extends SystemUITextView {
    public int mCurrentSimState;
    public final KeyguardUpdateMonitorCallback mInfoCallback;
    public TelephonyManager mTelephonyManager;
    public KeyguardUpdateMonitor mUpdateMonitor;

    public KeyguardUsimTextView(Context context) {
        this(context, null);
    }

    @Override // com.android.systemui.widget.SystemUITextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        KeyguardUpdateMonitor keyguardUpdateMonitor;
        super.onAttachedToWindow();
        if (LsRune.LOCKUI_BOTTOM_USIM_TEXT && (keyguardUpdateMonitor = this.mUpdateMonitor) != null) {
            keyguardUpdateMonitor.registerCallback(this.mInfoCallback);
        }
    }

    @Override // com.android.systemui.widget.SystemUITextView, android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateText(this.mCurrentSimState);
    }

    @Override // com.android.systemui.widget.SystemUITextView, android.view.View
    public final void onDetachedFromWindow() {
        KeyguardUpdateMonitor keyguardUpdateMonitor;
        super.onDetachedFromWindow();
        if (LsRune.LOCKUI_BOTTOM_USIM_TEXT && (keyguardUpdateMonitor = this.mUpdateMonitor) != null) {
            keyguardUpdateMonitor.removeCallback(this.mInfoCallback);
        }
    }

    @Override // com.android.systemui.widget.SystemUITextView, android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mTelephonyManager = (TelephonyManager) ((TextView) this).mContext.getSystemService("phone");
        this.mUpdateMonitor = (KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class);
        if (((TextView) this).mContext.getResources().getBoolean(17891911)) {
            updateText(this.mCurrentSimState);
        } else {
            setVisibility(8);
        }
    }

    @Override // android.view.View
    public final void setAlpha(float f) {
        super.setAlpha(Math.min(f, 1.0f));
    }

    public final void updateText(int i) {
        int i2;
        Log.d("KeyguardUsimTextView", "updateText(simState): " + i);
        setVisibility(0);
        if (this.mUpdateMonitor.isIccBlockedPermanently()) {
            setText(getContext().getString(R.string.keyguard_usim_not_used, 10));
            return;
        }
        CharSequence charSequence = "";
        if (DeviceState.isNoSimState(getContext())) {
            if (!this.mUpdateMonitor.mDeviceProvisioned) {
                StringBuilder sb = new StringBuilder();
                CharSequence text = getContext().getText(R.string.keyguard_missing_sim_message_short);
                if (text == null) {
                    text = "";
                }
                sb.append(text.toString());
                CharSequence text2 = getContext().getText(R.string.keyguard_missing_sim_message);
                if (text2 != null) {
                    charSequence = text2;
                }
                sb.append(charSequence.toString());
                String sb2 = sb.toString();
                setText(sb2.subSequence(0, sb2.length()));
                return;
            }
            if (LsRune.SECURITY_LGU_USIM_TEXT) {
                i2 = R.string.keyguard_nosim_text_lgt_only;
            } else {
                i2 = R.string.keyguard_nosim_text_kor_only;
            }
            setText(i2);
            return;
        }
        if (this.mTelephonyManager.isVoiceCapable() && this.mUpdateMonitor.isAllSlotEmergencyOnly()) {
            setText(R.string.keyguard_nosim_text_kor_emergency_only);
            return;
        }
        if (i == 5 && LsRune.SECURITY_SKT_USIM_TEXT && !SystemProperties.get("ril.simtype").equals("") && 19 == Integer.valueOf(SystemProperties.get("ril.simtype")).intValue()) {
            setText(R.string.keyguard_skt_usim_unregistered);
        } else {
            setVisibility(8);
        }
    }

    public KeyguardUsimTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentSimState = 1;
        this.mInfoCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.phone.KeyguardUsimTextView.1
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onSimStateChanged(int i, int i2, int i3) {
                if (LsRune.LOCKUI_BOTTOM_USIM_TEXT) {
                    KeyguardUsimTextView keyguardUsimTextView = KeyguardUsimTextView.this;
                    keyguardUsimTextView.mCurrentSimState = i3;
                    keyguardUsimTextView.updateText(i3);
                }
            }
        };
    }
}
