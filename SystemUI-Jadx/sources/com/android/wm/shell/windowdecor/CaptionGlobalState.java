package com.android.wm.shell.windowdecor;

import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CaptionGlobalState {
    public static String COLOR_THEME_COLOR = "";
    public static boolean COLOR_THEME_ENABLED = false;
    public static boolean FULLSCREEN_HANDLER_ENABLED = false;
    public static int TRANSIENT_DELAY = -1;

    public final String toString() {
        StringBuilder sb = new StringBuilder("CaptionGlobalState{COLOR_THEME_ENABLED=");
        sb.append(COLOR_THEME_ENABLED);
        sb.append(" FULLSCREEN_HANDLER_ENABLED=");
        sb.append(FULLSCREEN_HANDLER_ENABLED);
        sb.append(" TRANSIENT_DELAY=");
        return ConstraintWidget$$ExternalSyntheticOutline0.m(sb, TRANSIENT_DELAY, "}");
    }
}
