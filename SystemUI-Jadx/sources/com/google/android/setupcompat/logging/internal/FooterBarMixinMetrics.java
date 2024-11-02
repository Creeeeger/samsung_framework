package com.google.android.setupcompat.logging.internal;

import androidx.constraintlayout.motion.widget.KeyAttributes$$ExternalSyntheticOutline0;
import com.android.systemui.bixby2.actionresult.ActionResults;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FooterBarMixinMetrics {
    public static final String EXTRA_PRIMARY_BUTTON_VISIBILITY = "PrimaryButtonVisibility";
    public static final String EXTRA_SECONDARY_BUTTON_VISIBILITY = "SecondaryButtonVisibility";
    public String primaryButtonVisibility = "Unknown";
    public String secondaryButtonVisibility = "Unknown";

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface FooterButtonVisibility {
    }

    public static String updateButtonVisibilityState(String str, boolean z) {
        if (!"VisibleUsingXml".equals(str) && !ActionResults.RESULT_LAUNCHER_VISIBLE.equals(str) && !ActionResults.RESULT_LAUNCHER_INVISIBLE.equals(str)) {
            throw new IllegalStateException(KeyAttributes$$ExternalSyntheticOutline0.m("Illegal visibility state: ", str));
        }
        if (z && ActionResults.RESULT_LAUNCHER_INVISIBLE.equals(str)) {
            return "Invisible_to_Visible";
        }
        if (!z) {
            if ("VisibleUsingXml".equals(str)) {
                return "VisibleUsingXml_to_Invisible";
            }
            if (ActionResults.RESULT_LAUNCHER_VISIBLE.equals(str)) {
                return "Visible_to_Invisible";
            }
            return str;
        }
        return str;
    }
}
