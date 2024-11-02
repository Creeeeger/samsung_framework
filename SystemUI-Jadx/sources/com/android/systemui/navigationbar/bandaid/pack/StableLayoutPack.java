package com.android.systemui.navigationbar.bandaid.pack;

import android.R;
import android.graphics.Insets;
import com.android.systemui.BasicRune;
import com.android.systemui.navigationbar.NavigationBar;
import com.android.systemui.navigationbar.NavigationBarController;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.navigationbar.SamsungNavigationBarInflaterView;
import com.android.systemui.navigationbar.SamsungNavigationBarView;
import com.android.systemui.navigationbar.bandaid.Band;
import com.android.systemui.navigationbar.bandaid.BandAid;
import com.android.systemui.navigationbar.bandaid.BandAidPack;
import com.android.systemui.navigationbar.interactor.GestureNavigationSettingsInteractor;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreAction;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.plugins.BcSmartspaceDataPlugin;
import com.samsung.systemui.splugins.navigationbar.BarLayoutParams;
import com.samsung.systemui.splugins.navigationbar.LayoutProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class StableLayoutPack implements BandAidPack {
    public final List allBands;
    public final List mExtraKeyList;
    public final List mMainKeyList;

    public StableLayoutPack(final NavBarStore navBarStore) {
        ArrayList arrayList = new ArrayList();
        this.allBands = arrayList;
        SamsungNavigationBarInflaterView.Companion companion = SamsungNavigationBarInflaterView.Companion;
        companion.getClass();
        String str = SamsungNavigationBarInflaterView.leftGestureHint;
        companion.getClass();
        String str2 = SamsungNavigationBarInflaterView.centerGestureHint;
        companion.getClass();
        this.mMainKeyList = CollectionsKt__CollectionsKt.mutableListOf(BcSmartspaceDataPlugin.UI_SURFACE_HOME_SCREEN, "back", "recent", str, str2, SamsungNavigationBarInflaterView.rightGestureHint);
        companion.getClass();
        String str3 = SamsungNavigationBarInflaterView.pin;
        companion.getClass();
        String str4 = SamsungNavigationBarInflaterView.extraBack;
        companion.getClass();
        String str5 = SamsungNavigationBarInflaterView.leftRemoteView;
        companion.getClass();
        this.mExtraKeyList = CollectionsKt__CollectionsKt.mutableListOf("menu_ime", "space", "ime_switcher", "clipboard", "contextual", str3, str4, str5, SamsungNavigationBarInflaterView.rightRemoteView, "left", "right");
        int i = Band.$r8$clinit;
        Band.Builder builder = new Band.Builder();
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        boolean z = BasicRune.NAVBAR_STABLE_LAYOUT;
        builder.runeDependency = z;
        builder.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_NAVBAR_CONFIG_CHANGED;
        builder.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnNavBarConfigChanged.class);
        builder.targetModules = CollectionsKt__CollectionsKt.listOf(NavigationBarController.class, NavigationBar.class);
        builder.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$1$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                Ref$BooleanRef ref$BooleanRef2 = Ref$BooleanRef.this;
                EventTypeFactory.EventType.OnNavBarConfigChanged onNavBarConfigChanged = (EventTypeFactory.EventType.OnNavBarConfigChanged) kit.event;
                ref$BooleanRef2.element = false;
                NavBarStateManager.States states = kit.states;
                if (states.canMove != onNavBarConfigChanged.canMove || states.supportPhoneLayoutProvider != onNavBarConfigChanged.supportPhoneLayoutProvider || states.navigationMode != onNavBarConfigChanged.navigationMode || states.displayChanged) {
                    ref$BooleanRef2.element = true;
                }
                return Unit.INSTANCE;
            }
        };
        builder.afterAction = new Consumer() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$1$2
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                Ref$BooleanRef ref$BooleanRef2 = Ref$BooleanRef.this;
                NavBarStore navBarStore2 = navBarStore;
                if (ref$BooleanRef2.element) {
                    NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) navBarStore2;
                    if (navBarStoreImpl.getModule(NavigationBarView.class, kit.displayId) == null) {
                        kit.manager.states.layoutChangedBeforeAttached = true;
                    } else {
                        navBarStoreImpl.apply(kit, new NavBarStoreAction.ReinflateNavBar(null, 1, null));
                    }
                }
            }
        };
        Band.Builder m = ColorPack$$ExternalSyntheticOutline0.m(builder, arrayList);
        m.runeDependency = BasicRune.NAVBAR_KNOX_MONITOR;
        m.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_NAVBAR_ATTACHED_TO_WINDOW;
        m.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnNavBarAttachedToWindow.class);
        m.targetModules = Collections.singletonList(SamsungNavigationBarView.class);
        m.moduleDependencies = Collections.singletonList(NavigationBarView.class);
        m.priority = 0;
        m.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$3$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                NavBarStore navBarStore2 = NavBarStore.this;
                NavBarStateManager navBarStateManager = kit.manager;
                if (navBarStateManager.states.layoutChangedBeforeAttached) {
                    ((NavBarStoreImpl) navBarStore2).apply(kit, new NavBarStoreAction.ReinflateNavBar(null, 1, null));
                }
                navBarStateManager.states.layoutChangedBeforeAttached = false;
                return Unit.INSTANCE;
            }
        };
        Band.Builder m2 = ColorPack$$ExternalSyntheticOutline0.m(m, arrayList);
        m2.runeDependency = z;
        m2.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_GET_INFLATE_LAYOUT_ID;
        m2.targetEvents = Collections.singletonList(EventTypeFactory.EventType.GetInflateLayoutID.class);
        m2.targetModules = Collections.singletonList(SamsungNavigationBarInflaterView.class);
        m2.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$5$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                boolean z2 = ((EventTypeFactory.EventType.GetInflateLayoutID) kit.event).vertical;
                NavBarStateManager navBarStateManager = kit.manager;
                LayoutProvider layoutProvider = navBarStateManager.states.layoutProvider;
                Intrinsics.checkNotNull(layoutProvider);
                int verticalLayoutID = layoutProvider.getVerticalLayoutID(z2);
                Integer valueOf = Integer.valueOf(verticalLayoutID);
                navBarStateManager.logNavBarStates(valueOf, "getLayoutID(vertical: " + z2 + ")");
                Intrinsics.checkNotNull(valueOf);
                return Integer.valueOf(valueOf.intValue());
            }
        };
        Band.Builder m3 = ColorPack$$ExternalSyntheticOutline0.m(m2, arrayList);
        m3.runeDependency = z;
        m3.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_GET_DEFAULT_LAYOUT;
        m3.targetEvents = Collections.singletonList(EventTypeFactory.EventType.GetDefaultLayout.class);
        m3.targetModules = Collections.singletonList(SamsungNavigationBarInflaterView.class);
        m3.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$7$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NavBarStateManager navBarStateManager = ((Band.Kit) obj).manager;
                if (navBarStateManager.isGestureMode()) {
                    boolean isBottomGestureMode = navBarStateManager.isBottomGestureMode(true);
                    LayoutProvider layoutProvider = navBarStateManager.states.layoutProvider;
                    Intrinsics.checkNotNull(layoutProvider);
                    String gesturalLayout = layoutProvider.getGesturalLayout(isBottomGestureMode, true ^ navBarStateManager.settingsHelper.isNavBarButtonOrderDefault());
                    navBarStateManager.logNavBarStates(gesturalLayout, "getGesturalLayout");
                    Intrinsics.checkNotNull(gesturalLayout);
                    return gesturalLayout;
                }
                return navBarStateManager.getDefaultLayout();
            }
        };
        Band.Builder m4 = ColorPack$$ExternalSyntheticOutline0.m(m3, arrayList);
        m4.runeDependency = z;
        m4.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_INFLATE_NAVBAR;
        m4.targetEvents = Collections.singletonList(EventTypeFactory.EventType.GetInflateButtonWidth.class);
        m4.targetModules = Collections.singletonList(SamsungNavigationBarInflaterView.class);
        m4.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$9$1
            /* JADX WARN: Removed duplicated region for block: B:25:0x00c7  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x00d1  */
            @Override // java.util.function.Function
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object apply(java.lang.Object r8) {
                /*
                    Method dump skipped, instructions count: 322
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$9$1.apply(java.lang.Object):java.lang.Object");
            }
        };
        Band.Builder m5 = ColorPack$$ExternalSyntheticOutline0.m(m4, arrayList);
        m5.runeDependency = z;
        m5.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_GET_BAR_LAYOUT_PARAMS;
        m5.targetEvents = Collections.singletonList(EventTypeFactory.EventType.GetBarLayoutParams.class);
        m5.targetModules = Collections.singletonList(NavigationBar.class);
        m5.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$11$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                int barInsetHeight;
                Band.Kit kit = (Band.Kit) obj;
                EventTypeFactory.EventType.GetBarLayoutParams getBarLayoutParams = (EventTypeFactory.EventType.GetBarLayoutParams) kit.event;
                int i2 = getBarLayoutParams.rotation;
                NavBarStateManager navBarStateManager = kit.manager;
                int barWidth = navBarStateManager.navBarLayoutParams.getBarWidth(navBarStateManager.states.canMove, i2);
                BarLayoutParams barLayoutParams = navBarStateManager.navBarLayoutParams;
                boolean z2 = navBarStateManager.states.canMove;
                int i3 = getBarLayoutParams.rotation;
                int barHeight = barLayoutParams.getBarHeight(z2, i3);
                if (navBarStateManager.shouldShowSUWStyle()) {
                    barInsetHeight = navBarStateManager.context.getResources().getDimensionPixelSize(R.dimen.text_line_spacing_multiplier_material);
                } else {
                    barInsetHeight = navBarStateManager.navBarLayoutParams.getBarInsetHeight(navBarStateManager.states.canMove, i3);
                }
                return new NavBarStoreAction.NavBarLayoutInfo(barWidth, barHeight, barInsetHeight, navBarStateManager.navBarLayoutParams.getBarInsetWidth(navBarStateManager.states.canMove, i3), navBarStateManager.navBarLayoutParams.getBarGravity(navBarStateManager.states.canMove, i3));
            }
        };
        Band.Builder m6 = ColorPack$$ExternalSyntheticOutline0.m(m5, arrayList);
        m6.runeDependency = z;
        m6.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_INFLATE_NAVBAR_SIDE_PADDING;
        m6.targetEvents = Collections.singletonList(EventTypeFactory.EventType.GetNavBarSidePadding.class);
        m6.targetModules = Collections.singletonList(SamsungNavigationBarInflaterView.class);
        m6.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$13$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                EventTypeFactory.EventType.GetNavBarSidePadding getNavBarSidePadding = (EventTypeFactory.EventType.GetNavBarSidePadding) kit.event;
                int i2 = NavBarStateManager.$r8$clinit;
                NavBarStateManager navBarStateManager = kit.manager;
                boolean isSideAndBottomGestureMode = navBarStateManager.isSideAndBottomGestureMode(false);
                boolean z2 = getNavBarSidePadding.landscape;
                LayoutProvider layoutProvider = navBarStateManager.states.layoutProvider;
                Intrinsics.checkNotNull(layoutProvider);
                Integer valueOf = Integer.valueOf(layoutProvider.getSpaceSidePadding(navBarStateManager.states.displaySize, z2, isSideAndBottomGestureMode));
                navBarStateManager.logNavBarStates(valueOf, "getNavBarSidePadding");
                Intrinsics.checkNotNull(valueOf);
                return Integer.valueOf(valueOf.intValue());
            }
        };
        Band.Builder m7 = ColorPack$$ExternalSyntheticOutline0.m(m6, arrayList);
        m7.runeDependency = z;
        m7.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_BAR_LAYOUT_PARAMS_CHANGED;
        m7.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnBarLayoutParamsProviderChanged.class);
        m7.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m7.moduleDependencies = Collections.singletonList(NavigationBar.class);
        m7.afterAction = new Consumer() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$15$1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((NavBarStoreImpl) NavBarStore.this).apply((Band.Kit) obj, new NavBarStoreAction.UpdateNavBarLayoutParams(null, 1, null));
            }
        };
        Band.Builder m8 = ColorPack$$ExternalSyntheticOutline0.m(m7, arrayList);
        m8.runeDependency = z;
        m8.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_BUTTON_TO_HIDE_KEYBOARD_CHANGED;
        m8.targetEvents = Collections.singletonList(EventTypeFactory.EventType.OnButtonToHideKeyboardChanged.class);
        m8.targetModules = Collections.singletonList(NavBarStoreImpl.class);
        m8.moduleDependencies = Collections.singletonList(NavigationBar.class);
        m8.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$17$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                NavBarStoreImpl navBarStoreImpl = (NavBarStoreImpl) NavBarStore.this;
                navBarStoreImpl.apply((Band.Kit) obj, new NavBarStoreAction.UpdateNavBarLayoutParams(null, 1, null));
                return navBarStoreImpl;
            }
        };
        Band.Builder m9 = ColorPack$$ExternalSyntheticOutline0.m(m8, arrayList);
        m9.runeDependency = z;
        m9.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_GET_NAVBAR_INSETS;
        m9.targetEvents = Collections.singletonList(EventTypeFactory.EventType.GetNavBarInsets.class);
        m9.targetModules = Collections.singletonList(NavigationBar.class);
        m9.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$19$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Insets insets;
                Band.Kit kit = (Band.Kit) obj;
                EventTypeFactory.EventType.GetNavBarInsets getNavBarInsets = (EventTypeFactory.EventType.GetNavBarInsets) kit.event;
                int i2 = getNavBarInsets.insetHeight;
                if (i2 != -1) {
                    insets = Insets.of(0, 0, 0, i2);
                } else {
                    insets = null;
                }
                if (getNavBarInsets.insetWidth != -1 && kit.manager.isBottomGestureMode(false)) {
                    int i3 = getNavBarInsets.rotation;
                    if (i3 == 1) {
                        return Insets.of(0, 0, getNavBarInsets.insetWidth, 0);
                    }
                    if (i3 == 3) {
                        return Insets.of(getNavBarInsets.insetWidth, 0, 0, 0);
                    }
                    return insets;
                }
                return insets;
            }
        };
        Band.Builder m10 = ColorPack$$ExternalSyntheticOutline0.m(m9, arrayList);
        m10.runeDependency = z;
        m10.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_GET_IME_INSETS;
        m10.targetEvents = Collections.singletonList(EventTypeFactory.EventType.GetImeInsets.class);
        m10.targetModules = Collections.singletonList(NavigationBar.class);
        m10.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$21$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Band.Kit kit = (Band.Kit) obj;
                EventTypeFactory.EventType.GetImeInsets getImeInsets = (EventTypeFactory.EventType.GetImeInsets) kit.event;
                if (!kit.manager.canShowKeyboardButtonForRotation(getImeInsets.rotation)) {
                    if (!getImeInsets.canMove) {
                        return Insets.of(0, 0, 0, getImeInsets.insetHeight);
                    }
                    int i2 = getImeInsets.rotation;
                    if (i2 != -1 && i2 != 0) {
                        if (i2 != 1) {
                            if (i2 != 2) {
                                if (i2 == 3) {
                                    return Insets.of(getImeInsets.insetWidth, 0, 0, 0);
                                }
                            }
                        } else {
                            return Insets.of(0, 0, getImeInsets.insetWidth, 0);
                        }
                    }
                    return Insets.of(0, 0, 0, getImeInsets.insetHeight);
                }
                return null;
            }
        };
        arrayList.add(m10.build());
        int i2 = Band.$r8$clinit;
        Band.Builder builder2 = new Band.Builder();
        builder2.runeDependency = z;
        builder2.bandAidDependency = BandAid.STABLE_LAYOUT_PACK_GET_MANDATORY_INSETS;
        builder2.targetEvents = Collections.singletonList(EventTypeFactory.EventType.GetMandatoryInsets.class);
        builder2.targetModules = Collections.singletonList(NavigationBar.class);
        builder2.patchAction = new Function() { // from class: com.android.systemui.navigationbar.bandaid.pack.StableLayoutPack$23$1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                int dimensionPixelSize;
                Band.Kit kit = (Band.Kit) obj;
                EventTypeFactory.EventType.GetMandatoryInsets getMandatoryInsets = (EventTypeFactory.EventType.GetMandatoryInsets) kit.event;
                NavBarStateManager navBarStateManager = kit.manager;
                GestureNavigationSettingsInteractor gestureNavigationSettingsInteractor = (GestureNavigationSettingsInteractor) navBarStateManager.interactorFactory.get(GestureNavigationSettingsInteractor.class);
                if (gestureNavigationSettingsInteractor != null) {
                    dimensionPixelSize = gestureNavigationSettingsInteractor.bottomInsets;
                } else {
                    dimensionPixelSize = navBarStateManager.context.getResources().getDimensionPixelSize(R.dimen.text_size_button_material);
                }
                if (navBarStateManager.isGestureMode()) {
                    if (!getMandatoryInsets.canMove) {
                        return Insets.of(0, 0, 0, dimensionPixelSize);
                    }
                    int i3 = getMandatoryInsets.rotation;
                    if (i3 != -1 && i3 != 0) {
                        if (i3 != 1) {
                            if (i3 != 2) {
                                if (i3 == 3) {
                                    return Insets.of(dimensionPixelSize, 0, 0, 0);
                                }
                            }
                        } else {
                            return Insets.of(0, 0, dimensionPixelSize, 0);
                        }
                    }
                    return Insets.of(0, 0, 0, dimensionPixelSize);
                }
                return null;
            }
        };
        arrayList.add(builder2.build());
    }

    @Override // com.android.systemui.navigationbar.bandaid.BandAidPack
    public final List getBands() {
        return this.allBands;
    }
}
