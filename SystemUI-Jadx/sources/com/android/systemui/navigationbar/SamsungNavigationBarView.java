package com.android.systemui.navigationbar;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.DisplayInfo;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.android.systemui.BasicRune;
import com.android.systemui.Dependency;
import com.android.systemui.Prefs;
import com.android.systemui.R;
import com.android.systemui.basic.util.LogWrapper;
import com.android.systemui.basic.util.ModuleType;
import com.android.systemui.model.SysUiState;
import com.android.systemui.navigationbar.buttons.ButtonDispatcher;
import com.android.systemui.navigationbar.buttons.ContextualButton;
import com.android.systemui.navigationbar.buttons.ContextualButtonGroup;
import com.android.systemui.navigationbar.buttons.KeyButtonDrawable;
import com.android.systemui.navigationbar.buttons.RotationContextButton;
import com.android.systemui.navigationbar.gestural.EdgeBackGestureHandler;
import com.android.systemui.navigationbar.gestural.GestureHintDrawable;
import com.android.systemui.navigationbar.gestural.GestureHintGroup;
import com.android.systemui.navigationbar.gestural.NavigationHandle;
import com.android.systemui.navigationbar.gestural.NavigationHintHandle;
import com.android.systemui.navigationbar.icon.NavBarIconResourceMapper;
import com.android.systemui.navigationbar.plugin.ButtonDispatcherProxy;
import com.android.systemui.navigationbar.plugin.SamsungPluginNavigationBar;
import com.android.systemui.navigationbar.remoteview.NavBarRemoteViewManager;
import com.android.systemui.navigationbar.store.EventTypeFactory;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.android.systemui.navigationbar.store.NavBarStore;
import com.android.systemui.navigationbar.store.NavBarStoreImpl;
import com.android.systemui.navigationbar.util.MarqueeLogic;
import com.android.systemui.navigationbar.util.NavBarTipPopupUtil;
import com.android.systemui.searcle.SearcleManager;
import com.android.systemui.searcle.SearcleTipPopup;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.ShadeViewController;
import com.android.systemui.shared.rotation.RotationButtonController;
import com.android.systemui.statusbar.phone.LightBarTransitionsController;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.widget.SemTipPopup;
import com.samsung.systemui.splugins.navigationbar.ColorSetting;
import com.samsung.systemui.splugins.navigationbar.ExtendableBar;
import com.samsung.systemui.splugins.navigationbar.IconThemeBase;
import com.samsung.systemui.splugins.navigationbar.IconType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.Supplier;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SamsungNavigationBarView extends NavigationBarView {
    public final int AMOTION_EVENT_FLAG_BYPASSABLE_WINDOW_TYPE;
    public KeyButtonDrawable backAltIcon;
    public boolean canShowHideKeyboard;
    public View currentRemoteView;
    public final int displayId;
    public GestureHintGroup gestureHintGroup;
    public boolean imeVisible;
    public final NavBarIconResourceMapper keyButtonMapper;
    public final MarqueeLogic marqueeLogic;
    public final NavBarStore navBarStore;
    public final NavBarTipPopup navBarTip;
    public boolean notifyHideKeyboard;
    public final SamsungPluginNavigationBar pluginNavigationBar;
    public final SearcleManager searcleManager;
    public final SettingsHelper settingsHelper;

    public SamsungNavigationBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.displayId = context.getDisplayId();
        NavBarStore navBarStore = (NavBarStore) Dependency.get(NavBarStore.class);
        this.navBarStore = navBarStore;
        LogWrapper logWrapper = new LogWrapper(ModuleType.NAVBAR, null);
        this.settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        NavBarButtonDrawableProvider.Companion.getClass();
        NavBarButtonDrawableProvider navBarButtonDrawableProvider = NavBarButtonDrawableProvider.INSTANCE;
        if (navBarButtonDrawableProvider == null) {
            navBarButtonDrawableProvider = new NavBarButtonDrawableProvider();
            NavBarButtonDrawableProvider.INSTANCE = navBarButtonDrawableProvider;
        }
        NavBarIconResourceMapper navBarIconResourceMapper = new NavBarIconResourceMapper(navBarButtonDrawableProvider, navBarStore, context, logWrapper);
        this.keyButtonMapper = navBarIconResourceMapper;
        this.pluginNavigationBar = new SamsungPluginNavigationBar(this, navBarStore, new ButtonDispatcherProxy(((FrameLayout) this).mContext, this.mButtonDispatchers), ((FrameLayout) this).mContext);
        this.AMOTION_EVENT_FLAG_BYPASSABLE_WINDOW_TYPE = QuickStepContract.SYSUI_STATE_KNOX_HARD_KEY_INTENT;
        this.marqueeLogic = new MarqueeLogic();
        this.navBarTip = new NavBarTipPopup(context, (WindowManager) context.getSystemService("window"), logWrapper);
        this.mContextualButtonGroup.mKeyButtonMapper = navBarIconResourceMapper;
        ContextualButton contextualButton = new ContextualButton(R.id.ime_switcher, this.mLightContext, IconType.TYPE_IME);
        ContextualButton contextualButton2 = new ContextualButton(R.id.accessibility_button, this.mLightContext, IconType.TYPE_A11Y);
        this.mRotationContextButton = new RotationContextButton(R.id.rotate_suggestion, this.mLightContext, R.drawable.ic_samsung_sysbar_rotate_button);
        boolean isGestureMode = this.navBarStateManager.isGestureMode();
        ((ArrayList) this.mContextualButtonGroup.mButtonData).clear();
        if (isGestureMode) {
            this.mContextualButtonGroup.addButton(contextualButton2);
            this.mContextualButtonGroup.addButton(contextualButton);
        } else {
            this.mContextualButtonGroup.addButton(contextualButton);
            this.mContextualButtonGroup.addButton(contextualButton2);
        }
        RotationButtonController rotationButtonController = new RotationButtonController(this.mLightContext, this.mLightIconColor, this.mDarkIconColor, R.drawable.ic_sysbar_rotate_button_ccw_start_0, R.drawable.ic_sysbar_rotate_button_ccw_start_90, R.drawable.ic_sysbar_rotate_button_cw_start_0, R.drawable.ic_sysbar_rotate_button_cw_start_90, new Supplier() { // from class: com.android.systemui.navigationbar.SamsungNavigationBarView$initButtonDispatcherGroup$1
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(SamsungNavigationBarView.this.getDisplay().getRotation());
            }
        });
        this.mRotationButtonController = rotationButtonController;
        SamsungNavigationBarProxy.Companion.getClass();
        SamsungNavigationBarProxy samsungNavigationBarProxy = SamsungNavigationBarProxy.INSTANCE;
        if (samsungNavigationBarProxy == null) {
            samsungNavigationBarProxy = new SamsungNavigationBarProxy();
            SamsungNavigationBarProxy.INSTANCE = samsungNavigationBarProxy;
        }
        rotationButtonController.mBarProxy = samsungNavigationBarProxy;
        rotationButtonController.mSamsungRotateButtonResId = R.drawable.ic_samsung_sysbar_rotate_button;
        rotationButtonController.mSamsungIconCWStart0ResId = R.style.SamsungRotateButtonCWStart0;
        rotationButtonController.mSamsungIconCCWStart0ResId = R.style.SamsungRotateButtonCCWStart0;
        rotationButtonController.mSamsungIconCWStart90ResId = R.style.SamsungRotateButtonCWStart90;
        rotationButtonController.mSamsungIconCCWStart90ResId = R.style.SamsungRotateButtonCCWStart90;
        rotationButtonController.mSamsungIconCWStart180ResId = R.style.SamsungRotateButtonCWDegree180;
        rotationButtonController.mSamsungIconCCWStart180ResId = R.style.SamsungRotateButtonCCWDegree180;
        this.mButtonDispatchers.put(R.id.ime_switcher, contextualButton);
        this.mButtonDispatchers.put(R.id.accessibility_button, contextualButton2);
        this.mButtonDispatchers.put(R.id.hint_left, new ButtonDispatcher(R.id.hint_left));
        this.mButtonDispatchers.put(R.id.hint_center, new ButtonDispatcher(R.id.hint_center));
        this.mButtonDispatchers.put(R.id.hint_right, new ButtonDispatcher(R.id.hint_right));
        this.gestureHintGroup = new GestureHintGroup(this.mButtonDispatchers);
        if (BasicRune.SEARCLE) {
            SearcleManager searcleManager = (SearcleManager) Dependency.get(SearcleManager.class);
            this.searcleManager = searcleManager;
            if (searcleManager != null) {
                NavBarStateManager navBarStateManager = this.navBarStateManager;
                searcleManager.navigationBarView = this;
                searcleManager.tipPopup.navBarStateManager = navBarStateManager;
            }
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final KeyButtonDrawable getBackIconWithAlt(boolean z) {
        if (z) {
            KeyButtonDrawable keyButtonDrawable = this.backAltIcon;
            Intrinsics.checkNotNull(keyButtonDrawable);
            return keyButtonDrawable;
        }
        return this.mBackIcon;
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final IconThemeBase getDefaultIconTheme() {
        return this.keyButtonMapper.getDefaultIconTheme();
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final GestureHintGroup getHintGroup() {
        GestureHintGroup gestureHintGroup = this.gestureHintGroup;
        if (gestureHintGroup == null) {
            return null;
        }
        return gestureHintGroup;
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final ButtonDispatcher getHintView() {
        GestureHintGroup gestureHintGroup = this.gestureHintGroup;
        if (gestureHintGroup == null) {
            gestureHintGroup = null;
        }
        int i = GestureHintGroup.$r8$clinit;
        return (ButtonDispatcher) gestureHintGroup.hintGroup.get(1);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final ExtendableBar getPluginBar() {
        return this.pluginNavigationBar;
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final GestureHintDrawable getSecondaryHomeHandleDrawable(int i) {
        return this.keyButtonMapper.getGestureHandleDrawable(IconType.TYPE_SECONDARY_HOME_HANDLE, i);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void marqueeNavigationBarIcon(int i, int i2) {
        boolean z;
        boolean z2;
        int i3;
        int i4;
        boolean z3;
        int i5;
        int i6;
        int i7;
        if (this.mCurrentView == null) {
            reorient();
            return;
        }
        MarqueeLogic marqueeLogic = this.marqueeLogic;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i8 = marqueeLogic.horizontalShift;
        if (-16 <= i8 && i8 < 17) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            marqueeLogic.horizontalMoved = -marqueeLogic.horizontalMoved;
        }
        int i9 = marqueeLogic.verticalShift;
        if (-10 <= i9 && i9 < 11) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            marqueeLogic.verticalMoved = -marqueeLogic.verticalMoved;
        }
        marqueeLogic.horizontalShift = i8 + marqueeLogic.horizontalMoved;
        marqueeLogic.verticalShift = i9 + marqueeLogic.verticalMoved;
        marqueeLogic.scaleFactor = f / 4.0f;
        MarqueeLogic marqueeLogic2 = this.marqueeLogic;
        if (this.mIsVertical) {
            i3 = marqueeLogic2.verticalShift;
        } else {
            i3 = marqueeLogic2.horizontalShift;
        }
        int ceil = (int) Math.ceil(i3 * marqueeLogic2.scaleFactor);
        MarqueeLogic marqueeLogic3 = this.marqueeLogic;
        if (this.mIsVertical) {
            i4 = marqueeLogic3.horizontalShift;
        } else {
            i4 = marqueeLogic3.verticalShift;
        }
        int ceil2 = (int) Math.ceil(i4 * marqueeLogic3.scaleFactor);
        boolean z4 = this.navBarStateManager.states.canMove;
        this.marqueeLogic.getClass();
        int min = (int) (Math.min(i, i2) * 0.0222d);
        int size = this.mButtonDispatchers.size();
        for (int i10 = 0; i10 < size; i10++) {
            ButtonDispatcher buttonDispatcher = (ButtonDispatcher) this.mButtonDispatchers.valueAt(i10);
            if (z4) {
                Iterator it = ((ArrayList) this.mContextualButtonGroup.mButtonData).iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((ContextualButtonGroup.ButtonData) it.next()).button.equals(buttonDispatcher)) {
                            z3 = true;
                            break;
                        }
                    } else {
                        z3 = false;
                        break;
                    }
                }
                if (z3) {
                    int i11 = this.mCurrentRotation;
                    if (i11 == 1) {
                        i5 = min + ceil2;
                    } else {
                        i5 = ceil2;
                    }
                    if (i11 == 0) {
                        i6 = min + 0;
                    } else {
                        i6 = 0;
                    }
                    if (i11 == 3) {
                        i7 = min + 0;
                    } else {
                        i7 = 0;
                    }
                    Iterator it2 = buttonDispatcher.mViews.iterator();
                    while (it2.hasNext()) {
                        ((View) it2.next()).setPadding(ceil, i5, i6, i7);
                    }
                }
            }
            Iterator it3 = buttonDispatcher.mViews.iterator();
            while (it3.hasNext()) {
                ((View) it3.next()).setPadding(ceil, ceil2, 0, 0);
            }
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final boolean needTouchableInsetsFrame() {
        boolean z;
        if (!this.navBarStateManager.isGestureMode()) {
            return true;
        }
        boolean z2 = this.imeVisible;
        if (z2 && this.canShowHideKeyboard) {
            return true;
        }
        boolean z3 = BasicRune.NAVBAR_MULTI_MODAL_ICON;
        if (z3 && z2) {
            NavBarStateManager navBarStateManager = this.navBarStateManager;
            if (navBarStateManager.canShowKeyboardButtonForRotation(navBarStateManager.states.rotation)) {
                return true;
            }
            NavBarStateManager navBarStateManager2 = this.navBarStateManager;
            int i = navBarStateManager2.states.rotation;
            if (z3 && (!navBarStateManager2.isGestureMode() || (navBarStateManager2.navBarRemoteViewManager.isSetMultimodalButton() && navBarStateManager2.canPlaceKeyboardButton(i)))) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        if (this.navBarStateManager.isNavBarButtonForcedVisible() || this.navBarStateManager.shouldShowSUWStyle()) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView, android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN && this.navBarStateManager.supportLargeCoverScreenNavBar()) {
            DisplayInfo displayInfo = new DisplayInfo();
            ((FrameLayout) this).mContext.getDisplay().getDisplayInfo(displayInfo);
            int i = displayInfo.rotation;
            Rect rect = (Rect) ((NavBarStoreImpl) this.navBarStore).handleEvent(this, new EventTypeFactory.EventType.GetNavBarLargeCoverScreenPadding(i), ((FrameLayout) this).mContext.getDisplayId(), new Rect(0, 0, 0, 0));
            if (rect != null) {
                setPadding(rect.left, rect.top, rect.right, rect.bottom);
            }
            GestureHintGroup gestureHintGroup = this.gestureHintGroup;
            if (gestureHintGroup == null) {
                gestureHintGroup = null;
            }
            gestureHintGroup.setCurrentRotation(i, false);
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((NavBarStoreImpl) this.navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarAttachedToWindow(this, this.mBarTransitions), this.displayId);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        SearcleManager searcleManager;
        super.onConfigurationChanged(configuration);
        updateCurrentView();
        if (BasicRune.SEARCLE && (searcleManager = this.searcleManager) != null && searcleManager != null) {
            SearcleTipPopup searcleTipPopup = searcleManager.tipPopup;
            if (searcleTipPopup.isTipPopupShowing) {
                searcleTipPopup.hideImmediate();
                searcleTipPopup.showSearcleTip(true);
            }
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((NavBarStoreImpl) this.navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarDetachedFromWindow(false, 1, null), this.displayId);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView, android.view.View
    public final void onFinishInflate() {
        NavigationBarInflaterView navigationBarInflaterView = (NavigationBarInflaterView) findViewById(R.id.navigation_inflater);
        this.mNavigationInflaterView = navigationBarInflaterView;
        navigationBarInflaterView.setButtonDispatchers(this.mButtonDispatchers);
        updateOrientationViews();
        updateIcons(Configuration.EMPTY);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void onImeVisibilityChanged(boolean z) {
        boolean z2;
        super.onImeVisibilityChanged(z);
        this.imeVisible = z;
        if (z) {
            NavBarStateManager navBarStateManager = this.navBarStateManager;
            int i = navBarStateManager.states.rotation;
            if (navBarStateManager.isGestureMode() && (!navBarStateManager.settingsHelper.isNavigationBarHideKeyboardButtonEnabled() || !navBarStateManager.canPlaceKeyboardButton(i))) {
                z2 = false;
            } else {
                z2 = true;
            }
            this.canShowHideKeyboard = z2;
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.navBarStateManager.isGestureMode() && (motionEvent.getFlags() & this.AMOTION_EVENT_FLAG_BYPASSABLE_WINDOW_TYPE) != 0) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        NavBarTipPopup navBarTipPopup = this.navBarTip;
        int measuredWidth = getMeasuredWidth();
        if (navBarTipPopup.navBarWidth != measuredWidth && navBarTipPopup.tipLayout.getTag() != null) {
            navBarTipPopup.hide();
        }
        navBarTipPopup.navBarWidth = measuredWidth;
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        boolean z = this.navBarStateManager.states.canMove;
        int stableInsetLeft = getRootWindowInsets().getStableInsetLeft();
        int stableInsetRight = getRootWindowInsets().getStableInsetRight();
        int dimensionPixelSize = getResources().getDimensionPixelSize(android.R.dimen.text_size_display_1_material);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(android.R.dimen.text_line_spacing_multiplier_material);
        boolean isGestureMode = this.navBarStateManager.isGestureMode();
        if (z && (i3 = this.mCurrentRotation) != 0 && i3 != 2) {
            if (i3 == 1) {
                this.mBarTransitions.mBarBackground.mFrame = new Rect(size - dimensionPixelSize, 0, size, size2);
            } else if (i3 == 3) {
                this.mBarTransitions.mBarBackground.mFrame = new Rect(0, 0, dimensionPixelSize, size2);
            }
        } else {
            if (isGestureMode) {
                stableInsetLeft = 0;
                stableInsetRight = 0;
            }
            this.mBarTransitions.mBarBackground.mFrame = new Rect(stableInsetLeft, dimensionPixelSize2 - dimensionPixelSize, size - stableInsetRight, size2);
        }
        super.onMeasure(i, i2);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void onScreenStateChanged(boolean z) {
        this.mScreenOn = z;
        if (!z) {
            if (BasicRune.NAVBAR_ICON_MOVEMENT) {
                ((NavBarStoreImpl) this.navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarIconMarquee(false, 1, null), getContext().getDisplay().getDisplayId());
            }
            NavBarTipPopup navBarTipPopup = this.navBarTip;
            if (navBarTipPopup.isTipPopupShowing) {
                navBarTipPopup.hide();
            }
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void reInflateNavBarLayout() {
        NavigationBarInflaterView navigationBarInflaterView = this.mNavigationInflaterView;
        if (navigationBarInflaterView != null) {
            navigationBarInflaterView.createInflaters();
        }
        NavigationBarInflaterView navigationBarInflaterView2 = this.mNavigationInflaterView;
        if (navigationBarInflaterView2 != null) {
            navigationBarInflaterView2.updateLayoutProviderView();
        }
        updateCurrentView();
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void reorient() {
        super.reorient();
        if (BasicRune.NAVBAR_ICON_MOVEMENT) {
            ((NavBarStoreImpl) this.navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnNavBarIconMarquee(false, 1, null), getContext().getDisplay().getDisplayId());
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void setDefaultIconTheme(IconThemeBase iconThemeBase) {
        this.keyButtonMapper.setPreloadedIconSet(iconThemeBase);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void setIconThemeAlpha(float f) {
        boolean z;
        NavigationBarTransitions navigationBarTransitions = this.mBarTransitions;
        if (navigationBarTransitions != null) {
            if (f == 1.0f) {
                z = true;
            } else {
                z = false;
            }
            navigationBarTransitions.mLightsOutDisabled = !z;
        }
        this.mVertical.findViewById(R.id.nav_buttons).setAlpha(f);
        this.mHorizontal.findViewById(R.id.nav_buttons).setAlpha(f);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void showA11ySwipeUpTipPopup() {
        final NavBarTipPopup navBarTipPopup = this.navBarTip;
        final boolean semIsScreenReaderEnabled = ((AccessibilityManager) getContext().getSystemService("accessibility")).semIsScreenReaderEnabled();
        navBarTipPopup.handler.post(new Runnable() { // from class: com.android.systemui.navigationbar.NavBarTipPopup$showA11ySwipeUpTip$1
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                boolean z;
                NavBarTipPopup navBarTipPopup2 = NavBarTipPopup.this;
                if (semIsScreenReaderEnabled) {
                    i = R.string.gesture_accessibility_guide_gesture_onboarding_voice_assistant_on;
                } else {
                    i = R.string.gesture_accessibility_guide_gesture_onboarding;
                }
                SemTipPopup semTipPopup = navBarTipPopup2.tipPopup;
                if (semTipPopup != null && semTipPopup.isShowing()) {
                    navBarTipPopup2.hide();
                }
                Integer valueOf = Integer.valueOf(i);
                View view = navBarTipPopup2.tipLayout;
                view.setTag(valueOf);
                Context context = navBarTipPopup2.context;
                int i2 = context.getResources().getConfiguration().orientation;
                if (!navBarTipPopup2.isTipPopupShowing && i2 == 1) {
                    int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.navbar_tip_margin_start);
                    try {
                        WindowManager windowManager = navBarTipPopup2.windowManager;
                        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, dimensionPixelSize, 0, 2008, 520, -3);
                        layoutParams.semAddPrivateFlags(16);
                        layoutParams.setTitle("NavBarTip");
                        layoutParams.gravity = 83;
                        windowManager.addView(view, layoutParams);
                    } catch (Exception unused) {
                    }
                    navBarTipPopup2.currentMessage = i;
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    NavBarTipPopupUtil navBarTipPopupUtil = NavBarTipPopupUtil.INSTANCE;
                    Context context2 = NavBarTipPopup.this.context;
                    navBarTipPopupUtil.getClass();
                    Prefs.putInt(context2, "NavigationBarAccessibilityShortcutTipCount", Prefs.getInt(context2, "NavigationBarAccessibilityShortcutTipCount", 0) + 1);
                }
            }
        });
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void showPinningEscapeToast() {
        this.mScreenPinningNotify.showEscapeToast(this.navBarStateManager.isGestureMode(), isRecentsButtonVisible());
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateActiveIndicatorSpringParams(float f, float f2) {
        EdgeBackGestureHandler edgeBackGestureHandler = this.mEdgeBackGestureHandler;
        if (edgeBackGestureHandler.mIsNewBackAffordanceEnabled) {
            edgeBackGestureHandler.mEdgeBackPlugin.updateActiveIndicatorSpringParams(f, f2);
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateBackPanelColor(int i, int i2, int i3, int i4) {
        EdgeBackGestureHandler edgeBackGestureHandler = this.mEdgeBackGestureHandler;
        if (edgeBackGestureHandler.mIsNewBackAffordanceEnabled) {
            edgeBackGestureHandler.mEdgeBackPlugin.updateBackPanelColor(i, i2, i3, i4);
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateCurrentView() {
        boolean z;
        View view;
        this.mHorizontal.setVisibility(8);
        this.mVertical.setVisibility(8);
        updateCurrentRotation();
        NavBarStateManager navBarStateManager = this.navBarStateManager;
        if (!navBarStateManager.states.supportPhoneLayoutProvider && !navBarStateManager.isGestureMode()) {
            int i = this.mCurrentRotation;
            z = true;
            if (i != 1 && i != 3) {
                z = false;
            }
        } else {
            z = this.mIsVertical;
        }
        if (z) {
            view = this.mVertical;
        } else {
            view = this.mHorizontal;
        }
        this.mCurrentView = view;
        view.setVisibility(0);
        NavigationBarInflaterView navigationBarInflaterView = this.mNavigationInflaterView;
        if (z != navigationBarInflaterView.mIsVertical) {
            navigationBarInflaterView.mIsVertical = z;
        }
        navigationBarInflaterView.updateButtonDispatchersCurrentView();
        updateLayoutTransitionsEnabled();
        boolean z2 = BasicRune.NAVBAR_REMOTEVIEW;
        if (z2 && z2) {
            this.currentRemoteView = this.mCurrentView.findViewById(R.id.nav_bar_widget);
            updateRemoteViewContainer();
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateDisabledSystemUiStateFlags(SysUiState sysUiState) {
        boolean z;
        super.updateDisabledSystemUiStateFlags(sysUiState);
        if ((this.mDisabledFlags & QuickStepContract.SYSUI_STATE_BACK_DISABLED) != 0) {
            z = true;
        } else {
            z = false;
        }
        sysUiState.setFlag(4194304L, z);
        sysUiState.commitUpdate(((FrameLayout) this).mContext.getDisplayId());
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateGestureHintGroupRotation() {
        if (this.navBarStateManager.isBottomGestureMode(false)) {
            GestureHintGroup gestureHintGroup = this.gestureHintGroup;
            if (gestureHintGroup == null) {
                gestureHintGroup = null;
            }
            gestureHintGroup.setCurrentRotation(this.mCurrentRotation, this.navBarStateManager.states.canMove);
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateHintVisibility(boolean z, boolean z2, boolean z3) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        if (this.settingsHelper.isNavBarButtonOrderDefault()) {
            i = 0;
        } else {
            i = 2;
        }
        int i6 = 2 - i;
        GestureHintGroup gestureHintGroup = this.gestureHintGroup;
        if (gestureHintGroup == null) {
            gestureHintGroup = null;
        }
        ButtonDispatcher buttonDispatcher = (ButtonDispatcher) gestureHintGroup.hintGroup.get(1);
        if (z2) {
            i2 = 0;
        } else {
            i2 = 4;
        }
        buttonDispatcher.setVisibility(i2);
        ArrayList arrayList = gestureHintGroup.hintGroup;
        ButtonDispatcher buttonDispatcher2 = (ButtonDispatcher) arrayList.get(i);
        if (z) {
            i3 = 0;
        } else {
            i3 = 4;
        }
        buttonDispatcher2.setVisibility(i3);
        ButtonDispatcher buttonDispatcher3 = (ButtonDispatcher) arrayList.get(i6);
        if (z3) {
            i4 = 0;
        } else {
            i4 = 4;
        }
        buttonDispatcher3.setVisibility(i4);
        ButtonDispatcher homeHandle = getHomeHandle();
        if (!z && !z2) {
            i5 = 4;
        }
        homeHandle.setVisibility(i5);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateIcons(Configuration configuration) {
        boolean z;
        boolean z2;
        super.updateIcons(configuration);
        boolean z3 = false;
        if (configuration.densityDpi != this.mConfiguration.densityDpi) {
            z = true;
        } else {
            z = false;
        }
        if (configuration.getLayoutDirection() != this.mConfiguration.getLayoutDirection()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z || z2) {
            NavBarIconResourceMapper navBarIconResourceMapper = this.keyButtonMapper;
            if (this.mConfiguration.getLayoutDirection() == 1) {
                z3 = true;
            }
            navBarIconResourceMapper.isRTL = z3;
            this.mRecentIcon = navBarIconResourceMapper.getButtonDrawable(IconType.TYPE_RECENT);
            this.mHomeDefaultIcon = navBarIconResourceMapper.getButtonDrawable(IconType.TYPE_HOME);
            this.mBackIcon = navBarIconResourceMapper.getButtonDrawable(IconType.TYPE_BACK);
            this.backAltIcon = navBarIconResourceMapper.getButtonDrawable(IconType.TYPE_BACK_ALT);
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateIconsAndHints() {
        updateIcons(Configuration.EMPTY);
        updateNavButtonIcons();
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateLayoutProviderView() {
        this.mNavigationInflaterView.updateLayoutProviderView();
        updateCurrentView();
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateNavButtonIcons() {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        super.updateNavButtonIcons();
        boolean z9 = true;
        if (BasicRune.NAVBAR_GESTURE) {
            if ((this.mNavigationIconHints & 1) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (BasicRune.NAVBAR_MULTI_MODAL_ICON_LARGE_COVER && ((FrameLayout) this).mContext.getDisplayId() == 1 && this.navBarStateManager.canShowButtonInLargeCoverIme()) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (this.navBarStateManager.isGestureMode()) {
                NavigationHandle navigationHandle = (NavigationHandle) getHomeHandle().mCurrentView;
                if (navigationHandle != null) {
                    navigationHandle.setImageDrawable(this.keyButtonMapper.getGestureHandleDrawable(IconType.TYPE_GESTURE_HANDLE_HINT, 0));
                }
                GestureHintGroup gestureHintGroup = this.gestureHintGroup;
                if (gestureHintGroup == null) {
                    gestureHintGroup = null;
                }
                NavBarIconResourceMapper navBarIconResourceMapper = this.keyButtonMapper;
                Iterator it = gestureHintGroup.hintGroup.iterator();
                while (it.hasNext()) {
                    NavigationHintHandle navigationHintHandle = (NavigationHintHandle) ((ButtonDispatcher) it.next()).mCurrentView;
                    if (navigationHintHandle != null) {
                        navigationHintHandle.iconResourceMapper = navBarIconResourceMapper;
                    }
                }
                gestureHintGroup.setCurrentRotation(this.mCurrentRotation, this.navBarStateManager.states.canMove);
                if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN && ((FrameLayout) this).mContext.getDisplayId() == 1 && z2 && z3) {
                    ((NavBarStoreImpl) this.navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnSetGestureHintVisibility(false, false, false), this.displayId);
                } else {
                    NavBarStore navBarStore = this.navBarStore;
                    if (getRecentsButton().getVisibility() == 0) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    int i2 = this.mDisabledFlags;
                    if ((2097152 & i2) == 0) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if ((i2 & QuickStepContract.SYSUI_STATE_BACK_DISABLED) == 0) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    ((NavBarStoreImpl) navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnSetGestureHintVisibility(z6, z7, z8), this.displayId);
                }
                NavigationBarTransitions navigationBarTransitions = this.mBarTransitions;
                navigationBarTransitions.applyDarkIntensity(navigationBarTransitions.mLightTransitionsController.mDarkIntensity);
            }
            if (z2) {
                NavBarStateManager navBarStateManager = this.navBarStateManager;
                int i3 = navBarStateManager.states.rotation;
                if (navBarStateManager.isGestureMode() && (!navBarStateManager.settingsHelper.isNavigationBarHideKeyboardButtonEnabled() || !navBarStateManager.canPlaceKeyboardButton(i3))) {
                    z5 = false;
                } else {
                    z5 = true;
                }
                this.canShowHideKeyboard = z5;
                if (!z5) {
                    getBackButton().setVisibility(4);
                }
                NavBarStateManager navBarStateManager2 = this.navBarStateManager;
                if (!navBarStateManager2.canShowKeyboardButtonForRotation(navBarStateManager2.states.rotation)) {
                    this.mContextualButtonGroup.setButtonVisibility(R.id.ime_switcher, false);
                }
            }
            if (z2 && this.canShowHideKeyboard) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (this.navBarStateManager.isGestureMode() && this.notifyHideKeyboard != z4) {
                this.notifyHideKeyboard = z4;
                ShadeViewController shadeViewController = this.mPanelView;
                if (shadeViewController != null) {
                    ((NotificationPanelViewController) shadeViewController).mNavBarKeyboardButtonShowing = z4;
                }
            }
        }
        if (BasicRune.NAVBAR_REMOTEVIEW && this.currentRemoteView != null) {
            updateRemoteViewContainerVisibility();
            ((NavBarStoreImpl) this.navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnUpdateSysUiStateFlag(false, 1, null));
        }
        if (((NavBarStoreImpl) this.navBarStore).pluginBarInteractionManager.pluginNavigationBar != null) {
            z = true;
        } else {
            z = false;
        }
        if (z && !this.navBarStateManager.isGestureMode()) {
            if (getBackButton().getVisibility() != 0 || getHomeButton().getVisibility() != 0) {
                z9 = false;
            }
            Iterator it2 = CollectionsKt__CollectionsKt.listOf(Integer.valueOf(R.id.navbar_pin), Integer.valueOf(R.id.nav_custom_key_1), Integer.valueOf(R.id.nav_custom_key_2), Integer.valueOf(R.id.nav_custom_key_3), Integer.valueOf(R.id.nav_custom_key_4), Integer.valueOf(R.id.nav_custom_key_5)).iterator();
            while (it2.hasNext()) {
                ButtonDispatcher buttonDispatcher = (ButtonDispatcher) this.mButtonDispatchers.get(((Number) it2.next()).intValue());
                if (buttonDispatcher != null) {
                    if (z9) {
                        i = 0;
                    } else {
                        i = 4;
                    }
                    buttonDispatcher.setVisibility(i);
                }
            }
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateNavigationBarColor() {
        int color;
        NavBarStateManager navBarStateManager = this.navBarStateManager;
        ColorSetting colorSetting = (ColorSetting) navBarStateManager.interactorFactory.get(ColorSetting.class);
        if (colorSetting != null) {
            color = colorSetting.getNavigationBarColor();
        } else {
            color = navBarStateManager.context.getColor(R.color.light_navbar_background_opaque);
        }
        Integer valueOf = Integer.valueOf(color);
        navBarStateManager.logNavBarStates(valueOf, "getNavigationBarColor");
        Intrinsics.checkNotNull(valueOf);
        int intValue = valueOf.intValue();
        NavigationBarTransitions navigationBarTransitions = this.mBarTransitions;
        if (navigationBarTransitions != null) {
            navigationBarTransitions.mBarBackground.updateOpaqueColor(intValue);
        }
        Settings.Global.putInt(this.settingsHelper.mResolver, "navigationbar_current_color", intValue);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateOpaqueColor(int i) {
        this.mBarTransitions.mBarBackground.updateOpaqueColor(i);
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void updateRemoteViewContainer() {
        LinearLayout linearLayout;
        float f;
        boolean z;
        LightBarTransitionsController lightBarTransitionsController;
        View view = this.currentRemoteView;
        if (view == null) {
            return;
        }
        LinearLayout linearLayout2 = null;
        if (view != null) {
            linearLayout = (LinearLayout) view.findViewById(R.id.left_remoteview);
        } else {
            linearLayout = null;
        }
        View view2 = this.currentRemoteView;
        if (view2 != null) {
            linearLayout2 = (LinearLayout) view2.findViewById(R.id.right_remoteview);
        }
        LinearLayout linearLayout3 = linearLayout2;
        NavigationBarTransitions navigationBarTransitions = this.mBarTransitions;
        if (navigationBarTransitions != null && (lightBarTransitionsController = navigationBarTransitions.mLightTransitionsController) != null) {
            f = lightBarTransitionsController.mDarkIntensity;
        } else {
            f = 0.0f;
        }
        float f2 = f;
        updateRemoteViewContainerVisibility();
        if (linearLayout != null && linearLayout3 != null) {
            NavBarStore navBarStore = this.navBarStore;
            if (this.mContextualButtonGroup.getVisibleContextButton() != null) {
                z = true;
            } else {
                z = false;
            }
            ((NavBarStoreImpl) navBarStore).handleEvent(this, new EventTypeFactory.EventType.OnUpdateRemoteViewContainer(linearLayout, linearLayout3, z, f2, this.displayId));
        }
    }

    public final void updateRemoteViewContainerVisibility() {
        int i;
        int i2;
        boolean z;
        int i3;
        NavBarRemoteViewManager navBarRemoteViewManager = (NavBarRemoteViewManager) ((NavBarStoreImpl) this.navBarStore).getModule(NavBarRemoteViewManager.class, this.displayId);
        if (navBarRemoteViewManager != null) {
            View view = this.currentRemoteView;
            int i4 = 4;
            if (view != null) {
                ButtonDispatcher buttonDispatcher = (ButtonDispatcher) this.mButtonDispatchers.get(R.id.ime_switcher);
                if (buttonDispatcher != null && buttonDispatcher.getVisibility() == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z && (!this.navBarStateManager.isGestureMode() || navBarRemoteViewManager.showInGestureMode)) {
                    i3 = 0;
                } else {
                    i3 = 4;
                }
                view.setVisibility(i3);
            }
            int i5 = this.displayId;
            if (navBarRemoteViewManager.showInGestureMode) {
                if (((NavBarStoreImpl) navBarRemoteViewManager.getNavBarStore()).getNavStateManager(i5).states.canMove && ((NavBarStoreImpl) navBarRemoteViewManager.getNavBarStore()).getNavStateManager(i5).states.rotation == 1) {
                    i = 1 - navBarRemoteViewManager.adaptivePosition;
                } else {
                    i = navBarRemoteViewManager.adaptivePosition;
                }
                LinearLayout linearLayout = navBarRemoteViewManager.leftContainer;
                if (linearLayout != null) {
                    if (i == 0) {
                        i2 = 0;
                    } else {
                        i2 = 4;
                    }
                    linearLayout.setVisibility(i2);
                }
                LinearLayout linearLayout2 = navBarRemoteViewManager.rightContainer;
                if (linearLayout2 != null) {
                    if (i == 1) {
                        i4 = 0;
                    }
                    linearLayout2.setVisibility(i4);
                }
            }
        }
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void orientBackButton(KeyButtonDrawable keyButtonDrawable) {
    }

    @Override // com.android.systemui.navigationbar.NavigationBarView
    public final void orientHomeButton(KeyButtonDrawable keyButtonDrawable) {
    }
}
