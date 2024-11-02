package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecUnlockedScreenOffCapturedView extends ImageView {
    public int visibility;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public SecUnlockedScreenOffCapturedView(Context context) {
        super(context);
        this.visibility = -1;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void setVisibility(int i) {
        if (this.visibility == i) {
            return;
        }
        ListPopupWindow$$ExternalSyntheticOutline0.m("setVisibility=", i, "SecUnlockedScreenOffCapturedView");
        this.visibility = i;
        super.setVisibility(i);
    }

    public SecUnlockedScreenOffCapturedView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.visibility = -1;
    }

    public SecUnlockedScreenOffCapturedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.visibility = -1;
    }
}
