package androidx.picker.model;

import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppInfoDataImpl implements AppInfoData {
    public final Drawable actionIcon;
    public final AppInfo appInfo;
    public boolean dimmed;
    public final String extraLabel;
    public Drawable icon;
    public final boolean isValueInSubLabel;
    public final int itemType;
    public String label;
    public boolean selected;
    public final Drawable subIcon;
    public final String subLabel;

    public AppInfoDataImpl(AppInfo appInfo) {
        this(appInfo, 0, null, null, null, null, null, null, false, false, false, 2046, null);
    }

    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(AppInfoDataImpl.class, cls)) {
            return false;
        }
        AppInfoDataImpl appInfoDataImpl = (AppInfoDataImpl) obj;
        if (Intrinsics.areEqual(this.appInfo, appInfoDataImpl.appInfo) && this.itemType == appInfoDataImpl.itemType && Intrinsics.areEqual(this.icon, appInfoDataImpl.icon) && Intrinsics.areEqual(this.subIcon, appInfoDataImpl.subIcon) && Intrinsics.areEqual(this.label, appInfoDataImpl.label) && Intrinsics.areEqual(this.subLabel, appInfoDataImpl.subLabel) && Intrinsics.areEqual(this.extraLabel, appInfoDataImpl.extraLabel) && Intrinsics.areEqual(this.actionIcon, appInfoDataImpl.actionIcon) && this.selected == appInfoDataImpl.selected && this.dimmed == appInfoDataImpl.dimmed && this.isValueInSubLabel == appInfoDataImpl.isValueInSubLabel) {
            return true;
        }
        return false;
    }

    @Override // androidx.picker.model.AppInfoData
    public final Drawable getActionIcon() {
        return this.actionIcon;
    }

    @Override // androidx.picker.model.AppData
    public final AppInfo getAppInfo() {
        return this.appInfo;
    }

    @Override // androidx.picker.model.AppInfoData
    public final boolean getDimmed() {
        return this.dimmed;
    }

    @Override // androidx.picker.model.AppInfoData
    public final String getExtraLabel() {
        return this.extraLabel;
    }

    @Override // androidx.picker.model.AppInfoData
    public final Drawable getIcon() {
        return this.icon;
    }

    @Override // androidx.picker.model.AppInfoData
    public final int getItemType() {
        return this.itemType;
    }

    @Override // androidx.picker.model.AppInfoData
    public final String getLabel() {
        return this.label;
    }

    @Override // androidx.picker.model.AppInfoData
    public final boolean getSelected() {
        return this.selected;
    }

    @Override // androidx.picker.model.AppInfoData
    public final Drawable getSubIcon() {
        return this.subIcon;
    }

    @Override // androidx.picker.model.AppInfoData
    public final String getSubLabel() {
        return this.subLabel;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int hashCode = ((this.appInfo.hashCode() * 31) + this.itemType) * 31;
        Drawable drawable = this.icon;
        int i6 = 0;
        if (drawable != null) {
            i = drawable.hashCode();
        } else {
            i = 0;
        }
        int i7 = (hashCode + i) * 31;
        Drawable drawable2 = this.subIcon;
        if (drawable2 != null) {
            i2 = drawable2.hashCode();
        } else {
            i2 = 0;
        }
        int i8 = (i7 + i2) * 31;
        String str = this.label;
        if (str != null) {
            i3 = str.hashCode();
        } else {
            i3 = 0;
        }
        int i9 = (i8 + i3) * 31;
        String str2 = this.subLabel;
        if (str2 != null) {
            i4 = str2.hashCode();
        } else {
            i4 = 0;
        }
        int i10 = (i9 + i4) * 31;
        String str3 = this.extraLabel;
        if (str3 != null) {
            i5 = str3.hashCode();
        } else {
            i5 = 0;
        }
        int i11 = (i10 + i5) * 31;
        Drawable drawable3 = this.actionIcon;
        if (drawable3 != null) {
            i6 = drawable3.hashCode();
        }
        return Boolean.hashCode(this.isValueInSubLabel) + ((Boolean.hashCode(this.dimmed) + ((Boolean.hashCode(this.selected) + ((i11 + i6) * 31)) * 31)) * 31);
    }

    @Override // androidx.picker.model.AppInfoData
    public final boolean isValueInSubLabel() {
        return this.isValueInSubLabel;
    }

    @Override // androidx.picker.model.AppInfoData
    public final void setDimmed(boolean z) {
        this.dimmed = z;
    }

    @Override // androidx.picker.model.AppInfoData
    public final void setIcon(Drawable drawable) {
        this.icon = drawable;
    }

    @Override // androidx.picker.model.AppInfoData
    public final void setLabel(String str) {
        this.label = str;
    }

    @Override // androidx.picker.model.AppInfoData
    public final void setSelected(boolean z) {
        this.selected = z;
    }

    public AppInfoDataImpl(AppInfo appInfo, int i) {
        this(appInfo, i, null, null, null, null, null, null, false, false, false, 2044, null);
    }

    public AppInfoDataImpl(AppInfo appInfo, int i, Drawable drawable) {
        this(appInfo, i, drawable, null, null, null, null, null, false, false, false, 2040, null);
    }

    public AppInfoDataImpl(AppInfo appInfo, int i, Drawable drawable, Drawable drawable2) {
        this(appInfo, i, drawable, drawable2, null, null, null, null, false, false, false, 2032, null);
    }

    public AppInfoDataImpl(AppInfo appInfo, int i, Drawable drawable, Drawable drawable2, String str) {
        this(appInfo, i, drawable, drawable2, str, null, null, null, false, false, false, 2016, null);
    }

    public AppInfoDataImpl(AppInfo appInfo, int i, Drawable drawable, Drawable drawable2, String str, String str2) {
        this(appInfo, i, drawable, drawable2, str, str2, null, null, false, false, false, 1984, null);
    }

    public AppInfoDataImpl(AppInfo appInfo, int i, Drawable drawable, Drawable drawable2, String str, String str2, String str3) {
        this(appInfo, i, drawable, drawable2, str, str2, str3, null, false, false, false, 1920, null);
    }

    public AppInfoDataImpl(AppInfo appInfo, int i, Drawable drawable, Drawable drawable2, String str, String str2, String str3, Drawable drawable3) {
        this(appInfo, i, drawable, drawable2, str, str2, str3, drawable3, false, false, false, 1792, null);
    }

    public AppInfoDataImpl(AppInfo appInfo, int i, Drawable drawable, Drawable drawable2, String str, String str2, String str3, Drawable drawable3, boolean z) {
        this(appInfo, i, drawable, drawable2, str, str2, str3, drawable3, z, false, false, 1536, null);
    }

    public AppInfoDataImpl(AppInfo appInfo, int i, Drawable drawable, Drawable drawable2, String str, String str2, String str3, Drawable drawable3, boolean z, boolean z2) {
        this(appInfo, i, drawable, drawable2, str, str2, str3, drawable3, z, z2, false, 1024, null);
    }

    public AppInfoDataImpl(AppInfo appInfo, int i, Drawable drawable, Drawable drawable2, String str, String str2, String str3, Drawable drawable3, boolean z, boolean z2, boolean z3) {
        this.appInfo = appInfo;
        this.itemType = i;
        this.icon = drawable;
        this.subIcon = drawable2;
        this.label = str;
        this.subLabel = str2;
        this.extraLabel = str3;
        this.actionIcon = drawable3;
        this.selected = z;
        this.dimmed = z2;
        this.isValueInSubLabel = z3;
    }

    public /* synthetic */ AppInfoDataImpl(AppInfo appInfo, int i, Drawable drawable, Drawable drawable2, String str, String str2, String str3, Drawable drawable3, boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(appInfo, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? null : drawable, (i2 & 8) != 0 ? null : drawable2, (i2 & 16) != 0 ? null : str, (i2 & 32) != 0 ? null : str2, (i2 & 64) != 0 ? null : str3, (i2 & 128) == 0 ? drawable3 : null, (i2 & 256) != 0 ? false : z, (i2 & 512) != 0 ? false : z2, (i2 & 1024) == 0 ? z3 : false);
    }
}
