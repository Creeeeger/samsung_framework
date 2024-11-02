package com.android.systemui.qs.tileimpl;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.android.systemui.qs.SlashDrawable;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SlashImageView extends ImageView {
    public boolean mAnimationEnabled;
    protected SlashDrawable mSlash;

    public SlashImageView(Context context) {
        super(context);
        this.mAnimationEnabled = true;
    }

    @Override // android.widget.ImageView
    public final void setImageDrawable(Drawable drawable) {
        if (drawable == null) {
            this.mSlash = null;
            super.setImageDrawable(null);
            return;
        }
        SlashDrawable slashDrawable = this.mSlash;
        if (slashDrawable == null) {
            setImageLevel(drawable.getLevel());
            super.setImageDrawable(drawable);
            return;
        }
        slashDrawable.mAnimationEnabled = this.mAnimationEnabled;
        slashDrawable.mDrawable = drawable;
        drawable.setCallback(slashDrawable.getCallback());
        slashDrawable.mDrawable.setBounds(slashDrawable.getBounds());
        PorterDuff.Mode mode = slashDrawable.mTintMode;
        if (mode != null) {
            slashDrawable.mDrawable.setTintMode(mode);
        }
        ColorStateList colorStateList = slashDrawable.mTintList;
        if (colorStateList != null) {
            slashDrawable.mDrawable.setTintList(colorStateList);
        }
        slashDrawable.invalidateSelf();
    }

    public final void setState(Drawable drawable) {
        this.mSlash = null;
        setImageDrawable(drawable);
    }
}
