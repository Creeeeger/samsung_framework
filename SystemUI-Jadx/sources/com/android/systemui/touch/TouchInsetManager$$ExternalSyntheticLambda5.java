package com.android.systemui.touch;

import android.graphics.Region;
import android.view.AttachedSurfaceControl;
import java.util.Map;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TouchInsetManager$$ExternalSyntheticLambda5 implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        ((AttachedSurfaceControl) entry.getKey()).setTouchableRegion((Region) entry.getValue());
    }
}
