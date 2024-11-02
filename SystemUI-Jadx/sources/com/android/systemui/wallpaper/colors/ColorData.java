package com.android.systemui.wallpaper.colors;

import android.app.SemWallpaperColors;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ColorData {
    public final SemWallpaperColors colors;
    public final boolean isLockStarEnabled;
    public final boolean isOpenTheme;
    public final boolean isOpenThemeLockWallpaper;

    public ColorData(SemWallpaperColors semWallpaperColors, boolean z, boolean z2, boolean z3) {
        this.colors = semWallpaperColors;
        this.isOpenTheme = z;
        this.isOpenThemeLockWallpaper = z2;
        this.isLockStarEnabled = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorData)) {
            return false;
        }
        ColorData colorData = (ColorData) obj;
        if (Intrinsics.areEqual(this.colors, colorData.colors) && this.isOpenTheme == colorData.isOpenTheme && this.isOpenThemeLockWallpaper == colorData.isOpenThemeLockWallpaper && this.isLockStarEnabled == colorData.isLockStarEnabled) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = this.colors.hashCode() * 31;
        int i = 1;
        boolean z = this.isOpenTheme;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int i3 = (hashCode + i2) * 31;
        boolean z2 = this.isOpenThemeLockWallpaper;
        int i4 = z2;
        if (z2 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        boolean z3 = this.isLockStarEnabled;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        return i5 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ColorData(colors=");
        sb.append(this.colors);
        sb.append(", isOpenTheme=");
        sb.append(this.isOpenTheme);
        sb.append(", isOpenThemeLockWallpaper=");
        sb.append(this.isOpenThemeLockWallpaper);
        sb.append(", isLockStarEnabled=");
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(sb, this.isLockStarEnabled, ")");
    }
}
