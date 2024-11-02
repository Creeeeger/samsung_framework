package com.android.systemui.biometrics;

import android.content.Context;
import android.graphics.Insets;
import android.hardware.biometrics.PromptInfo;
import android.hardware.biometrics.SensorPropertiesInternal;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.android.internal.widget.LockPatternUtils;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class Utils {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        new Utils();
    }

    private Utils() {
    }

    public static final SensorPropertiesInternal findFirstSensorProperties(List list, int[] iArr) {
        Object obj = null;
        if (list == null) {
            return null;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (ArraysKt___ArraysKt.contains(((SensorPropertiesInternal) next).sensorId, iArr)) {
                obj = next;
                break;
            }
        }
        return (SensorPropertiesInternal) obj;
    }

    public static final int getCredentialType(LockPatternUtils lockPatternUtils, int i) {
        int keyguardStoredPasswordQuality = lockPatternUtils.getKeyguardStoredPasswordQuality(i);
        if (keyguardStoredPasswordQuality != 65536) {
            if (keyguardStoredPasswordQuality == 131072 || keyguardStoredPasswordQuality == 196608) {
                return 1;
            }
            return (keyguardStoredPasswordQuality == 262144 || keyguardStoredPasswordQuality == 327680 || keyguardStoredPasswordQuality != 393216) ? 3 : 3;
        }
        return 2;
    }

    public static final Insets getNavbarInsets(Context context) {
        WindowMetrics windowMetrics;
        WindowInsets windowInsets;
        WindowManager windowManager = (WindowManager) context.getSystemService(WindowManager.class);
        Insets insets = null;
        if (windowManager != null) {
            windowMetrics = windowManager.getMaximumWindowMetrics();
        } else {
            windowMetrics = null;
        }
        if (windowMetrics != null && (windowInsets = windowMetrics.getWindowInsets()) != null) {
            insets = windowInsets.getInsets(WindowInsets.Type.navigationBars());
        }
        if (insets == null) {
            return Insets.NONE;
        }
        return insets;
    }

    public static final boolean isDeviceCredentialAllowed(PromptInfo promptInfo) {
        if ((promptInfo.getAuthenticators() & 32768) != 0) {
            return true;
        }
        return false;
    }

    public static final void notifyAccessibilityContentChanged(AccessibilityManager accessibilityManager, ViewGroup viewGroup) {
        if (!accessibilityManager.isEnabled()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(2048);
        obtain.setContentChangeTypes(1);
        viewGroup.sendAccessibilityEventUnchecked(obtain);
        viewGroup.notifySubtreeAccessibilityStateChanged(viewGroup, viewGroup, 1);
    }
}
