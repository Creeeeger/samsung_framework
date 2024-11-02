package com.android.systemui.monet;

import com.android.internal.graphics.cam.Cam;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public interface Chroma {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final double MAX_VALUE = 120.0d;

        private Companion() {
        }
    }

    double get(Cam cam);
}
