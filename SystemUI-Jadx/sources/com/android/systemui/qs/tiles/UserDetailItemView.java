package com.android.systemui.qs.tiles;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.internal.util.ArrayUtils;
import com.android.systemui.FontSizeUtils;
import com.android.systemui.LsRune;
import com.android.systemui.R$styleable;
import com.android.systemui.statusbar.phone.UserAvatarView;
import com.android.systemui.util.DeviceState;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class UserDetailItemView extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public int mActivatedStyle;
    public UserAvatarView mAvatar;
    public TextView mName;
    public int mRegularStyle;
    public View mRestrictedPadlock;

    public UserDetailItemView(Context context) {
        this(context, null);
    }

    public final void bind(String str, Drawable drawable, int i) {
        this.mName.setText(str);
        this.mAvatar.setDrawableWithBadge(i, drawable);
        if (LsRune.LOCKUI_MULTI_USER) {
            ViewGroup.LayoutParams layoutParams = this.mAvatar.getLayoutParams();
            layoutParams.width = drawable.getIntrinsicWidth();
            layoutParams.height = drawable.getIntrinsicHeight();
            this.mAvatar.setLayoutParams(layoutParams);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        int i;
        super.drawableStateChanged();
        boolean contains = ArrayUtils.contains(getDrawableState(), R.attr.state_activated);
        TextView textView = this.mName;
        if (contains) {
            i = this.mActivatedStyle;
        } else {
            i = this.mRegularStyle;
        }
        textView.setTextAppearance(i);
    }

    public int getFontSizeDimen() {
        if (DeviceState.supportsMultipleUsers()) {
            return com.android.systemui.R.dimen.sec_qs_mum_name_font_size;
        }
        return com.android.systemui.R.dimen.qs_tile_text_size;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        FontSizeUtils.updateFontSize(getFontSizeDimen(), this.mName);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        int i;
        this.mAvatar = (UserAvatarView) findViewById(com.android.systemui.R.id.user_picture);
        TextView textView = (TextView) findViewById(com.android.systemui.R.id.user_name);
        this.mName = textView;
        if (this.mRegularStyle == 0) {
            this.mRegularStyle = textView.getExplicitStyle();
        }
        if (this.mActivatedStyle == 0) {
            this.mActivatedStyle = this.mName.getExplicitStyle();
        }
        boolean contains = ArrayUtils.contains(getDrawableState(), R.attr.state_activated);
        TextView textView2 = this.mName;
        if (contains) {
            i = this.mActivatedStyle;
        } else {
            i = this.mRegularStyle;
        }
        textView2.setTextAppearance(i);
        this.mRestrictedPadlock = findViewById(com.android.systemui.R.id.restricted_padlock);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.mName.setEnabled(z);
        this.mAvatar.setEnabled(z);
    }

    public UserDetailItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserDetailItemView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public UserDetailItemView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.UserDetailItemView, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            if (index == 1) {
                this.mRegularStyle = obtainStyledAttributes.getResourceId(index, 0);
            } else if (index == 0) {
                this.mActivatedStyle = obtainStyledAttributes.getResourceId(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }
}
