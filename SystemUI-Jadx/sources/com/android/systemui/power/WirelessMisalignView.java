package com.android.systemui.power;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class WirelessMisalignView extends RelativeLayout implements View.OnClickListener {
    public Button mButton;
    public ImageView mCenterImageView;
    public WirelessMisalignListener mListener;
    public final AnonymousClass1 mOnClickListener;
    public RelativeLayout mTextContainerLayout;

    public WirelessMisalignView(Context context) {
        this(context, null);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Log.d("PowerUI.WirelessMisalignView", "onClick : misalign view gone");
        setWirelessMisalignViewVisibility(8);
        PowerUI powerUI = (PowerUI) this.mListener;
        powerUI.getClass();
        Log.i("PowerUI", "onWirelessMisalignCompleted");
        powerUI.removeMisalignView();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        Log.d("PowerUI.WirelessMisalignView", "onFinishInflate");
        this.mTextContainerLayout = (RelativeLayout) findViewById(R.id.misalign_text_container);
        this.mCenterImageView = (ImageView) findViewById(R.id.center_align_image);
        Button button = (Button) findViewById(R.id.misalign_ok_button);
        this.mButton = button;
        button.setOnClickListener(this.mOnClickListener);
        setOnClickListener(this.mOnClickListener);
    }

    public final void setWirelessMisalignViewVisibility(int i) {
        boolean z;
        if (i == 0) {
            z = true;
        } else {
            z = false;
        }
        Log.d("PowerUI.WirelessMisalignView", "setWirelessMisalignViewVisibility : " + z);
        setVisibility(i);
    }

    public WirelessMisalignView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.power.WirelessMisalignView$1] */
    public WirelessMisalignView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mOnClickListener = new View.OnClickListener() { // from class: com.android.systemui.power.WirelessMisalignView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Log.d("PowerUI.WirelessMisalignView", "button click : misalign view gone");
                WirelessMisalignView.this.setWirelessMisalignViewVisibility(8);
                PowerUI powerUI = (PowerUI) WirelessMisalignView.this.mListener;
                powerUI.getClass();
                Log.i("PowerUI", "onWirelessMisalignCompleted");
                powerUI.removeMisalignView();
            }
        };
    }
}
