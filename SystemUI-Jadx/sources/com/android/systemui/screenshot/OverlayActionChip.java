package com.android.systemui.screenshot;

import android.content.Context;
import android.graphics.drawable.Icon;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.systemui.R;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class OverlayActionChip extends FrameLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ImageView mIconView;
    public boolean mIsPending;
    public TextView mTextView;

    public OverlayActionChip(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        boolean z;
        ImageView imageView = (ImageView) findViewById(R.id.overlay_action_chip_icon);
        Objects.requireNonNull(imageView);
        this.mIconView = imageView;
        TextView textView = (TextView) findViewById(R.id.overlay_action_chip_text);
        Objects.requireNonNull(textView);
        this.mTextView = textView;
        if (textView.getText().length() > 0) {
            z = true;
        } else {
            z = false;
        }
        updatePadding(z);
    }

    public final void setIcon(Icon icon, boolean z) {
        this.mIconView.setImageIcon(icon);
        if (!z) {
            this.mIconView.setImageTintList(null);
        }
    }

    @Override // android.view.View
    public final void setPressed(boolean z) {
        boolean z2;
        if (!this.mIsPending && !z) {
            z2 = false;
        } else {
            z2 = true;
        }
        super.setPressed(z2);
    }

    public final void setText(CharSequence charSequence) {
        boolean z;
        this.mTextView.setText(charSequence);
        if (charSequence.length() > 0) {
            z = true;
        } else {
            z = false;
        }
        updatePadding(z);
    }

    public final void updatePadding(boolean z) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mIconView.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mTextView.getLayoutParams();
        if (z) {
            int dimensionPixelSize = ((FrameLayout) this).mContext.getResources().getDimensionPixelSize(R.dimen.overlay_action_chip_padding_start);
            int dimensionPixelSize2 = ((FrameLayout) this).mContext.getResources().getDimensionPixelSize(R.dimen.overlay_action_chip_spacing);
            int dimensionPixelSize3 = ((FrameLayout) this).mContext.getResources().getDimensionPixelSize(R.dimen.overlay_action_chip_padding_end);
            layoutParams.setMarginStart(dimensionPixelSize);
            layoutParams.setMarginEnd(dimensionPixelSize2);
            layoutParams2.setMarginEnd(dimensionPixelSize3);
        } else {
            int dimensionPixelSize4 = ((FrameLayout) this).mContext.getResources().getDimensionPixelSize(R.dimen.overlay_action_chip_icon_only_padding_horizontal);
            layoutParams.setMarginStart(dimensionPixelSize4);
            layoutParams.setMarginEnd(dimensionPixelSize4);
        }
        this.mIconView.setLayoutParams(layoutParams);
        this.mTextView.setLayoutParams(layoutParams2);
    }

    public OverlayActionChip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OverlayActionChip(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public OverlayActionChip(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mIsPending = false;
    }
}
