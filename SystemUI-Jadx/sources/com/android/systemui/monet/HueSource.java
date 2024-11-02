package com.android.systemui.monet;

import com.android.internal.graphics.cam.Cam;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class HueSource implements Hue {
    @Override // com.android.systemui.monet.Hue
    public final double get(Cam cam) {
        return cam.getHue();
    }
}
