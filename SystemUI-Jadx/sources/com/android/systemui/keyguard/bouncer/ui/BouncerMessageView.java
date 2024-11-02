package com.android.systemui.keyguard.bouncer.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.android.keyguard.BouncerKeyguardMessageArea;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerMessageView extends LinearLayout {
    public BouncerKeyguardMessageArea primaryMessageView;
    public BouncerKeyguardMessageArea secondaryMessageView;

    public BouncerMessageView(Context context) {
        super(context);
        LinearLayout.inflate(getContext(), R.layout.bouncer_message_view, this);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.primaryMessageView = (BouncerKeyguardMessageArea) findViewById(R.id.bouncer_primary_message_area);
        this.secondaryMessageView = (BouncerKeyguardMessageArea) findViewById(R.id.bouncer_secondary_message_area);
        BouncerKeyguardMessageArea bouncerKeyguardMessageArea = this.primaryMessageView;
        if (bouncerKeyguardMessageArea != null) {
            bouncerKeyguardMessageArea.mIsDisabled = true;
            bouncerKeyguardMessageArea.update();
        }
        BouncerKeyguardMessageArea bouncerKeyguardMessageArea2 = this.secondaryMessageView;
        if (bouncerKeyguardMessageArea2 != null) {
            bouncerKeyguardMessageArea2.mIsDisabled = true;
            bouncerKeyguardMessageArea2.update();
        }
    }

    public BouncerMessageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LinearLayout.inflate(getContext(), R.layout.bouncer_message_view, this);
    }
}
