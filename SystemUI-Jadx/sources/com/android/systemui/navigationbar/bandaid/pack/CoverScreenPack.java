package com.android.systemui.navigationbar.bandaid.pack;

import android.graphics.Rect;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.navigationbar.NavBarHelper;
import com.android.systemui.navigationbar.NavigationBar;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.navigationbar.SamsungNavigationBarView;
import com.android.systemui.navigationbar.bandaid.Band;
import com.android.systemui.navigationbar.bandaid.BandAid;
import com.android.systemui.navigationbar.bandaid.BandAidPack;
import com.android.systemui.navigationbar.buttons.DeadZone;
import com.android.systemui.navigationbar.gestural.AccessibilityGestureHandler;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreAction;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.shared.navigationbar.RegionSamplingHelper;
import com.samsung.android.desktopsystemui.sharedlib.keyguard.SemWallpaperColorsWrapper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CoverScreenPack implements BandAidPack {
    public final List allBands;
    public int coverWindowState;
    public final int gestureSidePadding;
    public final int sidePadding;
    public final NavBarStore store;

    public CoverScreenPack(NavBarStore navBarStore) {
        this.store = navBarStore;
        ArrayList arrayList = new ArrayList();
        this.allBands = arrayList;
        this.sidePadding = 399;
        this.gestureSidePadding = 66;
        int i = Band.$r8$clinit;
        Band.Builder builder = new Band.Builder();
        boolean z = BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN;
        builder.runeDependency = z;
        builder.bandAidDependency = BandAid.COVER_SCREEN_PACK_NAVBAR_VISIBILITY_CHANGED;
        builder.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnNavBarLargeCoverScreenVisibilityChanged.class);
        builder.targetModules = CollectionsKt__CollectionsKt.listOf(NavigationBar.class, NavBarStoreImpl.class);
        builder.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        builder.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$1$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                int i2;
                Band.Kit kit = (Band.Kit) obj;
                CoverScreenPack coverScreenPack = CoverScreenPack.this;
                EventTypeFactory.EventType.OnNavBarLargeCoverScreenVisibilityChanged onNavBarLargeCoverScreenVisibilityChanged = (EventTypeFactory.EventType.OnNavBarLargeCoverScreenVisibilityChanged) kit.event;
                if (!kit.manager.isLargeCoverScreenSyncEnabled()) {
                    if (!onNavBarLargeCoverScreenVisibilityChanged.imeShown && !onNavBarLargeCoverScreenVisibilityChanged.coverTask) {
                        i2 = 8;
                    } else {
                        i2 = 0;
                    }
                    CoverScreenPack.access$updateLargeCoverNavBarVisibility(coverScreenPack, kit, i2);
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m = ColorPack$$ExternalSyntheticOutline0.m(builder, arrayList);
        m.runeDependency = z;
        m.bandAidDependency = BandAid.COVER_SCREEN_PACK_NAVBAR_ATTACHED_TO_WINDOW;
        m.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnNavBarAttachedToWindow.class);
        m.targetModules = Collections.singletonList(SamsungNavigationBarView.class);
        m.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$3$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                int i2;
                Band.Kit kit = (Band.Kit) obj;
                CoverScreenPack coverScreenPack = CoverScreenPack.this;
                int i3 = kit.displayId;
                if (i3 == 1) {
                    NavigationBar navigationBar = (NavigationBar) ((NavBarStoreImpl) coverScreenPack.store).getModule(NavigationBar.class, i3);
                    navigationBar.setWindowState(i3, 2, coverScreenPack.coverWindowState);
                    AccessibilityGestureHandler accessibilityGestureHandler = navigationBar.mNavBarHelper.mAccessibilityGestureHandler;
                    accessibilityGestureHandler.isAttached = true;
                    Log.d(accessibilityGestureHandler.tag, "onNavBarAttached");
                    accessibilityGestureHandler.updateIsEnabled();
                    NavBarStateManager navBarStateManager = kit.manager;
                    if (!navBarStateManager.isLargeCoverScreenSyncEnabled()) {
                        if (navBarStateManager.isLargeCoverTaskEnabled()) {
                            i2 = 0;
                        } else {
                            i2 = 8;
                        }
                        CoverScreenPack.access$updateLargeCoverNavBarVisibility(coverScreenPack, kit, i2);
                    }
                }
                return Unit.INSTANCE;
            }
        };
        m.afterAction = new Consumer() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$3$2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((NavBarStoreImpl) CoverScreenPack.this.store).apply((Band.Kit) obj, new NavBarStoreAction.UpdateNavBarLayoutParams(null, 1, null));
            }
        };
        Band.Builder m2 = ColorPack$$ExternalSyntheticOutline0.m(m, arrayList);
        m2.runeDependency = z;
        m2.bandAidDependency = BandAid.COVER_SCREEN_PACK_NAVBAR_DETACHED_TO_WINDOW;
        m2.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnNavBarDetachedFromWindow.class);
        m2.targetModules = Collections.singletonList(SamsungNavigationBarView.class);
        m2.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$5$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                boolean z2;
                View rootView;
                Band.Kit kit = (Band.Kit) obj;
                CoverScreenPack coverScreenPack = CoverScreenPack.this;
                int i2 = kit.displayId;
                if (i2 == 1) {
                    NavBarStoreAction.Action action = new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, 0, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4194303, null);
                    NavigationBarView navigationBarView = (NavigationBarView) ((NavBarStoreImpl) coverScreenPack.store).getModule(NavigationBarView.class, 0);
                    if (navigationBarView != null && (rootView = navigationBarView.getRootView()) != null && rootView.getVisibility() == 8) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    action.sysUiFlagInfoList.add(new NavBarStoreAction.SysUiFlagInfo(SemWallpaperColorsWrapper.LOCKSCREEN_NIO, z2));
                    NavBarStoreAction.UpdateSysUiFlags updateSysUiFlags = new NavBarStoreAction.UpdateSysUiFlags(action);
                    NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) coverScreenPack.store;
                    navBarStoreImpl.apply(kit, updateSysUiFlags);
                    AccessibilityGestureHandler accessibilityGestureHandler = ((NavigationBar) navBarStoreImpl.getModule(NavigationBar.class, i2)).mNavBarHelper.mAccessibilityGestureHandler;
                    accessibilityGestureHandler.isAttached = false;
                    Log.d(accessibilityGestureHandler.tag, "onNavBarDetached");
                    accessibilityGestureHandler.disposeInputChannel();
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m3 = ColorPack$$ExternalSyntheticOutline0.m(m2, arrayList);
        m3.runeDependency = z;
        m3.bandAidDependency = BandAid.COVER_SCREEN_PACK_GET_NAVBAR_PADDING;
        m3.targetEvents = Collections.singletonList(EventTypeFactory.EventType.GetNavBarLargeCoverScreenPadding.class);
        m3.targetModules = Collections.singletonList(SamsungNavigationBarView.class);
        m3.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m3.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$7$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                CoverScreenPack coverScreenPack = CoverScreenPack.this;
                EventTypeFactory.EventType.GetNavBarLargeCoverScreenPadding getNavBarLargeCoverScreenPadding = (EventTypeFactory.EventType.GetNavBarLargeCoverScreenPadding) kit.event;
                if (kit.manager.isGestureMode()) {
                    int i2 = getNavBarLargeCoverScreenPadding.rotation;
                    if (i2 != 0) {
                        if (i2 != 1) {
                            if (i2 != 2) {
                                if (i2 != 3) {
                                    return new Rect(0, 0, coverScreenPack.sidePadding, 0);
                                }
                                return new Rect(coverScreenPack.gestureSidePadding, 0, 0, 0);
                            }
                            return new Rect(0, 0, 0, 0);
                        }
                        return new Rect(0, 0, coverScreenPack.gestureSidePadding, 0);
                    }
                    return new Rect(0, 0, coverScreenPack.sidePadding, 0);
                }
                int i3 = getNavBarLargeCoverScreenPadding.rotation;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                return new Rect(0, 0, coverScreenPack.sidePadding, 0);
                            }
                            return new Rect(0, 0, 0, coverScreenPack.sidePadding);
                        }
                        return new Rect(coverScreenPack.sidePadding, 0, 0, 0);
                    }
                    return new Rect(0, coverScreenPack.sidePadding, 0, 0);
                }
                return new Rect(0, 0, coverScreenPack.sidePadding, 0);
            }
        };
        Band.Builder m4 = ColorPack$$ExternalSyntheticOutline0.m(m3, arrayList);
        m4.runeDependency = z;
        m4.bandAidDependency = BandAid.COVER_SCREEN_PACK_FOLD_STATE_CHANGED;
        m4.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnFoldStateChanged.class);
        m4.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m4.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m4.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$9$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                CoverScreenPack coverScreenPack = CoverScreenPack.this;
                if (!((EventTypeFactory.EventType.OnFoldStateChanged) kit.event).folded) {
                    ((NavBarStoreImpl) coverScreenPack.store).apply(kit, new NavBarStoreAction.UpdateDefaultNavigationBarStatus(null, 1, null));
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m5 = ColorPack$$ExternalSyntheticOutline0.m(m4, arrayList);
        m5.runeDependency = z;
        m5.bandAidDependency = BandAid.COVER_SCREEN_PACK_GET_DEADZONE_SIZE;
        m5.targetEvents = Collections.singletonList(EventTypeFactory.EventType.GetDeadZoneSize.class);
        m5.targetModules = Collections.singletonList(DeadZone.class);
        m5.priority = 2;
        m5.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$11$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                if (kit.displayId == 1) {
                    boolean z2 = ((EventTypeFactory.EventType.GetDeadZoneSize) kit.event).maxSize;
                    return 0;
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m6 = ColorPack$$ExternalSyntheticOutline0.m(m5, arrayList);
        m6.runeDependency = z;
        m6.bandAidDependency = BandAid.COVER_SCREEN_PACK_COVER_WINDOW_STATE;
        m6.targetEvents = CollectionsKt__CollectionsKt.listOf(EventTypeFactory.EventType.OnNavBarWindowStateShowing.class, EventTypeFactory.EventType.OnNavBarWindowStateHidden.class);
        m6.targetModules = Collections.singletonList(NavBarHelper.class);
        m6.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$13$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                int i2;
                Band.Kit kit = (Band.Kit) obj;
                CoverScreenPack coverScreenPack = CoverScreenPack.this;
                if (kit.displayId == 1) {
                    if (kit.event instanceof EventTypeFactory.EventType.OnNavBarWindowStateShowing) {
                        i2 = 0;
                    } else {
                        i2 = 2;
                    }
                    coverScreenPack.coverWindowState = i2;
                }
                return Unit.INSTANCE;
            }
        };
        m6.afterAction = new Consumer() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$13$2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                final CoverScreenPack coverScreenPack = CoverScreenPack.this;
                if (((Band.Kit) obj).displayId == 0 && ((NavBarStoreImpl) coverScreenPack.store).getNavStateManager(1).isCoverDisplayNavBarEnabled()) {
                    ((Handler) Dependency.get(Dependency.MAIN_HANDLER)).postDelayed(new Runnable() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$13$2$1$1
                        @Override // java.lang.Runnable
                        public final void run() {
                            NavigationBar navigationBar = (NavigationBar) ((NavBarStoreImpl) CoverScreenPack.this.store).getModule(NavigationBar.class, 1);
                            if (navigationBar != null) {
                                navigationBar.updateSystemUiStateFlags();
                            }
                        }
                    }, 250L);
                }
            }
        };
        Band.Builder m7 = ColorPack$$ExternalSyntheticOutline0.m(m6, arrayList);
        m7.runeDependency = z;
        m7.bandAidDependency = BandAid.COVER_SCREEN_PACK_ROTATION_CHANGED;
        m7.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnCoverRotationChanged.class);
        m7.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m7.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m7.afterAction = new Consumer() { // from class: com.android.systemui.navigationbar.bandaid.pack.CoverScreenPack$15$1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) CoverScreenPack.this.store;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.ReinflateNavBar(null, 1, null));
                navBarStoreImpl.apply(kit, new NavBarStoreAction.UpdateNavBarIconAndHints(null, 1, null));
            }
        };
        arrayList.add(m7.build());
    }

    public static final void access$updateLargeCoverNavBarVisibility(CoverScreenPack coverScreenPack, Band.Kit kit, int i) {
        boolean z;
        boolean z2;
        coverScreenPack.getClass();
        NavBarStoreAction.SetNavBarVisibility setNavBarVisibility = new NavBarStoreAction.SetNavBarVisibility(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, i, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4190207, null));
        NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) coverScreenPack.store;
        navBarStoreImpl.apply(kit, setNavBarVisibility);
        NavigationBar navigationBar = (NavigationBar) navBarStoreImpl.getModule(NavigationBar.class, kit.displayId);
        RegionSamplingHelper regionSamplingHelper = navigationBar.mRegionSamplingHelper;
        boolean z3 = false;
        if (i == 8) {
            z = true;
        } else {
            z = false;
        }
        regionSamplingHelper.mIsWindowGone = z;
        regionSamplingHelper.updateSamplingListener();
        if (i == 8) {
            z2 = true;
        } else {
            z2 = false;
        }
        EdgeBackGestureHandler edgeBackGestureHandler = navigationBar.mEdgeBackGestureHandler;
        edgeBackGestureHandler.mIsLargeCoverBackGestureEnabled = z2;
        edgeBackGestureHandler.updateIsEnabled();
        edgeBackGestureHandler.updateCurrentUserResources();
        if (i == 8) {
            z3 = true;
        }
        AccessibilityGestureHandler accessibilityGestureHandler = navigationBar.mNavBarHelper.mAccessibilityGestureHandler;
        accessibilityGestureHandler.isCoverNavBarVisible = !z3;
        Log.d(accessibilityGestureHandler.tag, "coverNavbarVisibilityChanged");
        accessibilityGestureHandler.updateIsEnabled();
    }

    @Override // com.android.systemui.navigationbar.bandaid.BandAidPack
    public final List getBands() {
        return this.allBands;
    }
}
