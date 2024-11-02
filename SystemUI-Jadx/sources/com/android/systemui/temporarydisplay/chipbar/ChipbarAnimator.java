package com.android.systemui.temporarydisplay.chipbar;

import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.util.ConvenienceExtensionsKt;
import java.util.Iterator;
import kotlin.sequences.SequenceBuilderIterator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ChipbarAnimator {
    public static void forceDisplayView(View view) {
        view.setAlpha(1.0f);
        if (view instanceof ViewGroup) {
            Iterator it = ConvenienceExtensionsKt.getChildren((ViewGroup) view).iterator();
            while (true) {
                SequenceBuilderIterator sequenceBuilderIterator = (SequenceBuilderIterator) it;
                if (sequenceBuilderIterator.hasNext()) {
                    forceDisplayView((View) sequenceBuilderIterator.next());
                } else {
                    return;
                }
            }
        }
    }
}
