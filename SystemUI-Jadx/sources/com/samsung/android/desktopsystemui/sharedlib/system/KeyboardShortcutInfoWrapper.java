package com.samsung.android.desktopsystemui.sharedlib.system;

import android.graphics.drawable.Icon;
import android.view.KeyboardShortcutInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class KeyboardShortcutInfoWrapper {
    public static Icon getIcon(KeyboardShortcutInfo keyboardShortcutInfo) {
        return keyboardShortcutInfo.getIcon();
    }

    public static KeyboardShortcutInfo getKeyboardShortcutInfo(CharSequence charSequence, Icon icon, int i, int i2) {
        return new KeyboardShortcutInfo(charSequence, icon, i, i2);
    }
}
