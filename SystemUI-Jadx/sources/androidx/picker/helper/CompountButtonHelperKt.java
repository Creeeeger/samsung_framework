package androidx.picker.helper;

import android.view.accessibility.AccessibilityManager;
import android.widget.CompoundButton;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class CompountButtonHelperKt {
    public static final void setAccessibilityFocusable(CompoundButton compoundButton, boolean z) {
        AccessibilityManager accessibilityManager;
        Object systemService = compoundButton.getContext().getSystemService("accessibility");
        if (systemService instanceof AccessibilityManager) {
            accessibilityManager = (AccessibilityManager) systemService;
        } else {
            accessibilityManager = null;
        }
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            if (z) {
                compoundButton.setFocusable(true);
                compoundButton.setClickable(true);
            } else {
                compoundButton.setFocusable(false);
                compoundButton.setClickable(false);
            }
        }
    }
}
