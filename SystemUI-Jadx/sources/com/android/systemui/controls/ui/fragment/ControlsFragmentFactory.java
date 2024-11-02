package com.android.systemui.controls.ui.fragment;

import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.android.systemui.controls.controller.util.BadgeSubject;
import com.android.systemui.controls.management.ControlsListingController;
import com.android.systemui.controls.ui.CustomControlsUiController;
import com.android.systemui.controls.ui.util.ControlsActivityStarter;
import com.android.systemui.controls.ui.util.LayoutUtil;
import com.android.systemui.controls.ui.util.SALogger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ControlsFragmentFactory extends FragmentFactory {
    public final BadgeSubject badgeSubject;
    public final ControlsActivityStarter controlsActivityStarter;
    public final CustomControlsUiController controlsUiController;
    public final LayoutUtil layoutUtil;
    public final ControlsListingController listingController;
    public final SALogger saLogger;

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

    public ControlsFragmentFactory(ControlsActivityStarter controlsActivityStarter, LayoutUtil layoutUtil, SALogger sALogger, BadgeSubject badgeSubject, ControlsListingController controlsListingController, CustomControlsUiController customControlsUiController) {
        this.controlsActivityStarter = controlsActivityStarter;
        this.layoutUtil = layoutUtil;
        this.saLogger = sALogger;
        this.badgeSubject = badgeSubject;
        this.listingController = controlsListingController;
        this.controlsUiController = customControlsUiController;
    }

    @Override // androidx.fragment.app.FragmentFactory
    public final Fragment instantiate(ClassLoader classLoader, String str) {
        Fragment instantiate;
        if (Intrinsics.areEqual(str, MainFragment.class.getName())) {
            instantiate = new MainFragment(this.controlsActivityStarter, this.layoutUtil, this.saLogger, this.badgeSubject, this.listingController, this.controlsUiController);
        } else {
            boolean areEqual = Intrinsics.areEqual(str, NoAppFragment.class.getName());
            SALogger sALogger = this.saLogger;
            if (areEqual) {
                instantiate = new NoAppFragment(sALogger);
            } else if (Intrinsics.areEqual(str, NoFavoriteFragment.class.getName())) {
                instantiate = new NoFavoriteFragment(this.controlsActivityStarter, sALogger, this.badgeSubject);
            } else if (Intrinsics.areEqual(str, SettingFragment.class.getName())) {
                instantiate = new SettingFragment(sALogger);
            } else {
                instantiate = super.instantiate(classLoader, str);
            }
        }
        Log.d("ControlsFragmentFactory", str);
        return instantiate;
    }
}
