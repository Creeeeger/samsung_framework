package com.android.systemui.navigationbar.store;

import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RemoteViews;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.model.SysUiState;
import com.android.systemui.navigationbar.BasicRuneWrapper;
import com.android.systemui.navigationbar.NavigationBar;
import com.android.systemui.navigationbar.NavigationBarInflaterView;
import com.android.systemui.navigationbar.NavigationBarTransitions;
import com.android.systemui.navigationbar.NavigationBarView;
import com.android.systemui.navigationbar.SamsungNavigationBarProxy;
import com.android.systemui.navigationbar.SamsungNavigationBarSetupWizardView;
import com.android.systemui.navigationbar.TaskbarDelegate;
import com.android.systemui.navigationbar.bandaid.Band;
import com.android.systemui.navigationbar.bandaid.BandAid;
import com.android.systemui.navigationbar.bandaid.BandAidPack;
import com.android.systemui.navigationbar.bandaid.BandAidPackFactoryBase;
import com.android.systemui.navigationbar.buttons.ButtonDispatcher;
import com.android.systemui.navigationbar.buttons.KeyButtonRipple;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler;
import com.android.systemui.navigationbar.gestural.GestureHintAnimator;
import com.android.systemui.navigationbar.gestural.GestureHintGroup;
import com.android.systemui.navigationbar.interactor.DesktopModeInteractor;
import com.android.systemui.navigationbar.interactor.DesktopModeInteractor$addCallback$2;
import com.android.systemui.navigationbar.interactor.DesktopModeInteractor$addCallback$5;
import com.android.systemui.navigationbar.interactor.InteractorFactory;
import com.android.systemui.navigationbar.interactor.LegacyDesktopModeInteractor;
import com.android.systemui.navigationbar.interactor.LegacyDesktopModeInteractor$addCallback$2;
import com.android.systemui.navigationbar.plugin.PluginBarInteractionManager;
import com.android.systemui.navigationbar.plugin.SamsungPluginTaskBar;
import com.android.systemui.navigationbar.remoteview.NavBarRemoteView;
import com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStoreAction;
import com.android.systemui.navigationbar.util.NavBarReflectUtil;
import com.android.systemui.navigationbar.util.NavigationModeUtil;
import com.android.systemui.navigationbar.util.OneHandModeUtil;
import com.android.systemui.navigationbar.util.StoreLogUtil;
import com.android.systemui.shared.navigationbar.RegionSamplingHelper;
import com.android.systemui.shared.rotation.RotationButtonController;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.LightBarController;
import com.android.systemui.util.DesktopManager;
import com.android.systemui.util.DesktopManagerImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.desktopmode.SemDesktopModeState;
import com.samsung.android.desktopsystemui.sharedlib.keyguard.SemWallpaperColorsWrapper;
import com.samsung.systemui.splugins.SPluginListener;
import com.samsung.systemui.splugins.SPluginManager;
import com.samsung.systemui.splugins.navigationbar.BarLayoutParams;
import com.samsung.systemui.splugins.navigationbar.ColorSetting;
import com.samsung.systemui.splugins.navigationbar.ExtendableBar;
import com.samsung.systemui.splugins.navigationbar.LayoutProviderContainer;
import com.samsung.systemui.splugins.navigationbar.PluginNavigationBar;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarStoreImpl implements NavBarStore {
    public final BandAidPackFactoryBase bandAidPackFactory;
    public final DisplayManager displayManager;
    public boolean handleEventLoggingEnabled;
    public final GestureHintAnimator.Factory hintAnimatorFactory;
    public final InteractorFactory interactorFactory;
    public final LayoutProviderContainer layoutProviderContainer;
    public final StoreLogUtil logWrapper;
    public int loggingDepth;
    public final Context mainContext;
    public final SamsungNavigationBarProxy navBarProxy;
    public final NavBarRemoteViewManager navBarRemoteViewManager;
    public final HashMap navDependencies = new HashMap();
    public final HashMap navStateManager = new HashMap();
    public List packs = new ArrayList();
    public final PluginBarInteractionManager pluginBarInteractionManager;
    public final SettingsHelper settingsHelper;
    public final SysUiState sysUiFlagContainer;
    public TaskbarDelegate taskbarDelegate;

    public NavBarStoreImpl(Context context, DisplayManager displayManager, SettingsHelper settingsHelper, LayoutProviderContainer layoutProviderContainer, NavBarRemoteViewManager navBarRemoteViewManager, BandAidPackFactoryBase bandAidPackFactoryBase, InteractorFactory interactorFactory, StoreLogUtil storeLogUtil, GestureHintAnimator.Factory factory, SysUiState sysUiState) {
        this.mainContext = context;
        this.displayManager = displayManager;
        this.settingsHelper = settingsHelper;
        this.layoutProviderContainer = layoutProviderContainer;
        this.navBarRemoteViewManager = navBarRemoteViewManager;
        this.bandAidPackFactory = bandAidPackFactoryBase;
        this.interactorFactory = interactorFactory;
        this.logWrapper = storeLogUtil;
        this.hintAnimatorFactory = factory;
        this.sysUiFlagContainer = sysUiState;
        PluginBarInteractionManager pluginBarInteractionManager = new PluginBarInteractionManager(context, this);
        this.pluginBarInteractionManager = pluginBarInteractionManager;
        SamsungNavigationBarProxy.Companion.getClass();
        SamsungNavigationBarProxy samsungNavigationBarProxy = SamsungNavigationBarProxy.INSTANCE;
        if (samsungNavigationBarProxy == null) {
            samsungNavigationBarProxy = new SamsungNavigationBarProxy();
            SamsungNavigationBarProxy.INSTANCE = samsungNavigationBarProxy;
        }
        this.navBarProxy = samsungNavigationBarProxy;
        initDisplayDependenciesIfNeeded(context.getDisplayId(), context);
        BasicRuneWrapper.NAVBAR_ENABLED = BasicRune.NAVBAR_ENABLED;
        BasicRuneWrapper.NAVBAR_SUPPORT_LARGE_COVER_SCREEN = BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN;
        ((SPluginManager) Dependency.get(SPluginManager.class)).addPluginListener((SPluginListener) pluginBarInteractionManager.pluginListener, PluginNavigationBar.class, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v100 */
    /* JADX WARN: Type inference failed for: r0v89 */
    /* JADX WARN: Type inference failed for: r0v90 */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Object, com.android.systemui.navigationbar.store.NavBarStateManager] */
    /* JADX WARN: Type inference failed for: r13v41 */
    /* JADX WARN: Type inference failed for: r13v42 */
    /* JADX WARN: Type inference failed for: r13v45 */
    /* JADX WARN: Type inference failed for: r13v46 */
    /* JADX WARN: Type inference failed for: r13v56 */
    /* JADX WARN: Type inference failed for: r13v59 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public final NavBarStoreImpl apply(Band.Kit kit, NavBarStoreAction navBarStoreAction) {
        RotationButtonController rotationButtonController;
        ?? r13;
        ?? r132;
        TaskbarDelegate taskbarDelegate;
        EdgeBackGestureHandler edgeBackGestureHandler;
        NavigationBar navigationBar;
        EdgeBackGestureHandler edgeBackGestureHandler2;
        int i;
        ?? r0;
        boolean z = this.handleEventLoggingEnabled;
        int i2 = kit.displayId;
        StoreLogUtil storeLogUtil = this.logWrapper;
        if (z) {
            storeLogUtil.printLog(this.loggingDepth, "apply(" + i2 + ") " + navBarStoreAction.getClass().getSimpleName());
        }
        if (navBarStoreAction instanceof NavBarStoreAction.UpdateNavBarIconAndHints) {
            ((NavigationBarView) getModule(NavigationBarView.class, i2)).updateIconsAndHints();
        } else if (navBarStoreAction instanceof NavBarStoreAction.ReevaluateNavBar) {
            ((LightBarController) getModule(LightBarController.class, i2)).reevaluate();
        } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateNavBarOpaqueColor) {
            NavigationBarTransitions navigationBarTransitions = (NavigationBarTransitions) getModule(NavigationBarTransitions.class, i2);
            Object obj = this.interactorFactory.get(ColorSetting.class);
            Intrinsics.checkNotNull(obj);
            navigationBarTransitions.mBarBackground.updateOpaqueColor(((ColorSetting) obj).getNavigationBarColor());
        } else if (navBarStoreAction instanceof NavBarStoreAction.ReinflateNavBar) {
            ((NavigationBarView) getModule(NavigationBarView.class, i2)).reInflateNavBarLayout();
        } else {
            boolean z2 = navBarStoreAction instanceof NavBarStoreAction.NavBarIconMarquee;
            NavBarStateManager.States states = kit.states;
            if (z2) {
                Point point = states.displaySize;
                ((NavigationBarView) getModule(NavigationBarView.class, i2)).marqueeNavigationBarIcon(point.x, point.y);
            } else if (navBarStoreAction instanceof NavBarStoreAction.InvalidateRemoteView) {
                ((NavigationBarView) getModule(NavigationBarView.class, i2)).updateRemoteViewContainer();
            } else {
                int i3 = 1;
                ?? r5 = 1;
                ?? r52 = 1;
                ?? r53 = 1;
                boolean z3 = true;
                boolean z4 = true;
                i3 = 1;
                int i4 = 4;
                if (navBarStoreAction instanceof NavBarStoreAction.UpdateRemoteViewContainer) {
                    int i5 = states.rotation;
                    NavBarRemoteViewManager navBarRemoteViewManager = (NavBarRemoteViewManager) getModule(NavBarRemoteViewManager.class, i2);
                    NavBarStoreAction.Action action = ((NavBarStoreAction.UpdateRemoteViewContainer) navBarStoreAction).action;
                    navBarRemoteViewManager.updateRemoteViewContainer(i5, action.leftRemoteViewContainer, action.rightRemoteViewContainer, i2);
                    if (action.contextualButtonVisible) {
                        if (!((NavBarStoreImpl) navBarRemoteViewManager.getNavBarStore()).getNavStateManager(i2).states.canMove) {
                            LinearLayout linearLayout = navBarRemoteViewManager.rightContainer;
                            if (linearLayout != null) {
                                linearLayout.setVisibility(4);
                            }
                        } else if (i5 == 1) {
                            LinearLayout linearLayout2 = navBarRemoteViewManager.leftContainer;
                            if (linearLayout2 != null) {
                                linearLayout2.setVisibility(4);
                            }
                        } else {
                            LinearLayout linearLayout3 = navBarRemoteViewManager.rightContainer;
                            if (linearLayout3 != null) {
                                linearLayout3.setVisibility(4);
                            }
                        }
                    }
                } else {
                    int i6 = 0;
                    if (navBarStoreAction instanceof NavBarStoreAction.UpdateRemoteViewDarkIntensity) {
                        NavBarRemoteViewManager navBarRemoteViewManager2 = (NavBarRemoteViewManager) getModule(NavBarRemoteViewManager.class, i2);
                        float f = ((NavBarStoreAction.UpdateRemoteViewDarkIntensity) navBarStoreAction).action.remoteViewDarkIntensity;
                        if (navBarRemoteViewManager2.darkIntensity != f) {
                            r5 = 0;
                        }
                        if (r5 == 0) {
                            navBarRemoteViewManager2.darkIntensity = f;
                            Iterator it = navBarRemoteViewManager2.leftViewList.iterator();
                            while (it.hasNext()) {
                                navBarRemoteViewManager2.applyTint(((NavBarRemoteView) it.next()).view);
                            }
                            Iterator it2 = navBarRemoteViewManager2.rightViewList.iterator();
                            while (it2.hasNext()) {
                                navBarRemoteViewManager2.applyTint(((NavBarRemoteView) it2.next()).view);
                            }
                        }
                    } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateRemoteViewShortcut) {
                        NavBarRemoteViewManager navBarRemoteViewManager3 = (NavBarRemoteViewManager) getModule(NavBarRemoteViewManager.class, i2);
                        NavBarStoreAction.RemoteViewShortcut remoteViewShortcut = ((NavBarStoreAction.UpdateRemoteViewShortcut) navBarStoreAction).action.remoteViewShortcut;
                        navBarRemoteViewManager3.getClass();
                        String str = remoteViewShortcut.requestClass;
                        int i7 = remoteViewShortcut.position;
                        RemoteViews remoteViews = remoteViewShortcut.remoteViews;
                        if (remoteViews != null) {
                            NavBarRemoteView navBarRemoteView = new NavBarRemoteView(navBarRemoteViewManager3.context, str, remoteViews, remoteViewShortcut.priority);
                            NavBarStateManager navStateManager = ((NavBarStoreImpl) navBarRemoteViewManager3.getNavBarStore()).getNavStateManager(i2);
                            String str2 = navBarRemoteView.requestClass;
                            navBarRemoteViewManager3.removeRemoteView(i7, str2);
                            if (str2 != null && StringsKt__StringsKt.contains(str2, "honeyboard", false)) {
                                r0 = true;
                            } else {
                                r0 = false;
                            }
                            if (r0 != false) {
                                if (BasicRune.NAVBAR_MULTI_MODAL_ICON_LARGE_COVER && i2 == 1 && !navBarRemoteViewManager3.settingsHelper.isNavBarButtonOrderDefault() && ((navStateManager.states.rotation == 0 && !navStateManager.isSideAndBottomGestureMode(false)) || (navStateManager.states.rotation != 0 && !navStateManager.isGestureMode()))) {
                                    i6 = 1;
                                }
                                navBarRemoteViewManager3.showInGestureMode = true;
                                navBarRemoteViewManager3.adaptivePosition = i6;
                                i7 = i6;
                            }
                            if (i7 != 0) {
                                if (i7 == 1) {
                                    navBarRemoteViewManager3.rightViewList.add(navBarRemoteView);
                                }
                            } else {
                                navBarRemoteViewManager3.leftViewList.add(navBarRemoteView);
                            }
                            navBarRemoteViewManager3.applyTint(navBarRemoteView.view);
                        } else {
                            navBarRemoteViewManager3.removeRemoteView(i7, str);
                        }
                    } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateNavBarNormalStyle) {
                        NavigationBarInflaterView navigationBarInflaterView = (NavigationBarInflaterView) ((NavigationBarView) getModule(NavigationBarView.class, i2)).findViewById(R.id.navigation_inflater);
                        if (navigationBarInflaterView.getVisibility() != 0) {
                            getSUWNavigationBarView(i2).setVisibility(8);
                            navigationBarInflaterView.setVisibility(0);
                            ((NavigationBar) getModule(NavigationBar.class, 0)).updateNavBarLayoutParams();
                        }
                    } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateNavBarSUWStyle) {
                        SamsungNavigationBarSetupWizardView sUWNavigationBarView = getSUWNavigationBarView(i2);
                        if (sUWNavigationBarView.getVisibility() != 0) {
                            ((NavigationBarInflaterView) ((NavigationBarView) getModule(NavigationBarView.class, i2)).findViewById(R.id.navigation_inflater)).setVisibility(8);
                            sUWNavigationBarView.setVisibility(0);
                            ((NavigationBar) getModule(NavigationBar.class, 0)).updateNavBarLayoutParams();
                        }
                    } else {
                        SamsungPluginTaskBar samsungPluginTaskBar = null;
                        SamsungNavigationBarSetupWizardView.NavigationBarSetupWizardButton navigationBarSetupWizardButton = null;
                        KeyButtonRipple keyButtonRipple = null;
                        SamsungNavigationBarSetupWizardView.NavigationBarSetupWizardButton navigationBarSetupWizardButton2 = null;
                        SamsungNavigationBarSetupWizardView.NavigationBarSetupWizardButton navigationBarSetupWizardButton3 = null;
                        SamsungPluginTaskBar samsungPluginTaskBar2 = null;
                        if (navBarStoreAction instanceof NavBarStoreAction.UpdateSUWDisabled) {
                            SamsungNavigationBarSetupWizardView sUWNavigationBarView2 = getSUWNavigationBarView(i2);
                            boolean z5 = ((NavBarStoreAction.UpdateSUWDisabled) navBarStoreAction).action.disableSUWBack;
                            if ((sUWNavigationBarView2.hints & 1) == 0) {
                                r52 = 0;
                            }
                            SamsungNavigationBarSetupWizardView.NavigationBarSetupWizardButton navigationBarSetupWizardButton4 = sUWNavigationBarView2.prevBtnLayout;
                            if (navigationBarSetupWizardButton4 != null) {
                                navigationBarSetupWizardButton = navigationBarSetupWizardButton4;
                            }
                            if (!z5 && r52 == 0) {
                                i4 = 0;
                            }
                            navigationBarSetupWizardButton.setVisibility(i4);
                        } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateSUWDarkIntensity) {
                            SamsungNavigationBarSetupWizardView sUWNavigationBarView3 = getSUWNavigationBarView(i2);
                            float f2 = ((NavBarStoreAction.UpdateSUWDarkIntensity) navBarStoreAction).action.darkIntensity;
                            int intValue = ((Integer) ArgbEvaluator.getInstance().evaluate(f2, Integer.valueOf(sUWNavigationBarView3.getContext().getColor(R.color.navbar_icon_color_light)), Integer.valueOf(sUWNavigationBarView3.getContext().getColor(R.color.navbar_icon_color_dark)))).intValue();
                            ImageView imageView = sUWNavigationBarView3.prevBtn;
                            if (imageView == null) {
                                imageView = null;
                            }
                            imageView.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                            ImageView imageView2 = sUWNavigationBarView3.imeBtn;
                            if (imageView2 == null) {
                                imageView2 = null;
                            }
                            imageView2.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                            ImageView imageView3 = sUWNavigationBarView3.a11yBtn;
                            if (imageView3 == null) {
                                imageView3 = null;
                            }
                            imageView3.setColorFilter(new PorterDuffColorFilter(intValue, PorterDuff.Mode.SRC_ATOP));
                            KeyButtonRipple keyButtonRipple2 = sUWNavigationBarView3.backRipple;
                            if (keyButtonRipple2 == null) {
                                keyButtonRipple2 = null;
                            }
                            keyButtonRipple2.setDarkIntensity(f2);
                            KeyButtonRipple keyButtonRipple3 = sUWNavigationBarView3.backAltRipple;
                            if (keyButtonRipple3 == null) {
                                keyButtonRipple3 = null;
                            }
                            keyButtonRipple3.setDarkIntensity(f2);
                            KeyButtonRipple keyButtonRipple4 = sUWNavigationBarView3.a11yRipple;
                            if (keyButtonRipple4 != null) {
                                keyButtonRipple = keyButtonRipple4;
                            }
                            keyButtonRipple.setDarkIntensity(f2);
                        } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateSUWIconHints) {
                            SamsungNavigationBarSetupWizardView sUWNavigationBarView4 = getSUWNavigationBarView(i2);
                            int i8 = ((NavBarStoreAction.UpdateSUWIconHints) navBarStoreAction).action.navBarIconHints;
                            sUWNavigationBarView4.hints = i8;
                            if ((i8 & 1) == 0) {
                                r53 = 0;
                            }
                            SamsungNavigationBarSetupWizardView.NavigationBarSetupWizardButton navigationBarSetupWizardButton5 = sUWNavigationBarView4.imeBtnLayout;
                            if (navigationBarSetupWizardButton5 == null) {
                                navigationBarSetupWizardButton5 = null;
                            }
                            if (r53 != 0) {
                                i = 0;
                            } else {
                                i = 4;
                            }
                            navigationBarSetupWizardButton5.setVisibility(i);
                            SamsungNavigationBarSetupWizardView.NavigationBarSetupWizardButton navigationBarSetupWizardButton6 = sUWNavigationBarView4.prevBtnLayout;
                            if (navigationBarSetupWizardButton6 != null) {
                                navigationBarSetupWizardButton2 = navigationBarSetupWizardButton6;
                            }
                            if (r53 == 0) {
                                i4 = 0;
                            }
                            navigationBarSetupWizardButton2.setVisibility(i4);
                        } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateSUWA11yIcon) {
                            SamsungNavigationBarSetupWizardView sUWNavigationBarView5 = getSUWNavigationBarView(i2);
                            NavBarStoreAction.Action action2 = ((NavBarStoreAction.UpdateSUWA11yIcon) navBarStoreAction).action;
                            boolean z6 = action2.a11yClickable;
                            SamsungNavigationBarSetupWizardView.NavigationBarSetupWizardButton navigationBarSetupWizardButton7 = sUWNavigationBarView5.a11yLayout;
                            if (navigationBarSetupWizardButton7 == null) {
                                navigationBarSetupWizardButton7 = null;
                            }
                            if (z6) {
                                i4 = 0;
                            }
                            navigationBarSetupWizardButton7.setVisibility(i4);
                            SamsungNavigationBarSetupWizardView.NavigationBarSetupWizardButton navigationBarSetupWizardButton8 = sUWNavigationBarView5.a11yLayout;
                            if (navigationBarSetupWizardButton8 != null) {
                                navigationBarSetupWizardButton3 = navigationBarSetupWizardButton8;
                            }
                            navigationBarSetupWizardButton3.setLongClickable(action2.a11yLongClickable);
                        } else {
                            boolean z7 = navBarStoreAction instanceof NavBarStoreAction.UpdateNavBarGoneStateFlag;
                            SysUiState sysUiState = this.sysUiFlagContainer;
                            if (z7) {
                                if (((NavBarStoreAction.UpdateNavBarGoneStateFlag) navBarStoreAction).action.navBarVisibility != 8) {
                                    z3 = false;
                                }
                                sysUiState.setFlag(SemWallpaperColorsWrapper.LOCKSCREEN_NIO, z3);
                                sysUiState.commitUpdate(i2);
                            } else if (navBarStoreAction instanceof NavBarStoreAction.SetNavBarVisibility) {
                                final int i9 = ((NavBarStoreAction.SetNavBarVisibility) navBarStoreAction).action.navBarVisibility;
                                if (this.handleEventLoggingEnabled) {
                                    storeLogUtil.printLog(this.loggingDepth, "Visibility : " + i9);
                                }
                                final NavigationBarView navigationBarView = (NavigationBarView) getModule(NavigationBarView.class, i2);
                                ((Handler) Dependency.get(Dependency.MAIN_HANDLER)).post(new Runnable() { // from class: com.android.systemui.navigationbar.store.NavBarStoreImpl$apply$1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        NavigationBarView navigationBarView2 = NavigationBarView.this;
                                        if (navigationBarView2 != null) {
                                            int i10 = i9;
                                            navigationBarView2.setVisibility(i10);
                                            View rootView = navigationBarView2.getRootView();
                                            if (rootView != null) {
                                                rootView.setVisibility(i10);
                                            }
                                        }
                                    }
                                });
                            } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateEdgeBackGestureDisabledPolicy) {
                                boolean z8 = ((NavBarStoreAction.UpdateEdgeBackGestureDisabledPolicy) navBarStoreAction).action.edgeBackGestureDisabled;
                                if (this.handleEventLoggingEnabled) {
                                    storeLogUtil.printLog(this.loggingDepth, "disabled : " + z8);
                                }
                                if (i2 == 0 && (navigationBar = (NavigationBar) getModule(NavigationBar.class, i2)) != null && (edgeBackGestureHandler2 = navigationBar.mEdgeBackGestureHandler) != null) {
                                    edgeBackGestureHandler2.mDisabledByPolicy = z8;
                                }
                                if (BasicRune.NAVBAR_SUPPORT_TASKBAR && (taskbarDelegate = (TaskbarDelegate) getModule(TaskbarDelegate.class, i2)) != null && (edgeBackGestureHandler = taskbarDelegate.mEdgeBackGestureHandler) != null) {
                                    edgeBackGestureHandler.mDisabledByPolicy = z8;
                                }
                            } else if (navBarStoreAction instanceof NavBarStoreAction.SetGestureHintViewGroup) {
                                NavigationBarView navigationBarView2 = (NavigationBarView) getModule(NavigationBarView.class, i2);
                                GestureHintAnimator gestureHintAnimator = (GestureHintAnimator) getModule(GestureHintAnimator.class, i2);
                                ButtonDispatcher homeHandle = navigationBarView2.getHomeHandle();
                                GestureHintGroup hintGroup = navigationBarView2.getHintGroup();
                                gestureHintAnimator.homeHandle = homeHandle;
                                gestureHintAnimator.gestureHintGroup = hintGroup;
                            } else {
                                boolean z9 = navBarStoreAction instanceof NavBarStoreAction.UpdateGestureHintVisibility;
                                ?? r133 = kit.manager;
                                if (z9) {
                                    if (!r133.isGestureHintEnabled() || r133.states.sPayShowing) {
                                        z4 = false;
                                    }
                                    Boolean valueOf = Boolean.valueOf(z4);
                                    r133.logNavBarStates(valueOf, "canShowGestureHint");
                                    Intrinsics.checkNotNull(valueOf);
                                    boolean booleanValue = valueOf.booleanValue();
                                    NavBarStateManager.States states2 = r133.states;
                                    ((NavigationBarView) getModule(NavigationBarView.class, i2)).updateHintVisibility(states2.recentVisible & booleanValue, states2.homeVisible & booleanValue, states2.backVisible & booleanValue);
                                } else if (navBarStoreAction instanceof NavBarStoreAction.ResetHintVI) {
                                    final GestureHintAnimator gestureHintAnimator2 = (GestureHintAnimator) getModule(GestureHintAnimator.class, i2);
                                    gestureHintAnimator2.handler.post(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.GestureHintAnimator$reset$1
                                        /* JADX WARN: Removed duplicated region for block: B:26:0x006f  */
                                        @Override // java.lang.Runnable
                                        /*
                                            Code decompiled incorrectly, please refer to instructions dump.
                                            To view partially-correct code enable 'Show inconsistent code' option in preferences
                                        */
                                        public final void run() {
                                            /*
                                                r15 = this;
                                                com.android.systemui.navigationbar.gestural.GestureHintAnimator r15 = com.android.systemui.navigationbar.gestural.GestureHintAnimator.this
                                                java.util.List r0 = r15.hintList
                                                java.util.Iterator r0 = r0.iterator()
                                            L8:
                                                boolean r1 = r0.hasNext()
                                                if (r1 == 0) goto Le3
                                                java.lang.Object r1 = r0.next()
                                                java.lang.Number r1 = (java.lang.Number) r1
                                                int r1 = r1.intValue()
                                                android.view.View r2 = r15.getHintView(r1)
                                                r3 = 0
                                                if (r2 == 0) goto L24
                                                android.view.ViewPropertyAnimator r4 = r2.animate()
                                                goto L25
                                            L24:
                                                r4 = r3
                                            L25:
                                                r5 = 1065353216(0x3f800000, float:1.0)
                                                if (r4 == 0) goto L2c
                                                r2.setAlpha(r5)
                                            L2c:
                                                android.view.View r1 = r15.getHintView(r1)
                                                android.view.ViewGroup r1 = (android.view.ViewGroup) r1
                                                if (r1 == 0) goto L39
                                                android.view.ViewPropertyAnimator r2 = r1.animate()
                                                goto L3a
                                            L39:
                                                r2 = r3
                                            L3a:
                                                if (r2 == 0) goto L8
                                                android.animation.AnimatorSet r2 = r15.holdingViAnimator
                                                if (r2 == 0) goto L45
                                                r2.cancel()
                                                r15.holdingViAnimator = r3
                                            L45:
                                                com.android.systemui.navigationbar.store.NavBarStateManager r2 = r15.navBarStateManager
                                                com.android.systemui.navigationbar.store.NavBarStateManager$States r2 = r2.states
                                                int r2 = r2.rotation
                                                boolean r3 = r15.isCanMove
                                                java.lang.String r4 = "scaleY"
                                                java.lang.String r6 = "scaleX"
                                                r7 = 1
                                                r8 = 0
                                                if (r3 != 0) goto L58
                                                goto L5d
                                            L58:
                                                if (r2 == r7) goto L64
                                                r3 = 3
                                                if (r2 == r3) goto L5f
                                            L5d:
                                                r2 = r6
                                                goto L65
                                            L5f:
                                                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                                r3 = r2
                                                r2 = r4
                                                goto L66
                                            L64:
                                                r2 = r4
                                            L65:
                                                r3 = r8
                                            L66:
                                                int r9 = r1.getChildCount()
                                                r10 = 200(0xc8, double:9.9E-322)
                                                r12 = 0
                                                if (r9 <= 0) goto L9b
                                                android.view.View r9 = r1.getChildAt(r12)
                                                float[] r13 = new float[r7]
                                                r13[r12] = r8
                                                android.animation.ObjectAnimator r2 = android.animation.ObjectAnimator.ofFloat(r9, r2, r13)
                                                android.animation.AnimatorSet r9 = new android.animation.AnimatorSet
                                                r9.<init>()
                                                android.animation.Animator[] r2 = new android.animation.Animator[]{r2}
                                                r9.playTogether(r2)
                                                r9.setDuration(r10)
                                                android.view.animation.PathInterpolator r2 = new android.view.animation.PathInterpolator
                                                r13 = 1043207291(0x3e2e147b, float:0.17)
                                                r14 = 1036831949(0x3dcccccd, float:0.1)
                                                r2.<init>(r13, r13, r14, r5)
                                                r9.setInterpolator(r2)
                                                r9.start()
                                            L9b:
                                                float[] r2 = new float[r7]
                                                r2[r12] = r5
                                                android.animation.ObjectAnimator r2 = android.animation.ObjectAnimator.ofFloat(r1, r6, r2)
                                                float[] r6 = new float[r7]
                                                r6[r12] = r5
                                                android.animation.ObjectAnimator r4 = android.animation.ObjectAnimator.ofFloat(r1, r4, r6)
                                                float[] r5 = new float[r7]
                                                r5[r12] = r3
                                                java.lang.String r3 = "translationX"
                                                android.animation.ObjectAnimator r3 = android.animation.ObjectAnimator.ofFloat(r1, r3, r5)
                                                float[] r5 = new float[r7]
                                                r5[r12] = r8
                                                java.lang.String r6 = "translationY"
                                                android.animation.ObjectAnimator r1 = android.animation.ObjectAnimator.ofFloat(r1, r6, r5)
                                                android.animation.AnimatorSet r5 = new android.animation.AnimatorSet
                                                r5.<init>()
                                                android.animation.Animator[] r1 = new android.animation.Animator[]{r2, r4, r3, r1}
                                                r5.playTogether(r1)
                                                r5.setDuration(r10)
                                                android.view.animation.PathInterpolator r1 = new android.view.animation.PathInterpolator
                                                r2 = 1061997773(0x3f4ccccd, float:0.8)
                                                r3 = 1062501089(0x3f547ae1, float:0.83)
                                                r1.<init>(r2, r8, r3, r3)
                                                r5.setInterpolator(r1)
                                                r5.start()
                                                goto L8
                                            Le3:
                                                return
                                            */
                                            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.gestural.GestureHintAnimator$reset$1.run():void");
                                        }
                                    });
                                } else if (navBarStoreAction instanceof NavBarStoreAction.StartHintVI) {
                                    NavBarStoreAction.GestureHintVIInfo gestureHintVIInfo = ((NavBarStoreAction.StartHintVI) navBarStoreAction).action.gestureHintVIInfo;
                                    GestureHintAnimator gestureHintAnimator3 = (GestureHintAnimator) getModule(GestureHintAnimator.class, i2);
                                    int i10 = gestureHintVIInfo.hintID;
                                    boolean z10 = states.canMove;
                                    gestureHintAnimator3.currentHintId = i10;
                                    gestureHintAnimator3.isCanMove = z10;
                                } else if (navBarStoreAction instanceof NavBarStoreAction.MoveHintVI) {
                                    NavBarStoreAction.GestureHintVIInfo gestureHintVIInfo2 = ((NavBarStoreAction.MoveHintVI) navBarStoreAction).action.gestureHintVIInfo;
                                    final GestureHintAnimator gestureHintAnimator4 = (GestureHintAnimator) getModule(GestureHintAnimator.class, i2);
                                    int i11 = gestureHintVIInfo2.hintID;
                                    final int i12 = gestureHintVIInfo2.distanceX;
                                    final int i13 = gestureHintVIInfo2.distanceY;
                                    final long j = gestureHintVIInfo2.duration;
                                    gestureHintAnimator4.currentHintId = i11;
                                    gestureHintAnimator4.handler.post(new Runnable() { // from class: com.android.systemui.navigationbar.gestural.GestureHintAnimator$onActionMove$1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            float f3;
                                            float f4;
                                            int abs;
                                            float max;
                                            float f5;
                                            String str3;
                                            GestureHintAnimator gestureHintAnimator5 = GestureHintAnimator.this;
                                            ViewGroup viewGroup = (ViewGroup) gestureHintAnimator5.getHintView(gestureHintAnimator5.currentHintId);
                                            if (viewGroup != null) {
                                                GestureHintAnimator gestureHintAnimator6 = GestureHintAnimator.this;
                                                if (NavigationModeUtil.isBottomGesture(gestureHintAnimator6.navigationMode)) {
                                                    f3 = 210.0f;
                                                } else {
                                                    f3 = 105.0f;
                                                }
                                                float applyDimension = TypedValue.applyDimension(1, f3, gestureHintAnimator6.context.getResources().getDisplayMetrics());
                                                GestureHintAnimator gestureHintAnimator7 = GestureHintAnimator.this;
                                                if (NavigationModeUtil.isBottomGesture(gestureHintAnimator7.navigationMode)) {
                                                    f4 = 17.0f;
                                                } else {
                                                    f4 = 8.5f;
                                                }
                                                float applyDimension2 = TypedValue.applyDimension(1, f4, gestureHintAnimator7.context.getResources().getDisplayMetrics());
                                                GestureHintAnimator gestureHintAnimator8 = GestureHintAnimator.this;
                                                int i14 = i12;
                                                int i15 = i13;
                                                int i16 = gestureHintAnimator8.navBarStateManager.states.rotation;
                                                if (gestureHintAnimator8.isCanMove && i16 != 0 && i16 != 2) {
                                                    abs = Math.abs(i14);
                                                } else {
                                                    abs = Math.abs(i15);
                                                }
                                                float f6 = abs;
                                                float f7 = (applyDimension2 * f6) / applyDimension;
                                                if (abs > 0) {
                                                    max = Math.min(f7, applyDimension2);
                                                } else {
                                                    max = Math.max(f7, -applyDimension2);
                                                }
                                                if (NavigationModeUtil.isBottomGesture(GestureHintAnimator.this.navigationMode)) {
                                                    f5 = 1.16f;
                                                } else {
                                                    f5 = 1.1f;
                                                }
                                                float min = Math.min((((f5 - 1.0f) * f6) / applyDimension) + 1.0f, f5);
                                                GestureHintAnimator gestureHintAnimator9 = GestureHintAnimator.this;
                                                int i17 = gestureHintAnimator9.navBarStateManager.states.rotation;
                                                if (gestureHintAnimator9.isCanMove && i17 != 0 && i17 != 2) {
                                                    if (i17 == 3) {
                                                        viewGroup.setTranslationX(max);
                                                        viewGroup.setScaleY(min);
                                                    } else if (i17 == 1) {
                                                        viewGroup.setTranslationX(-max);
                                                        viewGroup.setScaleY(min);
                                                    }
                                                    str3 = "scaleY";
                                                } else {
                                                    viewGroup.setTranslationY(-max);
                                                    viewGroup.setScaleX(min);
                                                    str3 = "scaleX";
                                                }
                                                if (GestureHintAnimator.this.currentHintId == 1 && viewGroup.getChildCount() > 0) {
                                                    View childAt = viewGroup.getChildAt(0);
                                                    if (j == 0) {
                                                        AnimatorSet animatorSet = GestureHintAnimator.this.holdingViAnimator;
                                                        if (animatorSet != null) {
                                                            animatorSet.cancel();
                                                            GestureHintAnimator.this.holdingViAnimator = null;
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    if (GestureHintAnimator.this.holdingViAnimator == null) {
                                                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt, str3, 1.0f);
                                                        GestureHintAnimator.this.holdingViAnimator = new AnimatorSet();
                                                        AnimatorSet animatorSet2 = GestureHintAnimator.this.holdingViAnimator;
                                                        Intrinsics.checkNotNull(animatorSet2);
                                                        animatorSet2.playTogether(ofFloat);
                                                        AnimatorSet animatorSet3 = GestureHintAnimator.this.holdingViAnimator;
                                                        Intrinsics.checkNotNull(animatorSet3);
                                                        animatorSet3.setDuration(500L);
                                                        AnimatorSet animatorSet4 = GestureHintAnimator.this.holdingViAnimator;
                                                        Intrinsics.checkNotNull(animatorSet4);
                                                        animatorSet4.setInterpolator(new PathInterpolator(0.17f, 0.17f, 0.1f, 1.0f));
                                                        AnimatorSet animatorSet5 = GestureHintAnimator.this.holdingViAnimator;
                                                        Intrinsics.checkNotNull(animatorSet5);
                                                        animatorSet5.start();
                                                        if (Intrinsics.areEqual(str3, "scaleY")) {
                                                            childAt.setScaleX(1.0f);
                                                        } else {
                                                            childAt.setScaleY(1.0f);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    });
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateSysUiFlags) {
                                    for (NavBarStoreAction.SysUiFlagInfo sysUiFlagInfo : ((NavBarStoreAction.UpdateSysUiFlags) navBarStoreAction).action.sysUiFlagInfoList) {
                                        if (this.handleEventLoggingEnabled) {
                                            int i14 = this.loggingDepth;
                                            StringBuilder m = AbstractResolvableFuture$$ExternalSyntheticOutline0.m("set ", sysUiFlagInfo.flag, " : ");
                                            m.append(sysUiFlagInfo.value);
                                            storeLogUtil.printLog(i14, m.toString());
                                        }
                                        sysUiState.setFlag(sysUiFlagInfo.flag, sysUiFlagInfo.value);
                                    }
                                    sysUiState.commitUpdate(i2);
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateOneHandModeInfo) {
                                    OneHandModeUtil.Companion companion = OneHandModeUtil.Companion;
                                    NavBarStoreAction.OneHandModeInfo oneHandModeInfo = ((NavBarStoreAction.UpdateOneHandModeInfo) navBarStoreAction).action.oneHandModeInfo;
                                    companion.getClass();
                                    OneHandModeUtil.oneHandModeInfo = oneHandModeInfo;
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateRegionSamplingRect) {
                                    ((NavigationBar) getModule(NavigationBar.class, i2)).mRegionSamplingHelper.updateSamplingRect();
                                } else if (navBarStoreAction instanceof NavBarStoreAction.RecalculateGestureInsetScale) {
                                    NavigationModeUtil navigationModeUtil = NavigationModeUtil.INSTANCE;
                                    Context context = (Context) getModule(Context.class, i2);
                                    boolean z11 = ((NavBarStoreAction.RecalculateGestureInsetScale) navBarStoreAction).action.folded;
                                    navigationModeUtil.getClass();
                                    try {
                                        if (NavigationModeUtil.sideInsetScaleArray.length == 0) {
                                            r13 = true;
                                        } else {
                                            r13 = false;
                                        }
                                        if (r13 != false) {
                                            TypedArray obtainTypedArray = context.getResources().obtainTypedArray(android.R.array.vendor_allowed_personal_apps_org_owned_device);
                                            int length = obtainTypedArray.length();
                                            float[] fArr = new float[length];
                                            for (int i15 = 0; i15 < length; i15++) {
                                                fArr[i15] = obtainTypedArray.getFloat(i15, 1.0f);
                                            }
                                            obtainTypedArray.recycle();
                                            NavigationModeUtil.sideInsetScaleArray = fArr;
                                        }
                                        if (NavigationModeUtil.bottomInsetScaleArray.length == 0) {
                                            r132 = true;
                                        } else {
                                            r132 = false;
                                        }
                                        if (r132 != false) {
                                            TypedArray obtainTypedArray2 = context.getResources().obtainTypedArray(android.R.array.wfcOperatorErrorNotificationMessages);
                                            int length2 = obtainTypedArray2.length();
                                            float[] fArr2 = new float[length2];
                                            while (i6 < length2) {
                                                fArr2[i6] = obtainTypedArray2.getFloat(i6, 1.0f);
                                                i6++;
                                            }
                                            obtainTypedArray2.recycle();
                                            NavigationModeUtil.bottomInsetScaleArray = fArr2;
                                        }
                                        SettingsHelper.ItemMap itemMap = this.settingsHelper.mItemLists;
                                        if (z11) {
                                            if (BasicRune.NAVBAR_GESTURE) {
                                                i3 = itemMap.get("navigation_bar_back_gesture_sensitivity_sub").getIntValue();
                                            }
                                        } else if (BasicRune.NAVBAR_GESTURE) {
                                            i3 = itemMap.get("navigation_bar_back_gesture_sensitivity").getIntValue();
                                        }
                                        ContentResolver contentResolver = context.getContentResolver();
                                        float[] fArr3 = NavigationModeUtil.sideInsetScaleArray;
                                        Intrinsics.checkNotNull(fArr3);
                                        Settings.Secure.putFloat(contentResolver, "back_gesture_inset_scale_left", fArr3[i3]);
                                        ContentResolver contentResolver2 = context.getContentResolver();
                                        float[] fArr4 = NavigationModeUtil.sideInsetScaleArray;
                                        Intrinsics.checkNotNull(fArr4);
                                        Settings.Secure.putFloat(contentResolver2, "back_gesture_inset_scale_right", fArr4[i3]);
                                        ContentResolver contentResolver3 = context.getContentResolver();
                                        float[] fArr5 = NavigationModeUtil.bottomInsetScaleArray;
                                        Intrinsics.checkNotNull(fArr5);
                                        Settings.Secure.putFloat(contentResolver3, "bottom_gesture_inset_scale", fArr5[i3]);
                                    } catch (Exception unused) {
                                    }
                                } else if (navBarStoreAction instanceof NavBarStoreAction.ShowA11ySwipeUpTipPopup) {
                                    ((NavigationBarView) getModule(NavigationBarView.class, 0)).showA11ySwipeUpTipPopup();
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateNavigationIcon) {
                                    ((LightBarController) getModule(LightBarController.class, i2)).updateNavigation();
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateTaskBarIconsAndHints) {
                                    TaskbarDelegate taskbarDelegate2 = (TaskbarDelegate) getModule(TaskbarDelegate.class, 0);
                                    if (taskbarDelegate2 != null) {
                                        taskbarDelegate2.updateTaskbarButtonIconsAndHints();
                                    }
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateTaskBarNavBarEvents) {
                                    TaskbarDelegate taskbarDelegate3 = (TaskbarDelegate) getModule(TaskbarDelegate.class, 0);
                                    if (taskbarDelegate3 != null) {
                                        taskbarDelegate3.handleNavigationBarEvent(((NavBarStoreAction.UpdateTaskBarNavBarEvents) navBarStoreAction).action.taskbarNavBarEvents);
                                    }
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateNavBarLayoutParams) {
                                    NavigationBar navigationBar2 = (NavigationBar) getModule(NavigationBar.class, i2);
                                    if (navigationBar2 != null) {
                                        navigationBar2.updateNavBarLayoutParams();
                                    }
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateA11YStatus) {
                                    NavigationBar navigationBar3 = (NavigationBar) getModule(NavigationBar.class, i2);
                                    if (navigationBar3 != null) {
                                        navigationBar3.mNavBarHelper.updateA11yState();
                                    }
                                } else if (navBarStoreAction instanceof NavBarStoreAction.ForceHideGestureHint) {
                                    r133.getClass();
                                    ((NavigationBarView) getModule(NavigationBarView.class, i2)).updateHintVisibility(false, false, false);
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateTaskbarStatus) {
                                    NavBarStoreAction.Action action3 = ((NavBarStoreAction.UpdateTaskbarStatus) navBarStoreAction).action;
                                    boolean z12 = action3.taskbarEnabled;
                                    PluginBarInteractionManager pluginBarInteractionManager = this.pluginBarInteractionManager;
                                    if (z12) {
                                        TaskbarDelegate taskbarDelegate4 = this.taskbarDelegate;
                                        if (taskbarDelegate4 != null) {
                                            samsungPluginTaskBar2 = taskbarDelegate4.mPluginTaskBar;
                                        }
                                        Intrinsics.checkNotNull(samsungPluginTaskBar2);
                                        PluginNavigationBar pluginNavigationBar = pluginBarInteractionManager.pluginNavigationBar;
                                        if (pluginNavigationBar != null) {
                                            pluginNavigationBar.onAttachedToWindow(samsungPluginTaskBar2);
                                        }
                                    } else {
                                        TaskbarDelegate taskbarDelegate5 = this.taskbarDelegate;
                                        if (taskbarDelegate5 != null) {
                                            samsungPluginTaskBar = taskbarDelegate5.mPluginTaskBar;
                                        }
                                        Intrinsics.checkNotNull(samsungPluginTaskBar);
                                        PluginNavigationBar pluginNavigationBar2 = pluginBarInteractionManager.pluginNavigationBar;
                                        if (pluginNavigationBar2 != null) {
                                            pluginNavigationBar2.onDetachedFromWindow(samsungPluginTaskBar);
                                        }
                                    }
                                    NavigationBar navigationBar4 = (NavigationBar) getModule(NavigationBar.class, i2);
                                    if (navigationBar4 != null && BasicRune.NAVBAR_SUPPORT_POLICY_VISIBILITY && getNavStateManager(0).isGestureMode()) {
                                        ((NavigationBarView) navigationBar4.mView).reorient();
                                        boolean z13 = !action3.taskbarEnabled;
                                        RegionSamplingHelper regionSamplingHelper = navigationBar4.mRegionSamplingHelper;
                                        if (z13) {
                                            regionSamplingHelper.start(navigationBar4.mSamplingBounds);
                                        } else {
                                            regionSamplingHelper.stop();
                                        }
                                    }
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateIndicatorSpringParams) {
                                    boolean isTaskBarEnabled = r133.isTaskBarEnabled(false);
                                    NavBarStoreAction.Action action4 = ((NavBarStoreAction.UpdateIndicatorSpringParams) navBarStoreAction).action;
                                    if (isTaskBarEnabled) {
                                        TaskbarDelegate taskbarDelegate6 = (TaskbarDelegate) getModule(TaskbarDelegate.class, i2);
                                        float f3 = action4.stiffness;
                                        EdgeBackGestureHandler edgeBackGestureHandler3 = taskbarDelegate6.mEdgeBackGestureHandler;
                                        if (edgeBackGestureHandler3.mIsNewBackAffordanceEnabled) {
                                            edgeBackGestureHandler3.mEdgeBackPlugin.updateActiveIndicatorSpringParams(f3, action4.dampingRatio);
                                        }
                                    } else {
                                        ((NavigationBarView) getModule(NavigationBarView.class, i2)).updateActiveIndicatorSpringParams(action4.stiffness, action4.dampingRatio);
                                    }
                                } else if (navBarStoreAction instanceof NavBarStoreAction.UpdateDefaultNavigationBarStatus) {
                                    NavigationBar navigationBar5 = (NavigationBar) getModule(NavigationBar.class, 0);
                                    if (navigationBar5 != null) {
                                        navigationBar5.updateSystemUiStateFlags();
                                    }
                                    NavigationBarView navigationBarView3 = (NavigationBarView) getModule(NavigationBarView.class, 0);
                                    if (navigationBarView3 != null && (rotationButtonController = navigationBarView3.mRotationButtonController) != null) {
                                        rotationButtonController.mLastUnknownRotationProposedTick = 0L;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return this;
    }

    public final Object getModule(Class cls, int i) {
        NavBarModuleDependency navBarModuleDependency = (NavBarModuleDependency) this.navDependencies.get(Integer.valueOf(i));
        if (navBarModuleDependency != null) {
            return navBarModuleDependency.modules.get(cls.getTypeName());
        }
        return null;
    }

    public final NavBarStateManager getNavStateManager(int i) {
        HashMap hashMap = this.navStateManager;
        if (hashMap.get(Integer.valueOf(i)) != null) {
            Object obj = hashMap.get(Integer.valueOf(i));
            Intrinsics.checkNotNull(obj);
            return (NavBarStateManager) obj;
        }
        Object obj2 = hashMap.get(0);
        Intrinsics.checkNotNull(obj2);
        return (NavBarStateManager) obj2;
    }

    public final Object getProvider(int i, int i2) {
        if (i != 0) {
            if (i != 1) {
                return null;
            }
            return getNavStateManager(i2).layoutProviderContainer;
        }
        return this.interactorFactory.get(ColorSetting.class);
    }

    public final SamsungNavigationBarSetupWizardView getSUWNavigationBarView(int i) {
        return (SamsungNavigationBarSetupWizardView) ((NavigationBarView) getModule(NavigationBarView.class, i)).findViewById(R.id.navigation_setupwizard);
    }

    public final void handleEvent(Object obj, EventTypeFactory.EventType eventType, int i) {
        handleEvent(obj, eventType, i, Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void initDisplayDependenciesIfNeeded(int r19, android.content.Context r20) {
        /*
            r18 = this;
            r11 = r18
            r12 = r19
            android.hardware.display.DisplayManager r0 = r11.displayManager
            android.view.Display r13 = r0.getDisplay(r12)
            if (r13 == 0) goto L9d
            java.lang.Integer r0 = java.lang.Integer.valueOf(r19)
            java.util.HashMap r1 = r11.navDependencies
            java.lang.Object r0 = r1.get(r0)
            if (r0 != 0) goto L2c
            java.lang.Integer r0 = java.lang.Integer.valueOf(r19)
            com.android.systemui.navigationbar.store.NavBarModuleDependency r2 = new com.android.systemui.navigationbar.store.NavBarModuleDependency
            r2.<init>()
            r1.put(r0, r2)
            java.lang.Class<android.content.Context> r0 = android.content.Context.class
            r1 = r20
            r11.putModule(r0, r1, r12)
            goto L2e
        L2c:
            r1 = r20
        L2e:
            java.lang.Integer r0 = java.lang.Integer.valueOf(r19)
            java.util.HashMap r14 = r11.navStateManager
            java.lang.Object r0 = r14.get(r0)
            if (r0 != 0) goto L60
            java.lang.Integer r15 = java.lang.Integer.valueOf(r19)
            com.android.systemui.navigationbar.store.NavBarStateManager r10 = new com.android.systemui.navigationbar.store.NavBarStateManager
            com.android.systemui.util.SettingsHelper r3 = r11.settingsHelper
            com.android.systemui.navigationbar.interactor.InteractorFactory r4 = r11.interactorFactory
            com.android.systemui.navigationbar.util.StoreLogUtil r5 = r11.logWrapper
            com.samsung.systemui.splugins.navigationbar.LayoutProviderContainer r6 = r11.layoutProviderContainer
            com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager r7 = r11.navBarRemoteViewManager
            r8 = 0
            r9 = 128(0x80, float:1.794E-43)
            r16 = 0
            r0 = r10
            r1 = r20
            r2 = r18
            r17 = r13
            r13 = r10
            r10 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            r14.put(r15, r13)
            goto L73
        L60:
            r17 = r13
            if (r12 != 0) goto L73
            java.lang.Integer r0 = java.lang.Integer.valueOf(r19)
            java.lang.Object r0 = r14.get(r0)
            com.android.systemui.navigationbar.store.NavBarStateManager r0 = (com.android.systemui.navigationbar.store.NavBarStateManager) r0
            if (r0 == 0) goto L73
            r0.onNavigationBarCreated()
        L73:
            boolean r0 = com.android.systemui.BasicRune.NAVBAR_REMOTEVIEW
            if (r0 == 0) goto L80
            com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager r0 = r11.navBarRemoteViewManager
            r0.navBarStore = r11
            java.lang.Class<com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager> r1 = com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager.class
            r11.putModule(r1, r0, r12)
        L80:
            android.graphics.Point r0 = new android.graphics.Point
            r0.<init>()
            r1 = r17
            r1.getRealSize(r0)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r19)
            java.lang.Object r1 = r14.get(r1)
            com.android.systemui.navigationbar.store.NavBarStateManager r1 = (com.android.systemui.navigationbar.store.NavBarStateManager) r1
            if (r1 == 0) goto L9d
            com.android.systemui.navigationbar.store.NavBarStateManager$States r1 = r1.states
            r1.displaySize = r0
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            goto L9e
        L9d:
            r0 = 0
        L9e:
            if (r0 != 0) goto Lb3
            java.lang.String r0 = "Failed to add display dependencies because display "
            java.lang.String r1 = " returns null."
            java.lang.String r0 = androidx.core.os.LocaleListCompatWrapper$$ExternalSyntheticOutline0.m(r0, r12, r1)
            com.android.systemui.navigationbar.util.StoreLogUtil r1 = r11.logWrapper
            boolean r2 = r1.allowLogging
            if (r2 == 0) goto Lb3
            int r2 = r1.lastDepth
            r1.printLog(r2, r0)
        Lb3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.navigationbar.store.NavBarStoreImpl.initDisplayDependenciesIfNeeded(int, android.content.Context):void");
    }

    public final void putModule(Type type, Object obj, int i) {
        HashMap hashMap = this.navDependencies;
        if (obj == null) {
            NavBarModuleDependency navBarModuleDependency = (NavBarModuleDependency) hashMap.get(Integer.valueOf(i));
            if (navBarModuleDependency != null) {
                navBarModuleDependency.modules.remove(((Class) type).getTypeName());
                return;
            }
            return;
        }
        NavBarModuleDependency navBarModuleDependency2 = (NavBarModuleDependency) hashMap.get(Integer.valueOf(i));
        if (navBarModuleDependency2 != null) {
            navBarModuleDependency2.modules.put(((Class) type).getTypeName(), obj);
        }
    }

    public final void setProvider(int i, int i2, Object obj) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    handleEvent(this, new EventTypeFactory.EventType.OnBarLayoutParamsProviderChanged((BarLayoutParams) obj), i2);
                    return;
                }
                return;
            }
            handleEvent(this, new EventTypeFactory.EventType.OnLayoutContainerChanged((LayoutProviderContainer) obj), i2);
            return;
        }
        if (obj != null) {
            InteractorFactory interactorFactory = this.interactorFactory;
            interactorFactory.provider.put(ColorSetting.class, obj);
            ColorSetting colorSetting = (ColorSetting) interactorFactory.get(ColorSetting.class);
            if (colorSetting != null) {
                colorSetting.addColorCallback(null);
            }
        }
    }

    public final void handleEvent(Object obj, EventTypeFactory.EventType eventType) {
        if (eventType instanceof EventTypeFactory.EventType.ResetBottomGestureHintVI ? true : eventType instanceof EventTypeFactory.EventType.MoveBottomGestureHintDistance ? true : eventType instanceof EventTypeFactory.EventType.StartBottomGestureHintVI ? true : eventType instanceof EventTypeFactory.EventType.OnSetRemoteView ? true : eventType instanceof EventTypeFactory.EventType.OnUpdateRemoteViewContainer ? true : eventType instanceof EventTypeFactory.EventType.OnInvalidateRemoteViews) {
            Iterator it = this.navDependencies.keySet().iterator();
            while (it.hasNext()) {
                handleEvent(obj, eventType, ((Integer) it.next()).intValue());
            }
            return;
        }
        handleEvent(obj, eventType, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v10, types: [android.content.BroadcastReceiver, com.android.systemui.navigationbar.interactor.DesktopModeInteractor$addCallback$2] */
    /* JADX WARN: Type inference failed for: r9v12, types: [com.android.systemui.util.SettingsHelper$OnChangedCallback, com.android.systemui.navigationbar.interactor.DesktopModeInteractor$addCallback$5] */
    /* JADX WARN: Type inference failed for: r9v14, types: [com.android.systemui.navigationbar.interactor.LegacyDesktopModeInteractor$addCallback$2] */
    public final Object handleEvent(final Object obj, final EventTypeFactory.EventType eventType, int i, Object obj2) {
        final DesktopModeInteractor desktopModeInteractor;
        LegacyDesktopModeInteractor legacyDesktopModeInteractor;
        boolean z;
        boolean z2;
        Iterator it;
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = i;
        if (eventType instanceof EventTypeFactory.EventType.OnNavBarCreated) {
            EventTypeFactory.EventType.OnNavBarCreated onNavBarCreated = (EventTypeFactory.EventType.OnNavBarCreated) eventType;
            putModule(CentralSurfaces.class, onNavBarCreated.centralSurfaces, i);
            putModule(NavigationBar.class, onNavBarCreated.navigationBar, ref$IntRef.element);
        } else {
            boolean z3 = eventType instanceof EventTypeFactory.EventType.OnNavBarConfigChanged;
            SamsungNavigationBarProxy samsungNavigationBarProxy = this.navBarProxy;
            if (z3) {
                EventTypeFactory.EventType.OnNavBarConfigChanged onNavBarConfigChanged = (EventTypeFactory.EventType.OnNavBarConfigChanged) eventType;
                onNavBarConfigChanged.canMove = (onNavBarConfigChanged.canMove & (!DeviceType.isTablet())) | (DeviceState.isSubDisplay(this.mainContext) & (onNavBarConfigChanged.navigationMode != 2));
                onNavBarConfigChanged.supportPhoneLayoutProvider &= !DeviceType.isTablet();
                samsungNavigationBarProxy.getClass();
            } else {
                boolean z4 = eventType instanceof EventTypeFactory.EventType.OnNavBarAttachedToWindow;
                PluginBarInteractionManager pluginBarInteractionManager = this.pluginBarInteractionManager;
                InteractorFactory interactorFactory = this.interactorFactory;
                if (z4) {
                    EventTypeFactory.EventType.OnNavBarAttachedToWindow onNavBarAttachedToWindow = (EventTypeFactory.EventType.OnNavBarAttachedToWindow) eventType;
                    NavigationBarView navigationBarView = onNavBarAttachedToWindow.navigationBarView;
                    putModule(NavigationBarView.class, navigationBarView, i);
                    putModule(NavigationBarTransitions.class, onNavBarAttachedToWindow.navbarTransitions, ref$IntRef.element);
                    Context context = (Context) getModule(Context.class, 0);
                    GestureHintAnimator.Factory factory = this.hintAnimatorFactory;
                    factory.getClass();
                    putModule(GestureHintAnimator.class, new GestureHintAnimator(context, factory.mLogWrapper), ref$IntRef.element);
                    GestureHintAnimator gestureHintAnimator = (GestureHintAnimator) getModule(GestureHintAnimator.class, ref$IntRef.element);
                    gestureHintAnimator.navigationMode = gestureHintAnimator.navigationModeController.addListener(gestureHintAnimator);
                    if (BasicRune.NAVBAR_DESKTOP && (legacyDesktopModeInteractor = (LegacyDesktopModeInteractor) interactorFactory.get(LegacyDesktopModeInteractor.class)) != null) {
                        final Consumer consumer = new Consumer() { // from class: com.android.systemui.navigationbar.store.NavBarStoreImpl$handleEvent$2
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj3) {
                                SemDesktopModeState semDesktopModeState;
                                NavBarStoreImpl navBarStoreImpl = NavBarStoreImpl.this;
                                if (obj3 instanceof SemDesktopModeState) {
                                    semDesktopModeState = (SemDesktopModeState) obj3;
                                } else {
                                    semDesktopModeState = null;
                                }
                                navBarStoreImpl.handleEvent(navBarStoreImpl, new EventTypeFactory.EventType.OnDesktopModeChanged(semDesktopModeState));
                            }
                        };
                        LegacyDesktopModeInteractor$addCallback$2 legacyDesktopModeInteractor$addCallback$2 = legacyDesktopModeInteractor.callback;
                        if (legacyDesktopModeInteractor$addCallback$2 != null) {
                            ((ArrayList) ((DesktopManagerImpl) ((DesktopManager) Dependency.get(DesktopManager.class))).mCallbacks).remove(legacyDesktopModeInteractor$addCallback$2);
                        }
                        legacyDesktopModeInteractor.callback = new DesktopManager.Callback() { // from class: com.android.systemui.navigationbar.interactor.LegacyDesktopModeInteractor$addCallback$2
                            @Override // com.android.systemui.util.DesktopManager.Callback
                            public final void onDesktopModeStateChanged(SemDesktopModeState semDesktopModeState) {
                                Consumer consumer2 = consumer;
                                if (consumer2 != null) {
                                    consumer2.accept(semDesktopModeState);
                                }
                            }
                        };
                        DesktopManager desktopManager = (DesktopManager) Dependency.get(DesktopManager.class);
                        if (desktopManager != null) {
                            DesktopManagerImpl desktopManagerImpl = (DesktopManagerImpl) desktopManager;
                            desktopManagerImpl.registerCallback(legacyDesktopModeInteractor.callback);
                            consumer.accept(desktopManagerImpl.getSemDesktopModeState());
                        }
                    }
                    if (BasicRune.NAVBAR_NEW_DEX && (desktopModeInteractor = (DesktopModeInteractor) interactorFactory.get(DesktopModeInteractor.class)) != null) {
                        final Consumer consumer2 = new Consumer() { // from class: com.android.systemui.navigationbar.store.NavBarStoreImpl$handleEvent$3
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj3) {
                                NavBarStoreImpl navBarStoreImpl = NavBarStoreImpl.this;
                                navBarStoreImpl.handleEvent(navBarStoreImpl, new EventTypeFactory.EventType.OnNewDexModeChanged(((Boolean) obj3).booleanValue()));
                                NavBarStoreImpl navBarStoreImpl2 = NavBarStoreImpl.this;
                                navBarStoreImpl2.handleEvent(navBarStoreImpl2, new EventTypeFactory.EventType.OnUpdateTaskbarAvailable(false, 1, null));
                            }
                        };
                        DesktopModeInteractor$addCallback$2 desktopModeInteractor$addCallback$2 = desktopModeInteractor.broadcastReceiver;
                        if (desktopModeInteractor$addCallback$2 != null) {
                            desktopModeInteractor.broadcastDispatcher.unregisterReceiver(desktopModeInteractor$addCallback$2);
                        }
                        ?? r9 = new BroadcastReceiver() { // from class: com.android.systemui.navigationbar.interactor.DesktopModeInteractor$addCallback$2
                            @Override // android.content.BroadcastReceiver
                            public final void onReceive(Context context2, Intent intent) {
                                String str;
                                if (intent != null) {
                                    str = intent.getAction();
                                } else {
                                    str = null;
                                }
                                if (Intrinsics.areEqual(str, "android.intent.action.USER_UNLOCKED")) {
                                    DesktopModeInteractor desktopModeInteractor2 = DesktopModeInteractor.this;
                                    desktopModeInteractor2.userUnlocked = true;
                                    Consumer consumer3 = consumer2;
                                    if (consumer3 != null) {
                                        consumer3.accept(Boolean.valueOf(desktopModeInteractor2.isEnabled()));
                                    }
                                }
                            }
                        };
                        BroadcastDispatcher.registerReceiverWithHandler$default(desktopModeInteractor.broadcastDispatcher, r9, desktopModeInteractor.intentFilter, desktopModeInteractor.bgHandler, UserHandle.ALL, 48);
                        desktopModeInteractor.broadcastReceiver = r9;
                        DesktopModeInteractor$addCallback$5 desktopModeInteractor$addCallback$5 = desktopModeInteractor.callback;
                        SettingsHelper settingsHelper = desktopModeInteractor.settingsHelper;
                        if (desktopModeInteractor$addCallback$5 != null) {
                            settingsHelper.unregisterCallback(desktopModeInteractor$addCallback$5);
                        }
                        ?? r92 = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.navigationbar.interactor.DesktopModeInteractor$addCallback$5
                            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
                            public final void onChanged(Uri uri) {
                                Consumer consumer3 = consumer2;
                                if (consumer3 != null) {
                                    consumer3.accept(Boolean.valueOf(desktopModeInteractor.isEnabled()));
                                }
                            }
                        };
                        desktopModeInteractor.callback = r92;
                        settingsHelper.registerCallback(r92, Settings.System.getUriFor("new_dex"));
                        consumer2.accept(Boolean.valueOf(desktopModeInteractor.isEnabled()));
                    }
                    ExtendableBar pluginBar = navigationBarView.getPluginBar();
                    PluginNavigationBar pluginNavigationBar = pluginBarInteractionManager.pluginNavigationBar;
                    if (pluginNavigationBar != null) {
                        pluginNavigationBar.onAttachedToWindow(pluginBar);
                    }
                } else if (eventType instanceof EventTypeFactory.EventType.OnNavBarDetachedFromWindow) {
                    ExtendableBar pluginBar2 = ((NavigationBarView) getModule(NavigationBarView.class, i)).getPluginBar();
                    PluginNavigationBar pluginNavigationBar2 = pluginBarInteractionManager.pluginNavigationBar;
                    if (pluginNavigationBar2 != null) {
                        pluginNavigationBar2.onDetachedFromWindow(pluginBar2);
                    }
                    putModule(NavigationBarView.class, null, ref$IntRef.element);
                    putModule(NavigationBarTransitions.class, null, ref$IntRef.element);
                    GestureHintAnimator gestureHintAnimator2 = (GestureHintAnimator) getModule(GestureHintAnimator.class, ref$IntRef.element);
                    gestureHintAnimator2.navigationModeController.removeListener(gestureHintAnimator2);
                    putModule(GestureHintAnimator.class, null, ref$IntRef.element);
                    if (DeviceType.isTablet() && !getNavStateManager(0).isNavBarHiddenByKnox()) {
                        SysUiState sysUiState = this.sysUiFlagContainer;
                        sysUiState.setFlag(SemWallpaperColorsWrapper.LOCKSCREEN_NIO, false);
                        sysUiState.commitUpdate(ref$IntRef.element);
                    }
                } else if (eventType instanceof EventTypeFactory.EventType.OnLightBarControllerCreated) {
                    putModule(LightBarController.class, ((EventTypeFactory.EventType.OnLightBarControllerCreated) eventType).lightBarController, i);
                    NavigationBarTransitions navigationBarTransitions = (NavigationBarTransitions) getModule(NavigationBarTransitions.class, ref$IntRef.element);
                    Object obj3 = interactorFactory.get(ColorSetting.class);
                    Intrinsics.checkNotNull(obj3);
                    navigationBarTransitions.mBarBackground.updateOpaqueColor(((ColorSetting) obj3).getNavigationBarColor());
                } else if (eventType instanceof EventTypeFactory.EventType.OnRotationLockedChanged) {
                    boolean z5 = ((EventTypeFactory.EventType.OnRotationLockedChanged) eventType).rotationLocked;
                    samsungNavigationBarProxy.rotationLocked = z5;
                    Iterator it2 = ((ArrayList) samsungNavigationBarProxy.rotationLockCallback).iterator();
                    while (it2.hasNext()) {
                        ((Consumer) it2.next()).accept(Boolean.valueOf(z5));
                    }
                } else if (eventType instanceof EventTypeFactory.EventType.OnNavBarTransitionModeChanged) {
                    samsungNavigationBarProxy.navbarTransitionMode = ((EventTypeFactory.EventType.OnNavBarTransitionModeChanged) eventType).transitionMode;
                }
            }
        }
        List<Band> list = (List) this.packs.stream().flatMap(new Function() { // from class: com.android.systemui.navigationbar.store.NavBarStoreImpl$handleEvent$allBands$1
            @Override // java.util.function.Function
            public final Object apply(Object obj4) {
                return ((BandAidPack) obj4).getBands().stream();
            }
        }).filter(new Predicate() { // from class: com.android.systemui.navigationbar.store.NavBarStoreImpl$handleEvent$filteredBands$1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj4) {
                Boolean bool;
                boolean z6;
                Object obj5;
                Object obj6;
                Object obj7;
                boolean z7;
                boolean z8;
                Band band = (Band) obj4;
                NavBarStoreImpl navBarStoreImpl = NavBarStoreImpl.this;
                Object obj8 = obj;
                EventTypeFactory.EventType eventType2 = eventType;
                int i2 = ref$IntRef.element;
                navBarStoreImpl.getClass();
                BandAid bandAid = band.bandAidDependency;
                Object obj9 = null;
                if (bandAid != null) {
                    bool = Boolean.valueOf(bandAid.getEnabled());
                } else {
                    bool = null;
                }
                Intrinsics.checkNotNull(bool);
                if (!bool.booleanValue() || !band.runeDependency) {
                    return false;
                }
                String str = band.sPluginTag;
                if (str.length() > 0) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (z6) {
                    return StringsKt__StringsKt.contains(eventType2.getClass().getTypeName(), str, false);
                }
                int i3 = band.targetDisplayId;
                if (i3 != -1 && i3 != i2) {
                    return false;
                }
                Iterator it3 = band.targetEvents.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        obj5 = it3.next();
                        if (Intrinsics.areEqual(((Type) obj5).getTypeName(), eventType2.getClass().getTypeName())) {
                            break;
                        }
                    } else {
                        obj5 = null;
                        break;
                    }
                }
                if (((Type) obj5) == null) {
                    return false;
                }
                Iterator it4 = band.targetModules.iterator();
                while (true) {
                    if (it4.hasNext()) {
                        obj6 = it4.next();
                        Type type = (Type) obj6;
                        if (!StringsKt__StringsKt.contains(type.toString(), NavBarReflectUtil.class.getTypeName(), false) && !Intrinsics.areEqual(obj8.getClass().getTypeName(), type.getTypeName()) && (obj8.getClass().getEnclosingClass() == null || !Intrinsics.areEqual(obj8.getClass().getEnclosingClass().getTypeName(), type.getTypeName()))) {
                            z8 = false;
                        } else {
                            z8 = true;
                        }
                        if (z8) {
                            break;
                        }
                    } else {
                        obj6 = null;
                        break;
                    }
                }
                if (((Type) obj6) == null) {
                    return false;
                }
                Iterator it5 = band.moduleDependencies.iterator();
                while (true) {
                    if (!it5.hasNext()) {
                        break;
                    }
                    Object next = it5.next();
                    Type type2 = (Type) next;
                    NavBarModuleDependency navBarModuleDependency = (NavBarModuleDependency) navBarStoreImpl.navDependencies.get(Integer.valueOf(i2));
                    if (navBarModuleDependency != null) {
                        obj7 = navBarModuleDependency.modules.get(type2.getTypeName());
                    } else {
                        obj7 = null;
                    }
                    if (obj7 == null) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (z7) {
                        obj9 = next;
                        break;
                    }
                }
                if (((Type) obj9) != null) {
                    return false;
                }
                return true;
            }
        }).sorted(new Comparator() { // from class: com.android.systemui.navigationbar.store.NavBarStoreImpl$handleEvent$filteredBands$2
            @Override // java.util.Comparator
            public final int compare(Object obj4, Object obj5) {
                if (((Band) obj4).priority >= ((Band) obj5).priority) {
                    return 1;
                }
                return -1;
            }
        }).collect(Collectors.toList());
        boolean z6 = this.handleEventLoggingEnabled;
        int i2 = this.loggingDepth;
        int i3 = ref$IntRef.element;
        StoreLogUtil storeLogUtil = this.logWrapper;
        storeLogUtil.lastDepth = i2;
        if (storeLogUtil.loggingStarted) {
            z = !(eventType instanceof EventTypeFactory.EventType.OnInvalidateRemoteViews ? true : eventType instanceof EventTypeFactory.EventType.OnNavBarStyleChanged ? true : eventType instanceof EventTypeFactory.EventType.OnSetDisableFlags ? true : eventType instanceof EventTypeFactory.EventType.GetBarLayoutParams ? true : eventType instanceof EventTypeFactory.EventType.OnNavBarIconMarquee ? true : eventType instanceof EventTypeFactory.EventType.OnUpdateDarkIntensity ? true : eventType instanceof EventTypeFactory.EventType.GetDeadZoneSize ? true : eventType instanceof EventTypeFactory.EventType.OnUpdateRegionSamplingListener ? true : eventType instanceof EventTypeFactory.EventType.GetNavBarInsets ? true : eventType instanceof EventTypeFactory.EventType.GetImeInsets ? true : eventType instanceof EventTypeFactory.EventType.GetMandatoryInsets ? true : eventType instanceof EventTypeFactory.EventType.MoveBottomGestureHintDistance);
            storeLogUtil.allowLogging = z;
        } else {
            z = false;
        }
        if (z) {
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < i2; i4++) {
                sb.append("--");
            }
            sb.append("handleEvent(" + i3 + ") ");
            sb.append(eventType.toString());
            sb.append(" [Module] ");
            sb.append(obj.getClass().getSimpleName());
            storeLogUtil.logWrapper.d("Store", sb.toString());
            z2 = true;
        } else {
            z2 = false;
        }
        this.handleEventLoggingEnabled = z2;
        this.loggingDepth++;
        NavBarStateManager navStateManager = getNavStateManager(ref$IntRef.element);
        Band.Kit kit = new Band.Kit(eventType, navStateManager, NavBarStateManager.States.copy$default(navStateManager.states), ref$IntRef.element);
        Iterator it3 = list.iterator();
        Object obj4 = null;
        while (it3.hasNext()) {
            Band band = (Band) it3.next();
            if (this.handleEventLoggingEnabled) {
                int i5 = this.loggingDepth;
                BandAid bandAid = band.bandAidDependency;
                it = it3;
                storeLogUtil.printLog(i5, "[Band]" + (bandAid != null ? bandAid.name() : null));
            } else {
                it = it3;
            }
            this.loggingDepth++;
            Function function = band.patchAction;
            Object apply = function != null ? function.apply(kit) : null;
            if (!(apply instanceof Unit)) {
                obj4 = apply == null ? null : apply;
            }
            this.loggingDepth--;
            it3 = it;
        }
        navStateManager.updateStateFromEvent(eventType);
        for (Band band2 : list) {
            if (band2.afterAction != null) {
                if (this.handleEventLoggingEnabled) {
                    int i6 = this.loggingDepth;
                    BandAid bandAid2 = band2.bandAidDependency;
                    storeLogUtil.printLog(i6, "[Band] (afterAction) " + (bandAid2 != null ? bandAid2.name() : null));
                }
                this.loggingDepth++;
                band2.afterAction.accept(kit);
                this.loggingDepth--;
            }
        }
        int i7 = this.loggingDepth - 1;
        this.loggingDepth = i7;
        if (obj4 != null && !(obj4 instanceof NavBarStore)) {
            if (this.handleEventLoggingEnabled) {
                storeLogUtil.printLog(i7, "handleEvent(" + ref$IntRef.element + ") retValue= " + obj4);
            }
            this.handleEventLoggingEnabled = z6;
            storeLogUtil.allowLogging = false;
            storeLogUtil.lastDepth = 0;
            return obj4;
        }
        if (!(obj2 instanceof Unit)) {
            if (this.handleEventLoggingEnabled) {
                storeLogUtil.printLog(i7, "handleEvent(" + ref$IntRef.element + ") ret defaultValue= " + obj2);
            }
            this.handleEventLoggingEnabled = z6;
            storeLogUtil.allowLogging = false;
            storeLogUtil.lastDepth = 0;
        }
        return obj2;
    }
}
