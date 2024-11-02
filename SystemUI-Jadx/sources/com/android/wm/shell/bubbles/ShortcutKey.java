package com.android.wm.shell.bubbles;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShortcutKey {
    public final String pkg;
    public final int userId;

    public ShortcutKey(int i, String str) {
        this.userId = i;
        this.pkg = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShortcutKey)) {
            return false;
        }
        ShortcutKey shortcutKey = (ShortcutKey) obj;
        if (this.userId == shortcutKey.userId && Intrinsics.areEqual(this.pkg, shortcutKey.pkg)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.pkg.hashCode() + (Integer.hashCode(this.userId) * 31);
    }

    public final String toString() {
        return "ShortcutKey(userId=" + this.userId + ", pkg=" + this.pkg + ")";
    }
}
