package com.android.systemui.statusbar.core;

import com.android.systemui.statusbar.phone.CentralSurfacesImpl$$ExternalSyntheticLambda0;
import com.android.systemui.statusbar.phone.LetterboxAppearanceCalculator;
import com.android.systemui.statusbar.window.StatusBarWindowController;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarInitializer {
    public final Set creationListeners;
    public CentralSurfacesImpl$$ExternalSyntheticLambda0 statusBarViewUpdatedListener;
    public final StatusBarWindowController windowController;

    public StatusBarInitializer(StatusBarWindowController statusBarWindowController, Set<LetterboxAppearanceCalculator> set) {
        this.windowController = statusBarWindowController;
        this.creationListeners = set;
    }
}
