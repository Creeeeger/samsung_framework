package com.android.wm.shell.windowdecor;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.widget.LinearLayout;
import android.widget.TextView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class WindowMenuDexItemView extends LinearLayout {
    public final TextView mTextView;

    public WindowMenuDexItemView(Context context, AttributeSet attributeSet) {
        super(new ContextThemeWrapper(context, R.style.Theme.DeviceDefault.DayNight), attributeSet);
        Resources resources = ((LinearLayout) this).mContext.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(com.android.systemui.R.dimen.sec_dex_decor_more_menu_button_padding_horizontal);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(com.android.systemui.R.dimen.sec_dex_decor_more_menu_button_padding_vertical);
        TextView textView = new TextView(((LinearLayout) this).mContext);
        this.mTextView = textView;
        textView.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2);
        textView.setGravity(16);
        addView(textView, -1, -2);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.selectableItemBackground, typedValue, true);
        setBackgroundResource(typedValue.resourceId);
        setTooltipNull(true);
        setClickable(true);
    }

    @Override // android.view.View
    public final void setContentDescription(CharSequence charSequence) {
        super.setContentDescription(charSequence);
    }

    public final void setTextView(int i, boolean z) {
        CharSequence contentDescription;
        int i2;
        Resources resources = ((LinearLayout) this).mContext.getResources();
        TextView textView = this.mTextView;
        if (i != -1) {
            contentDescription = resources.getText(i);
        } else {
            contentDescription = getContentDescription();
        }
        textView.setText(contentDescription);
        if (z) {
            i2 = com.android.systemui.R.color.sec_decor_new_dex_more_icon_color_dark;
        } else {
            i2 = com.android.systemui.R.color.sec_decor_new_dex_more_icon_color_light;
        }
        this.mTextView.setTextColor(resources.getColorStateList(i2, null));
        this.mTextView.setTextSize(0, resources.getDimensionPixelSize(com.android.systemui.R.dimen.sec_dex_decor_menu_text_size));
    }

    public final void setVerticalPadding(boolean z) {
        int paddingTop;
        int paddingBottom;
        int dimensionPixelSize = ((LinearLayout) this).mContext.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sec_dex_decor_more_menu_window_padding);
        if (z) {
            paddingTop = this.mTextView.getPaddingTop() + dimensionPixelSize;
        } else {
            paddingTop = this.mTextView.getPaddingTop();
        }
        if (z) {
            paddingBottom = this.mTextView.getPaddingBottom();
        } else {
            paddingBottom = this.mTextView.getPaddingBottom() + dimensionPixelSize;
        }
        TextView textView = this.mTextView;
        textView.setPadding(textView.getPaddingLeft(), paddingTop, this.mTextView.getPaddingRight(), paddingBottom);
    }
}
