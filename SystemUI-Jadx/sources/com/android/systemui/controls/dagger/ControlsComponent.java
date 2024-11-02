package com.android.systemui.controls.dagger;

import android.content.Context;
import com.android.internal.widget.LockPatternUtils;
import com.android.systemui.controls.controller.ControlsTileResourceConfigurationImpl;
import com.android.systemui.controls.settings.ControlsSettingsRepository;
import com.android.systemui.controls.settings.ControlsSettingsRepositoryImpl;
import com.android.systemui.settings.UserTracker;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import dagger.Lazy;
import java.util.Optional;
import kotlinx.coroutines.flow.ReadonlyStateFlow;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsComponent {
    public final ReadonlyStateFlow canShowWhileLockedSetting;
    public final ControlsTileResourceConfigurationImpl controlsTileResourceConfiguration;
    public final boolean featureEnabled;
    public final KeyguardStateController keyguardStateController;
    public final Lazy lazyControlsController;
    public final Lazy lazyControlsListingController;
    public final Lazy lazyControlsUiController;
    public final Lazy lazyCustomControlsController;
    public final Lazy lazyCustomControlsUiController;
    public final LockPatternUtils lockPatternUtils;
    public final UserTracker userTracker;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum Visibility {
        AVAILABLE,
        AVAILABLE_AFTER_UNLOCK,
        UNAVAILABLE
    }

    public ControlsComponent(boolean z, Context context, Lazy lazy, Lazy lazy2, Lazy lazy3, Lazy lazy4, Lazy lazy5, LockPatternUtils lockPatternUtils, KeyguardStateController keyguardStateController, UserTracker userTracker, ControlsSettingsRepository controlsSettingsRepository, Optional<ControlsTileResourceConfigurationImpl> optional) {
        this.featureEnabled = z;
        this.lazyControlsController = lazy;
        this.lazyCustomControlsController = lazy2;
        this.lazyControlsUiController = lazy3;
        this.lazyCustomControlsUiController = lazy4;
        this.lazyControlsListingController = lazy5;
        this.lockPatternUtils = lockPatternUtils;
        this.keyguardStateController = keyguardStateController;
        this.userTracker = userTracker;
        this.canShowWhileLockedSetting = ((ControlsSettingsRepositoryImpl) controlsSettingsRepository).canShowControlsInLockscreen;
        this.controlsTileResourceConfiguration = optional.orElse(new ControlsTileResourceConfigurationImpl());
    }

    public final Optional getControlsController() {
        if (this.featureEnabled) {
            return Optional.of(this.lazyControlsController.get());
        }
        return Optional.empty();
    }

    public final Optional getControlsListingController() {
        if (this.featureEnabled) {
            return Optional.of(this.lazyControlsListingController.get());
        }
        return Optional.empty();
    }

    public final Optional getCustomControlsUiController() {
        if (this.featureEnabled) {
            return Optional.of(this.lazyCustomControlsUiController.get());
        }
        return Optional.empty();
    }
}
