package com.android.systemui.common.ui.binder;

import android.widget.TextView;
import com.android.systemui.common.shared.model.Text;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TextViewBinder {
    public static final TextViewBinder INSTANCE = new TextViewBinder();

    private TextViewBinder() {
    }

    public static void bind(TextView textView, Text text) {
        String str;
        if (text instanceof Text.Resource) {
            str = textView.getContext().getString(((Text.Resource) text).res);
        } else if (text instanceof Text.Loaded) {
            str = ((Text.Loaded) text).text;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        textView.setText(str);
    }
}
