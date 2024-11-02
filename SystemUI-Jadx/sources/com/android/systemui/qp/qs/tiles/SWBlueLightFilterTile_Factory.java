package com.android.systemui.qp.qs.tiles;

import android.content.Context;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.util.SettingsHelper;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SWBlueLightFilterTile_Factory implements Provider {
    public final Provider centralSurfacesProvider;
    public final Provider contextProvider;
    public final Provider settingsHelperProvider;

    public SWBlueLightFilterTile_Factory(Provider provider, Provider provider2, Provider provider3) {
        this.centralSurfacesProvider = provider;
        this.contextProvider = provider2;
        this.settingsHelperProvider = provider3;
    }

    public static SWBlueLightFilterTile newInstance(CentralSurfaces centralSurfaces, Context context, SettingsHelper settingsHelper) {
        return new SWBlueLightFilterTile(centralSurfaces, context, settingsHelper);
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SWBlueLightFilterTile((CentralSurfaces) this.centralSurfacesProvider.get(), (Context) this.contextProvider.get(), (SettingsHelper) this.settingsHelperProvider.get());
    }
}
