package com.android.systemui.basic.util;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public enum ModuleType {
    NAVBAR("Navbar."),
    VOLUME("SecVolume."),
    GLOBALACTIONS("[SamsungGlobalActions]"),
    POPUPUI("PopupUI."),
    CONTROLS("Controls."),
    /* JADX INFO: Fake field, exist only in values array */
    INDICATOR("Indicator."),
    KEYGUARD("Keyguard.");

    private final String mModuleTag;

    ModuleType(String str) {
        this.mModuleTag = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.mModuleTag;
    }
}
