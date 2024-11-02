package com.android.systemui.media.taptotransfer.common;

import com.android.systemui.common.shared.model.ContentDescription;
import com.android.systemui.common.shared.model.Icon;
import com.android.systemui.common.shared.model.TintedIcon;
import com.android.systemui.media.taptotransfer.common.MediaTttIcon;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class IconInfo {
    public final ContentDescription contentDescription;
    public final MediaTttIcon icon;
    public final boolean isAppIcon;
    public final Integer tint;

    public IconInfo(ContentDescription contentDescription, MediaTttIcon mediaTttIcon, Integer num, boolean z) {
        this.contentDescription = contentDescription;
        this.icon = mediaTttIcon;
        this.tint = num;
        this.isAppIcon = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.common.shared.model.ContentDescription] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.systemui.media.taptotransfer.common.MediaTttIcon] */
    public static IconInfo copy$default(IconInfo iconInfo, ContentDescription.Loaded loaded, MediaTttIcon.Loaded loaded2, boolean z, int i) {
        Integer num;
        ContentDescription.Loaded loaded3 = loaded;
        if ((i & 1) != 0) {
            loaded3 = iconInfo.contentDescription;
        }
        MediaTttIcon.Loaded loaded4 = loaded2;
        if ((i & 2) != 0) {
            loaded4 = iconInfo.icon;
        }
        if ((i & 4) != 0) {
            num = iconInfo.tint;
        } else {
            num = null;
        }
        if ((i & 8) != 0) {
            z = iconInfo.isAppIcon;
        }
        return new IconInfo(loaded3, loaded4, num, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IconInfo)) {
            return false;
        }
        IconInfo iconInfo = (IconInfo) obj;
        if (Intrinsics.areEqual(this.contentDescription, iconInfo.contentDescription) && Intrinsics.areEqual(this.icon, iconInfo.icon) && Intrinsics.areEqual(this.tint, iconInfo.tint) && this.isAppIcon == iconInfo.isAppIcon) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.icon.hashCode() + (this.contentDescription.hashCode() * 31)) * 31;
        Integer num = this.tint;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i = (hashCode2 + hashCode) * 31;
        boolean z = this.isAppIcon;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        return i + i2;
    }

    public final String toString() {
        return "IconInfo(contentDescription=" + this.contentDescription + ", icon=" + this.icon + ", tint=" + this.tint + ", isAppIcon=" + this.isAppIcon + ")";
    }

    public final TintedIcon toTintedIcon() {
        Icon resource;
        MediaTttIcon mediaTttIcon = this.icon;
        boolean z = mediaTttIcon instanceof MediaTttIcon.Loaded;
        ContentDescription contentDescription = this.contentDescription;
        if (z) {
            resource = new Icon.Loaded(((MediaTttIcon.Loaded) mediaTttIcon).drawable, contentDescription);
        } else if (mediaTttIcon instanceof MediaTttIcon.Resource) {
            resource = new Icon.Resource(((MediaTttIcon.Resource) mediaTttIcon).res, contentDescription);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return new TintedIcon(resource, this.tint);
    }
}
