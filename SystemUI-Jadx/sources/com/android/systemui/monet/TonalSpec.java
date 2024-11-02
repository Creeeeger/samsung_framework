package com.android.systemui.monet;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TonalSpec {
    public final Chroma chroma;
    public final Hue hue;

    public TonalSpec(Hue hue, Chroma chroma) {
        this.hue = hue;
        this.chroma = chroma;
    }

    public /* synthetic */ TonalSpec(Hue hue, Chroma chroma, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new HueSource() : hue, chroma);
    }
}
