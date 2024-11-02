package com.samsung.android.desktopsystemui.sharedlib.system;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.AppGlobals;
import android.view.Display;
import android.view.accessibility.AccessibilityManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class AccessibilityManagerWrapper {
    private static final AccessibilityManagerWrapper sInstance = new AccessibilityManagerWrapper();
    private static final AccessibilityManager mAccessibilityManager = (AccessibilityManager) AppGlobals.getInitialApplication().getSystemService("accessibility");
    private ArrayList<AccessibilityCallbacks> mCallbacks = new ArrayList<>();
    private final AccessibilityManager.AccessibilityServicesStateChangeListener mAccessibilityListener = new AccessibilityManager.AccessibilityServicesStateChangeListener() { // from class: com.samsung.android.desktopsystemui.sharedlib.system.AccessibilityManagerWrapper$$ExternalSyntheticLambda0
        @Override // android.view.accessibility.AccessibilityManager.AccessibilityServicesStateChangeListener
        public final void onAccessibilityServicesStateChanged(AccessibilityManager accessibilityManager) {
            AccessibilityManagerWrapper.this.updateAccessibilityServicesState(accessibilityManager);
        }
    };

    private AccessibilityManagerWrapper() {
    }

    private void addAccessibilityServicesStateChangeListener() {
        mAccessibilityManager.addAccessibilityServicesStateChangeListener(this.mAccessibilityListener);
    }

    public static AccessibilityManagerWrapper getInstance() {
        return sInstance;
    }

    private void removeAccessibilityServicesStateChangeListener() {
        mAccessibilityManager.removeAccessibilityServicesStateChangeListener(this.mAccessibilityListener);
    }

    public void addCallback(AccessibilityCallbacks accessibilityCallbacks) {
        this.mCallbacks.add(accessibilityCallbacks);
        addAccessibilityServicesStateChangeListener();
    }

    public void clearCallback() {
        this.mCallbacks.clear();
        removeAccessibilityServicesStateChangeListener();
    }

    public int getA11yButtonState(boolean[] zArr) {
        AccessibilityManager accessibilityManager = mAccessibilityManager;
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(-1);
        int size = accessibilityManager.getAccessibilityShortcutTargets(0).size();
        boolean z = false;
        for (int size2 = enabledAccessibilityServiceList.size() - 1; size2 >= 0; size2--) {
            int i = enabledAccessibilityServiceList.get(size2).feedbackType;
            if (i != 0 && i != 16) {
                z = true;
            }
        }
        if (zArr != null) {
            zArr[0] = z;
        }
        return size;
    }

    public boolean isAccessibilityVolumeStreamActive() {
        return mAccessibilityManager.isAccessibilityVolumeStreamActive();
    }

    public void onAccessibilityClick(Display display) {
        int i;
        AccessibilityManager accessibilityManager = mAccessibilityManager;
        if (display != null) {
            i = display.getDisplayId();
        } else {
            i = 0;
        }
        accessibilityManager.notifyAccessibilityButtonClicked(i);
    }

    public void removeCallback(AccessibilityCallbacks accessibilityCallbacks) {
        this.mCallbacks.remove(accessibilityCallbacks);
    }

    public void updateAccessibilityServicesState(AccessibilityManager accessibilityManager) {
        int a11yButtonState = getA11yButtonState(new boolean[1]);
        Iterator<AccessibilityCallbacks> it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            it.next().updateAccessibility(a11yButtonState);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface AccessibilityCallbacks {
        default void updateAccessibility(int i) {
        }
    }
}
