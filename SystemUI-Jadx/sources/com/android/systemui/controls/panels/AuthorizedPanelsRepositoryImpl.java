package com.android.systemui.controls.panels;

import android.content.Context;
import android.content.SharedPreferences;
import com.android.systemui.R;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.flags.FeatureFlagsRelease;
import com.android.systemui.flags.Flags;
import com.android.systemui.settings.UserFileManager;
import com.android.systemui.settings.UserFileManagerImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptySet;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AuthorizedPanelsRepositoryImpl implements AuthorizedPanelsRepository {
    public final Context context;
    public final FeatureFlags featureFlags;
    public final UserFileManager userFileManager;
    public final UserTracker userTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    public AuthorizedPanelsRepositoryImpl(Context context, UserFileManager userFileManager, UserTracker userTracker, FeatureFlags featureFlags) {
        this.context = context;
        this.userFileManager = userFileManager;
        this.userTracker = userTracker;
        this.featureFlags = featureFlags;
    }

    public final void addAuthorizedPanels(Set set) {
        SharedPreferences instantiateSharedPrefs = instantiateSharedPrefs();
        Set<String> stringSet = instantiateSharedPrefs.getStringSet("authorized_panels", EmptySet.INSTANCE);
        Intrinsics.checkNotNull(stringSet);
        instantiateSharedPrefs.edit().putStringSet("authorized_panels", SetsKt___SetsKt.plus(stringSet, set)).apply();
    }

    public final SharedPreferences instantiateSharedPrefs() {
        Set<String> stringSet;
        boolean z;
        SharedPreferences sharedPreferences = ((UserFileManagerImpl) this.userFileManager).getSharedPreferences(((UserTrackerImpl) this.userTracker).getUserId(), "controls_prefs");
        if (!((FeatureFlagsRelease) this.featureFlags).isEnabled(Flags.APP_PANELS_REMOVE_APPS_ALLOWED) ? !((stringSet = sharedPreferences.getStringSet("authorized_panels", null)) == null || stringSet.isEmpty()) : sharedPreferences.getStringSet("authorized_panels", null) != null) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            sharedPreferences.edit().putStringSet("authorized_panels", ArraysKt___ArraysKt.toSet(this.context.getResources().getStringArray(R.array.config_controlsPreferredPackages))).apply();
        }
        return sharedPreferences;
    }
}
