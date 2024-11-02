package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import com.airbnb.lottie.utils.Utils;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CompoundTrimPathContent {
    public final List contents = new ArrayList();

    public final void apply(Path path) {
        ArrayList arrayList = (ArrayList) this.contents;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size >= 0) {
                TrimPathContent trimPathContent = (TrimPathContent) arrayList.get(size);
                Utils.AnonymousClass1 anonymousClass1 = Utils.threadLocalPathMeasure;
                if (trimPathContent != null && !trimPathContent.hidden) {
                    Utils.applyTrimPathIfNeeded(path, trimPathContent.startAnimation.getFloatValue() / 100.0f, trimPathContent.endAnimation.getFloatValue() / 100.0f, trimPathContent.offsetAnimation.getFloatValue() / 360.0f);
                }
            } else {
                return;
            }
        }
    }
}
