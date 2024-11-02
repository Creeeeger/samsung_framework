package com.samsung.systemui.splugins.navigationbar;

import android.util.ArrayMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class IconTheme implements IconThemeBase {
    Map<IconType, IconResource> mData = new ArrayMap();
    IconThemeType mThemeType;

    public IconTheme(IconThemeType iconThemeType) {
        this.mThemeType = iconThemeType;
    }

    @Override // com.samsung.systemui.splugins.navigationbar.IconThemeBase
    public void addData(IconType iconType, IconResource iconResource) {
        this.mData.put(iconType, iconResource);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.IconThemeBase
    public IconResource getData(IconType iconType) {
        return this.mData.get(iconType);
    }
}
