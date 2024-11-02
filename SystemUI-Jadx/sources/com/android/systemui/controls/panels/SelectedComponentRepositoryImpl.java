package com.android.systemui.controls.panels;

import android.content.ComponentName;
import android.content.SharedPreferences;
import com.android.systemui.controls.panels.SelectedComponentRepository;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.settings.UserFileManager;
import com.android.systemui.settings.UserFileManagerImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.settings.UserTrackerImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SelectedComponentRepositoryImpl implements SelectedComponentRepository {
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

    public SelectedComponentRepositoryImpl(UserFileManager userFileManager, UserTracker userTracker, FeatureFlags featureFlags) {
        this.userFileManager = userFileManager;
        this.userTracker = userTracker;
        this.featureFlags = featureFlags;
    }

    public final void setSelectedComponent(SelectedComponentRepository.SelectedComponent selectedComponent) {
        String str;
        SharedPreferences.Editor edit = ((UserFileManagerImpl) this.userFileManager).getSharedPreferences(((UserTrackerImpl) this.userTracker).getUserId(), "controls_prefs").edit();
        ComponentName componentName = selectedComponent.componentName;
        if (componentName != null) {
            str = componentName.flattenToString();
        } else {
            str = null;
        }
        edit.putString("controls_component", str).putString("controls_structure", selectedComponent.name).putBoolean("controls_is_panel", selectedComponent.isPanel).apply();
    }
}
