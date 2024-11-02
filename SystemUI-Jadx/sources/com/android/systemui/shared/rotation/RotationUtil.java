package com.android.systemui.shared.rotation;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class RotationUtil {
    public static final Companion Companion = new Companion(null);
    public static final boolean[][] ccwCheckArray = {new boolean[]{false, true, true, false}, new boolean[]{false, false, false, true}, new boolean[]{true, false, false, true}, new boolean[]{true, true, true, false}};
    public static int floatingButtonPosition;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }
}
