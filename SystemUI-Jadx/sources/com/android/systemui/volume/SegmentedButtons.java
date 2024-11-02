package com.android.systemui.volume;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class SegmentedButtons extends LinearLayout {
    public Object mSelectedValue;
    public static final Typeface REGULAR = Typeface.create("sans-serif", 0);
    public static final Typeface MEDIUM = Typeface.create("sans-serif-medium", 0);

    public SegmentedButtons(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new View.OnClickListener() { // from class: com.android.systemui.volume.SegmentedButtons.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Typeface typeface;
                SegmentedButtons segmentedButtons = SegmentedButtons.this;
                Object tag = view.getTag();
                if (!Objects.equals(tag, segmentedButtons.mSelectedValue)) {
                    segmentedButtons.mSelectedValue = tag;
                    for (int i = 0; i < segmentedButtons.getChildCount(); i++) {
                        TextView textView = (TextView) segmentedButtons.getChildAt(i);
                        boolean equals = Objects.equals(segmentedButtons.mSelectedValue, textView.getTag());
                        textView.setSelected(equals);
                        if (equals) {
                            typeface = SegmentedButtons.MEDIUM;
                        } else {
                            typeface = SegmentedButtons.REGULAR;
                        }
                        textView.setTypeface(typeface);
                    }
                }
            }
        };
        LayoutInflater.from(context);
        setOrientation(0);
        new ConfigurableTexts(context);
    }
}
