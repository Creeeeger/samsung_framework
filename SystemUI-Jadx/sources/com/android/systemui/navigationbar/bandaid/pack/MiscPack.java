package com.android.systemui.navigationbar.bandaid.pack;

import com.android.systemui.BasicRune;
import com.android.systemui.Prefs;
import com.android.systemui.navigationbar.NavigationBar;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.navigationbar.NavigationModeController;
import com.android.systemui.navigationbar.bandaid.Band;
import com.android.systemui.navigationbar.bandaid.BandAid;
import com.android.systemui.navigationbar.bandaid.BandAidPack;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreAction;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.navigationbar.util.NavBarTipPopupUtil;
import com.samsung.android.desktopmode.SemDesktopModeState;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class MiscPack implements BandAidPack {
    public final List allBands;

    public MiscPack(final NavBarStore navBarStore) {
        ArrayList arrayList = new ArrayList();
        this.allBands = arrayList;
        int i = Band.$r8$clinit;
        Band.Builder builder = new Band.Builder();
        builder.runeDependency = BasicRune.NAVBAR_DESKTOP;
        builder.bandAidDependency = BandAid.MISC_PACK_CONTROL_NAVBAR_IN_DEX_STANDALONE;
        builder.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnDesktopModeChanged.class);
        builder.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        builder.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        builder.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.MiscPack$1$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Integer num;
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                SemDesktopModeState semDesktopModeState = ((EventTypeFactory.EventType.OnDesktopModeChanged) kit.event).state;
                if (semDesktopModeState != null && semDesktopModeState.getDisplayType() == 101) {
                    int state = semDesktopModeState.getState();
                    int enabled = semDesktopModeState.getEnabled();
                    if (state == 50 && enabled == 4) {
                        num = 8;
                    } else if (state == 50 && enabled == 2) {
                        num = 0;
                    } else if (state == 0 && enabled == 4) {
                        num = 8;
                    } else {
                        num = null;
                    }
                    if (num != null) {
                        ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.SetNavBarVisibility(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, num.intValue(), false, null, null, false, false, null, 0.0f, 0.0f, 0, 4190207, null)));
                    }
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m = ColorPack$$ExternalSyntheticOutline0.m(builder, arrayList);
        m.runeDependency = BasicRune.NAVBAR_NEW_DEX;
        m.bandAidDependency = BandAid.MISC_PACK_CONTROL_NAVBAR_IN_NEW_DEX_MODE;
        m.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnNewDexModeChanged.class);
        m.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.MiscPack$3$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                int i2;
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                if (((EventTypeFactory.EventType.OnNewDexModeChanged) kit.event).enabled) {
                    i2 = 8;
                } else {
                    i2 = 0;
                }
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) navBarStore2;
                navBarStoreImpl.apply(kit, new NavBarStoreAction.SetNavBarVisibility(new NavBarStoreAction.Action(null, null, null, null, false, 0.0f, null, false, 0.0f, 0, false, false, i2, false, null, null, false, false, null, 0.0f, 0.0f, 0, 4190207, null)));
                return navBarStoreImpl;
            }
        };
        Band.Builder m2 = ColorPack$$ExternalSyntheticOutline0.m(m, arrayList);
        m2.bandAidDependency = BandAid.MISC_PACK_SHOW_A11Y_SWIPE_UP_TIP_POPUP;
        m2.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnShowA11YSwipeUpTipPopup.class);
        m2.targetModules = Collections.singletonList(NavigationBar.class);
        m2.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m2.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.MiscPack$5$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                boolean z;
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                NavBarStateManager navBarStateManager = kit.manager;
                boolean z2 = false;
                if (navBarStateManager.isGestureMode()) {
                    NavBarTipPopupUtil.INSTANCE.getClass();
                    if (Prefs.getInt(navBarStateManager.context, "NavigationBarAccessibilityShortcutTipCount", 0) < 1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        z2 = true;
                    }
                }
                Boolean valueOf = Boolean.valueOf(z2);
                navBarStateManager.logNavBarStates(valueOf, "canShowA11ySwipeUpTipPopup");
                Intrinsics.checkNotNull(valueOf);
                if (valueOf.booleanValue()) {
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.ShowA11ySwipeUpTipPopup(null, 1, null));
                }
                return Unit.INSTANCE;
            }
        };
        Band.Builder m3 = ColorPack$$ExternalSyntheticOutline0.m(m2, arrayList);
        m3.bandAidDependency = BandAid.MISC_PACK_UPDATE_A11Y_STATE_ON_USER_SWITCHED;
        m3.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnUserSwitched.class);
        m3.targetModules = Collections.singletonList(NavigationModeController.class);
        m3.moduleDependencies = Collections.singletonList(NavigationBar.class);
        m3.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.MiscPack$7$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) NavBarStore.this;
                navBarStoreImpl.apply((Band.Kit) obj, new NavBarStoreAction.UpdateA11YStatus(null, 1, null));
                return navBarStoreImpl;
            }
        };
        arrayList.add(m3.build());
    }

    @Override // com.android.systemui.navigationbar.bandaid.BandAidPack
    public final List getBands() {
        return this.allBands;
    }
}
