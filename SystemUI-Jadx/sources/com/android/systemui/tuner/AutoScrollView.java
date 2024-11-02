package com.android.systemui.tuner;

import android.content.Context;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.widget.ScrollView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class AutoScrollView extends ScrollView {
    public AutoScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        if (dragEvent.getAction() == 2) {
            int y = (int) dragEvent.getY();
            int height = getHeight();
            int i = (int) (height * 0.1f);
            if (y < i) {
                scrollBy(0, y - i);
            } else if (y > height - i) {
                scrollBy(0, (y - height) + i);
            }
        }
        return false;
    }
}
