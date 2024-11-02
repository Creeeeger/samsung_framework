package com.samsung.systemui.splugins.navigationbar;

import android.graphics.drawable.Drawable;
import android.view.View;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface ButtonDispatcherProxyBase {
    void addButton(int i);

    View getButtonView(int i);

    void setButtonImage(int i, Drawable drawable, Drawable drawable2);

    void setButtonOnClickListener(int i, View.OnClickListener onClickListener);

    void setButtonOnLongClickListener(int i, View.OnLongClickListener onLongClickListener);

    void setButtonVisibility(int i, int i2);
}
