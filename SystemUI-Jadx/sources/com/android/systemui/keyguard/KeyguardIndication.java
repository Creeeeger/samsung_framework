package com.android.systemui.keyguard;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardIndication {
    public final Drawable mBackground;
    public final Drawable mIcon;
    public final CharSequence mMessage;
    public final Long mMinVisibilityMillis;
    public final View.OnClickListener mOnClickListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Builder {
        public CharSequence mMessage;
        public Long mMinVisibilityMillis;
        public ColorStateList mTextColor;

        public final KeyguardIndication build() {
            if (!TextUtils.isEmpty(this.mMessage)) {
                ColorStateList colorStateList = this.mTextColor;
                if (colorStateList != null) {
                    return new KeyguardIndication(this.mMessage, colorStateList, this.mMinVisibilityMillis);
                }
                throw new IllegalStateException("text color must be set");
            }
            throw new IllegalStateException("message or icon must be set");
        }
    }

    public /* synthetic */ KeyguardIndication(CharSequence charSequence, ColorStateList colorStateList, Long l) {
        this(charSequence, colorStateList, null, null, null, l);
    }

    public final String toString() {
        String str;
        CharSequence charSequence = this.mMessage;
        if (!TextUtils.isEmpty(charSequence)) {
            str = "KeyguardIndication{mMessage=" + ((Object) charSequence);
        } else {
            str = "KeyguardIndication{";
        }
        Drawable drawable = this.mIcon;
        if (drawable != null) {
            str = str + " mIcon=" + drawable;
        }
        View.OnClickListener onClickListener = this.mOnClickListener;
        if (onClickListener != null) {
            str = str + " mOnClickListener=" + onClickListener;
        }
        Drawable drawable2 = this.mBackground;
        if (drawable2 != null) {
            str = str + " mBackground=" + drawable2;
        }
        Long l = this.mMinVisibilityMillis;
        if (l != null) {
            str = str + " mMinVisibilityMillis=" + l;
        }
        return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str, "}");
    }

    private KeyguardIndication(CharSequence charSequence, ColorStateList colorStateList, Drawable drawable, View.OnClickListener onClickListener, Drawable drawable2, Long l) {
        this.mMessage = charSequence;
        this.mIcon = drawable;
        this.mOnClickListener = onClickListener;
        this.mBackground = drawable2;
        this.mMinVisibilityMillis = l;
    }
}
