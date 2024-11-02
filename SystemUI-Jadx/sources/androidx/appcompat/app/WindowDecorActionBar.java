package androidx.appcompat.app;

import android.R;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.R$styleable;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.app.WindowDecorActionBar;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.ViewPropertyAnimatorCompatSet;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ToolbarWidgetWrapper;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback {
    public static final Interpolator sHideInterpolator = new AccelerateInterpolator();
    public static final Interpolator sShowInterpolator = new DecelerateInterpolator();
    public ActionModeImpl mActionMode;
    public ActionBarContainer mContainerView;
    public boolean mContentAnimations;
    public final View mContentView;
    public Context mContext;
    public ActionBarContextView mContextView;
    public int mCurWindowVisibility;
    public ViewPropertyAnimatorCompatSet mCurrentShowAnim;
    public DecorToolbar mDecorToolbar;
    public ActionModeImpl mDeferredDestroyActionMode;
    public ActionMode.Callback mDeferredModeDestroyCallback;
    public boolean mDisplayHomeAsUpSet;
    public boolean mHasEmbeddedTabs;
    public boolean mHiddenBySystem;
    public final AnonymousClass1 mHideListener;
    public boolean mHideOnContentScroll;
    public boolean mLastMenuVisibility;
    public final ArrayList mMenuVisibilityListeners;
    public boolean mNowShowing;
    public ActionBarOverlayLayout mOverlayLayout;
    public boolean mShowHideAnimationEnabled;
    public final AnonymousClass2 mShowListener;
    public boolean mShowingForMode;
    public Context mThemedContext;
    public final AnonymousClass3 mUpdateListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.appcompat.app.WindowDecorActionBar$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ViewPropertyAnimatorListenerAdapter {
        public AnonymousClass1() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public final void onAnimationEnd(View view) {
            View view2;
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.mContentAnimations && (view2 = windowDecorActionBar.mContentView) != null) {
                view2.setTranslationY(0.0f);
                windowDecorActionBar.mContainerView.setTranslationY(0.0f);
            }
            windowDecorActionBar.mContainerView.setVisibility(8);
            ActionBarContainer actionBarContainer = windowDecorActionBar.mContainerView;
            actionBarContainer.mIsTransitioning = false;
            actionBarContainer.setDescendantFocusability(262144);
            windowDecorActionBar.mCurrentShowAnim = null;
            ActionMode.Callback callback = windowDecorActionBar.mDeferredModeDestroyCallback;
            if (callback != null) {
                callback.onDestroyActionMode(windowDecorActionBar.mDeferredDestroyActionMode);
                windowDecorActionBar.mDeferredDestroyActionMode = null;
                windowDecorActionBar.mDeferredModeDestroyCallback = null;
            }
            ActionBarOverlayLayout actionBarOverlayLayout = windowDecorActionBar.mOverlayLayout;
            if (actionBarOverlayLayout != null) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api20Impl.requestApplyInsets(actionBarOverlayLayout);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.appcompat.app.WindowDecorActionBar$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends ViewPropertyAnimatorListenerAdapter {
        public AnonymousClass2() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public final void onAnimationEnd(View view) {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            windowDecorActionBar.mCurrentShowAnim = null;
            windowDecorActionBar.mContainerView.requestLayout();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.appcompat.app.WindowDecorActionBar$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 {
        public AnonymousClass3() {
        }
    }

    public WindowDecorActionBar(Activity activity, boolean z) {
        new ArrayList();
        this.mMenuVisibilityListeners = new ArrayList();
        this.mCurWindowVisibility = 0;
        this.mContentAnimations = true;
        this.mNowShowing = true;
        this.mHideListener = new AnonymousClass1();
        this.mShowListener = new AnonymousClass2();
        this.mUpdateListener = new AnonymousClass3();
        View decorView = activity.getWindow().getDecorView();
        init(decorView);
        if (z) {
            return;
        }
        this.mContentView = decorView.findViewById(R.id.content);
    }

    public final void animateToMode(boolean z) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2;
        long j;
        if (z) {
            if (!this.mShowingForMode) {
                this.mShowingForMode = true;
                updateVisibility(false);
            }
        } else if (this.mShowingForMode) {
            this.mShowingForMode = false;
            updateVisibility(false);
        }
        ActionBarContainer actionBarContainer = this.mContainerView;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        if (ViewCompat.Api19Impl.isLaidOut(actionBarContainer)) {
            if (z) {
                ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.mDecorToolbar;
                viewPropertyAnimatorCompat = ViewCompat.animate(toolbarWidgetWrapper.mToolbar);
                viewPropertyAnimatorCompat.alpha(0.0f);
                viewPropertyAnimatorCompat.setDuration(100L);
                viewPropertyAnimatorCompat.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.2
                    public boolean mCanceled = false;
                    public final /* synthetic */ int val$visibility;

                    public AnonymousClass2(int i) {
                        r2 = i;
                    }

                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public final void onAnimationCancel(View view) {
                        this.mCanceled = true;
                    }

                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public final void onAnimationEnd(View view) {
                        if (!this.mCanceled) {
                            ToolbarWidgetWrapper.this.mToolbar.setVisibility(r2);
                        }
                    }

                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public final void onAnimationStart(View view) {
                        ToolbarWidgetWrapper.this.mToolbar.setVisibility(0);
                    }
                });
                viewPropertyAnimatorCompat2 = this.mContextView.setupAnimatorToVisibility(0, 200L);
            } else {
                ToolbarWidgetWrapper toolbarWidgetWrapper2 = (ToolbarWidgetWrapper) this.mDecorToolbar;
                ViewPropertyAnimatorCompat animate = ViewCompat.animate(toolbarWidgetWrapper2.mToolbar);
                animate.alpha(1.0f);
                animate.setDuration(200L);
                animate.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.widget.ToolbarWidgetWrapper.2
                    public boolean mCanceled = false;
                    public final /* synthetic */ int val$visibility;

                    public AnonymousClass2(int i) {
                        r2 = i;
                    }

                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public final void onAnimationCancel(View view) {
                        this.mCanceled = true;
                    }

                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public final void onAnimationEnd(View view) {
                        if (!this.mCanceled) {
                            ToolbarWidgetWrapper.this.mToolbar.setVisibility(r2);
                        }
                    }

                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public final void onAnimationStart(View view) {
                        ToolbarWidgetWrapper.this.mToolbar.setVisibility(0);
                    }
                });
                viewPropertyAnimatorCompat = this.mContextView.setupAnimatorToVisibility(8, 100L);
                viewPropertyAnimatorCompat2 = animate;
            }
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
            ArrayList arrayList = viewPropertyAnimatorCompatSet.mAnimators;
            arrayList.add(viewPropertyAnimatorCompat);
            View view = (View) viewPropertyAnimatorCompat.mView.get();
            if (view != null) {
                j = view.animate().getDuration();
            } else {
                j = 0;
            }
            View view2 = (View) viewPropertyAnimatorCompat2.mView.get();
            if (view2 != null) {
                view2.animate().setStartDelay(j);
            }
            arrayList.add(viewPropertyAnimatorCompat2);
            viewPropertyAnimatorCompatSet.start();
            return;
        }
        if (z) {
            ((ToolbarWidgetWrapper) this.mDecorToolbar).mToolbar.setVisibility(4);
            this.mContextView.setVisibility(0);
        } else {
            ((ToolbarWidgetWrapper) this.mDecorToolbar).mToolbar.setVisibility(0);
            this.mContextView.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean collapseActionView() {
        boolean z;
        MenuItemImpl menuItemImpl;
        DecorToolbar decorToolbar = this.mDecorToolbar;
        if (decorToolbar != null) {
            Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = ((ToolbarWidgetWrapper) decorToolbar).mToolbar.mExpandedMenuPresenter;
            if (expandedActionViewMenuPresenter != null && expandedActionViewMenuPresenter.mCurrentExpandedItem != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter2 = ((ToolbarWidgetWrapper) decorToolbar).mToolbar.mExpandedMenuPresenter;
                if (expandedActionViewMenuPresenter2 == null) {
                    menuItemImpl = null;
                } else {
                    menuItemImpl = expandedActionViewMenuPresenter2.mCurrentExpandedItem;
                }
                if (menuItemImpl != null) {
                    menuItemImpl.collapseActionView();
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void dispatchMenuVisibilityChanged(boolean z) {
        if (z == this.mLastMenuVisibility) {
            return;
        }
        this.mLastMenuVisibility = z;
        ArrayList arrayList = this.mMenuVisibilityListeners;
        if (arrayList.size() <= 0) {
            return;
        }
        ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m(arrayList.get(0));
        throw null;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final int getDisplayOptions() {
        return ((ToolbarWidgetWrapper) this.mDecorToolbar).mDisplayOpts;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final Context getThemedContext() {
        if (this.mThemedContext == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(com.android.systemui.R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.mThemedContext = new ContextThemeWrapper(this.mContext, i);
            } else {
                this.mThemedContext = this.mContext;
            }
        }
        return this.mThemedContext;
    }

    public final void init(View view) {
        String str;
        DecorToolbar decorToolbar;
        boolean z;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.android.systemui.R.id.decor_content_parent);
        this.mOverlayLayout = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.mActionBarVisibilityCallback = this;
            if (actionBarOverlayLayout.getWindowToken() != null) {
                ((WindowDecorActionBar) actionBarOverlayLayout.mActionBarVisibilityCallback).mCurWindowVisibility = actionBarOverlayLayout.mWindowVisibility;
                int i = actionBarOverlayLayout.mLastSystemUiVisibility;
                if (i != 0) {
                    actionBarOverlayLayout.onWindowSystemUiVisibilityChanged(i);
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    ViewCompat.Api20Impl.requestApplyInsets(actionBarOverlayLayout);
                }
            }
        }
        KeyEvent.Callback findViewById = view.findViewById(com.android.systemui.R.id.action_bar);
        if (findViewById instanceof DecorToolbar) {
            decorToolbar = (DecorToolbar) findViewById;
        } else if (findViewById instanceof Toolbar) {
            Toolbar toolbar = (Toolbar) findViewById;
            if (toolbar.mWrapper == null) {
                toolbar.mWrapper = new ToolbarWidgetWrapper(toolbar, true);
            }
            decorToolbar = toolbar.mWrapper;
        } else {
            if (findViewById != null) {
                str = findViewById.getClass().getSimpleName();
            } else {
                str = "null";
            }
            throw new IllegalStateException("Can't make a decor toolbar out of ".concat(str));
        }
        this.mDecorToolbar = decorToolbar;
        this.mContextView = (ActionBarContextView) view.findViewById(com.android.systemui.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.android.systemui.R.id.action_bar_container);
        this.mContainerView = actionBarContainer;
        DecorToolbar decorToolbar2 = this.mDecorToolbar;
        if (decorToolbar2 != null && this.mContextView != null && actionBarContainer != null) {
            Context context = ((ToolbarWidgetWrapper) decorToolbar2).mToolbar.getContext();
            this.mContext = context;
            if ((((ToolbarWidgetWrapper) this.mDecorToolbar).mDisplayOpts & 4) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.mDisplayHomeAsUpSet = true;
            }
            ActionBarPolicy.get(context);
            setHomeButtonEnabled();
            setHasEmbeddedTabs();
            TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(null, R$styleable.ActionBar, com.android.systemui.R.attr.actionBarStyle, 0);
            if (obtainStyledAttributes.getBoolean(14, false)) {
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.mOverlayLayout;
                if (actionBarOverlayLayout2.mOverlayMode) {
                    this.mHideOnContentScroll = true;
                    if (true != actionBarOverlayLayout2.mHideOnContentScroll) {
                        actionBarOverlayLayout2.mHideOnContentScroll = true;
                    }
                } else {
                    throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
                }
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
            if (dimensionPixelSize != 0) {
                ActionBarContainer actionBarContainer2 = this.mContainerView;
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api21Impl.setElevation(actionBarContainer2, dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        throw new IllegalStateException("WindowDecorActionBar can only be used with a compatible window decor layout");
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void onConfigurationChanged() {
        ActionBarPolicy.get(this.mContext);
        setHasEmbeddedTabs();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        MenuBuilder menuBuilder;
        int i2;
        ActionModeImpl actionModeImpl = this.mActionMode;
        if (actionModeImpl == null || (menuBuilder = actionModeImpl.mMenu) == null) {
            return false;
        }
        if (keyEvent != null) {
            i2 = keyEvent.getDeviceId();
        } else {
            i2 = -1;
        }
        boolean z = true;
        if (KeyCharacterMap.load(i2).getKeyboardType() == 1) {
            z = false;
        }
        menuBuilder.setQwertyMode(z);
        return menuBuilder.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setDefaultDisplayHomeAsUpEnabled(boolean z) {
        if (!this.mDisplayHomeAsUpSet) {
            setDisplayHomeAsUpEnabled(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setDisplayHomeAsUpEnabled(boolean z) {
        int i;
        if (z) {
            i = 4;
        } else {
            i = 0;
        }
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.mDecorToolbar;
        int i2 = toolbarWidgetWrapper.mDisplayOpts;
        this.mDisplayHomeAsUpSet = true;
        toolbarWidgetWrapper.setDisplayOptions((i & 4) | ((-5) & i2));
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setDisplayShowTitleEnabled(boolean z) {
        int i;
        if (z) {
            i = 8;
        } else {
            i = 0;
        }
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.mDecorToolbar;
        toolbarWidgetWrapper.setDisplayOptions((i & 8) | ((-9) & toolbarWidgetWrapper.mDisplayOpts));
    }

    public final void setHasEmbeddedTabs() {
        this.mHasEmbeddedTabs = false;
        ((ToolbarWidgetWrapper) this.mDecorToolbar).setEmbeddedTabView();
        ActionBarContainer actionBarContainer = this.mContainerView;
        ScrollingTabContainerView scrollingTabContainerView = actionBarContainer.mTabContainer;
        if (scrollingTabContainerView != null) {
            actionBarContainer.removeView(scrollingTabContainerView);
        }
        actionBarContainer.mTabContainer = null;
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.mDecorToolbar;
        toolbarWidgetWrapper.getClass();
        boolean z = this.mHasEmbeddedTabs;
        Toolbar toolbar = toolbarWidgetWrapper.mToolbar;
        toolbar.mCollapsible = false;
        toolbar.requestLayout();
        ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
        boolean z2 = this.mHasEmbeddedTabs;
        actionBarOverlayLayout.mHasNonEmbeddedTabs = false;
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setHomeButtonEnabled() {
        this.mDecorToolbar.getClass();
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setShowHideAnimationEnabled(boolean z) {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet;
        this.mShowHideAnimationEnabled = z;
        if (!z && (viewPropertyAnimatorCompatSet = this.mCurrentShowAnim) != null) {
            viewPropertyAnimatorCompatSet.cancel();
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setTitle() {
        setTitle(this.mContext.getString(com.android.systemui.R.string.avatar_picker_title));
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setWindowTitle(CharSequence charSequence) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.mDecorToolbar;
        if (!toolbarWidgetWrapper.mTitleSet) {
            toolbarWidgetWrapper.mTitle = charSequence;
            if ((toolbarWidgetWrapper.mDisplayOpts & 8) != 0) {
                Toolbar toolbar = toolbarWidgetWrapper.mToolbar;
                toolbar.setTitle(charSequence);
                if (toolbarWidgetWrapper.mTitleSet) {
                    ViewCompat.setAccessibilityPaneTitle(toolbar.getRootView(), charSequence);
                }
            }
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final ActionMode startActionMode(AppCompatDelegateImpl.ActionModeCallbackWrapperV9 actionModeCallbackWrapperV9) {
        ActionModeImpl actionModeImpl = this.mActionMode;
        if (actionModeImpl != null) {
            actionModeImpl.finish();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
        if (actionBarOverlayLayout.mHideOnContentScroll) {
            actionBarOverlayLayout.mHideOnContentScroll = false;
            actionBarOverlayLayout.haltActionBarHideOffsetAnimations();
            actionBarOverlayLayout.haltActionBarHideOffsetAnimations();
            actionBarOverlayLayout.mActionBarTop.setTranslationY(-Math.max(0, Math.min(0, actionBarOverlayLayout.mActionBarTop.getHeight())));
        }
        this.mContextView.killMode();
        ActionModeImpl actionModeImpl2 = new ActionModeImpl(this.mContextView.getContext(), actionModeCallbackWrapperV9);
        MenuBuilder menuBuilder = actionModeImpl2.mMenu;
        menuBuilder.stopDispatchingItemsChanged();
        try {
            if (actionModeImpl2.mCallback.onCreateActionMode(actionModeImpl2, menuBuilder)) {
                this.mActionMode = actionModeImpl2;
                actionModeImpl2.invalidate();
                this.mContextView.initForMode(actionModeImpl2);
                animateToMode(true);
                return actionModeImpl2;
            }
            return null;
        } finally {
            menuBuilder.startDispatchingItemsChanged();
        }
    }

    public final void updateVisibility(boolean z) {
        boolean z2;
        boolean z3 = this.mHiddenBySystem;
        if (this.mShowingForMode || !z3) {
            z2 = true;
        } else {
            z2 = false;
        }
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
        View view = this.mContentView;
        final AnonymousClass3 anonymousClass3 = this.mUpdateListener;
        if (z2) {
            if (!this.mNowShowing) {
                this.mNowShowing = true;
                ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.mCurrentShowAnim;
                if (viewPropertyAnimatorCompatSet != null) {
                    viewPropertyAnimatorCompatSet.cancel();
                }
                this.mContainerView.setVisibility(0);
                int i = this.mCurWindowVisibility;
                AnonymousClass2 anonymousClass2 = this.mShowListener;
                if (i == 0 && (this.mShowHideAnimationEnabled || z)) {
                    this.mContainerView.setTranslationY(0.0f);
                    float f = -this.mContainerView.getHeight();
                    if (z) {
                        this.mContainerView.getLocationInWindow(new int[]{0, 0});
                        f -= r12[1];
                    }
                    this.mContainerView.setTranslationY(f);
                    ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
                    ViewPropertyAnimatorCompat animate = ViewCompat.animate(this.mContainerView);
                    animate.translationY(0.0f);
                    final View view2 = (View) animate.mView.get();
                    if (view2 != null) {
                        if (anonymousClass3 != null) {
                            animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    ((View) WindowDecorActionBar.this.mContainerView.getParent()).invalidate();
                                }
                            };
                        }
                        view2.animate().setUpdateListener(animatorUpdateListener);
                    }
                    boolean z4 = viewPropertyAnimatorCompatSet2.mIsStarted;
                    ArrayList arrayList = viewPropertyAnimatorCompatSet2.mAnimators;
                    if (!z4) {
                        arrayList.add(animate);
                    }
                    if (this.mContentAnimations && view != null) {
                        view.setTranslationY(f);
                        ViewPropertyAnimatorCompat animate2 = ViewCompat.animate(view);
                        animate2.translationY(0.0f);
                        if (!viewPropertyAnimatorCompatSet2.mIsStarted) {
                            arrayList.add(animate2);
                        }
                    }
                    Interpolator interpolator = sShowInterpolator;
                    boolean z5 = viewPropertyAnimatorCompatSet2.mIsStarted;
                    if (!z5) {
                        viewPropertyAnimatorCompatSet2.mInterpolator = interpolator;
                    }
                    if (!z5) {
                        viewPropertyAnimatorCompatSet2.mDuration = 250L;
                    }
                    if (!z5) {
                        viewPropertyAnimatorCompatSet2.mListener = anonymousClass2;
                    }
                    this.mCurrentShowAnim = viewPropertyAnimatorCompatSet2;
                    viewPropertyAnimatorCompatSet2.start();
                } else {
                    this.mContainerView.setAlpha(1.0f);
                    this.mContainerView.setTranslationY(0.0f);
                    if (this.mContentAnimations && view != null) {
                        view.setTranslationY(0.0f);
                    }
                    anonymousClass2.onAnimationEnd(null);
                }
                ActionBarOverlayLayout actionBarOverlayLayout = this.mOverlayLayout;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    ViewCompat.Api20Impl.requestApplyInsets(actionBarOverlayLayout);
                    return;
                }
                return;
            }
            return;
        }
        if (this.mNowShowing) {
            this.mNowShowing = false;
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet3 = this.mCurrentShowAnim;
            if (viewPropertyAnimatorCompatSet3 != null) {
                viewPropertyAnimatorCompatSet3.cancel();
            }
            int i2 = this.mCurWindowVisibility;
            AnonymousClass1 anonymousClass1 = this.mHideListener;
            if (i2 == 0 && (this.mShowHideAnimationEnabled || z)) {
                this.mContainerView.setAlpha(1.0f);
                ActionBarContainer actionBarContainer = this.mContainerView;
                actionBarContainer.mIsTransitioning = true;
                actionBarContainer.setDescendantFocusability(393216);
                ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet4 = new ViewPropertyAnimatorCompatSet();
                float f2 = -this.mContainerView.getHeight();
                if (z) {
                    this.mContainerView.getLocationInWindow(new int[]{0, 0});
                    f2 -= r12[1];
                }
                ViewPropertyAnimatorCompat animate3 = ViewCompat.animate(this.mContainerView);
                animate3.translationY(f2);
                final View view3 = (View) animate3.mView.get();
                if (view3 != null) {
                    if (anonymousClass3 != null) {
                        animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.core.view.ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                ((View) WindowDecorActionBar.this.mContainerView.getParent()).invalidate();
                            }
                        };
                    }
                    view3.animate().setUpdateListener(animatorUpdateListener);
                }
                boolean z6 = viewPropertyAnimatorCompatSet4.mIsStarted;
                ArrayList arrayList2 = viewPropertyAnimatorCompatSet4.mAnimators;
                if (!z6) {
                    arrayList2.add(animate3);
                }
                if (this.mContentAnimations && view != null) {
                    ViewPropertyAnimatorCompat animate4 = ViewCompat.animate(view);
                    animate4.translationY(f2);
                    if (!viewPropertyAnimatorCompatSet4.mIsStarted) {
                        arrayList2.add(animate4);
                    }
                }
                Interpolator interpolator2 = sHideInterpolator;
                boolean z7 = viewPropertyAnimatorCompatSet4.mIsStarted;
                if (!z7) {
                    viewPropertyAnimatorCompatSet4.mInterpolator = interpolator2;
                }
                if (!z7) {
                    viewPropertyAnimatorCompatSet4.mDuration = 250L;
                }
                if (!z7) {
                    viewPropertyAnimatorCompatSet4.mListener = anonymousClass1;
                }
                this.mCurrentShowAnim = viewPropertyAnimatorCompatSet4;
                viewPropertyAnimatorCompatSet4.start();
                return;
            }
            anonymousClass1.onAnimationEnd(null);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public final void setTitle(CharSequence charSequence) {
        ToolbarWidgetWrapper toolbarWidgetWrapper = (ToolbarWidgetWrapper) this.mDecorToolbar;
        toolbarWidgetWrapper.mTitleSet = true;
        toolbarWidgetWrapper.mTitle = charSequence;
        if ((toolbarWidgetWrapper.mDisplayOpts & 8) != 0) {
            Toolbar toolbar = toolbarWidgetWrapper.mToolbar;
            toolbar.setTitle(charSequence);
            if (toolbarWidgetWrapper.mTitleSet) {
                ViewCompat.setAccessibilityPaneTitle(toolbar.getRootView(), charSequence);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {
        public final Context mActionModeContext;
        public ActionMode.Callback mCallback;
        public WeakReference mCustomView;
        public final MenuBuilder mMenu;

        public ActionModeImpl(Context context, ActionMode.Callback callback) {
            this.mActionModeContext = context;
            this.mCallback = callback;
            MenuBuilder menuBuilder = new MenuBuilder(context);
            menuBuilder.mDefaultShowAsAction = 1;
            this.mMenu = menuBuilder;
            menuBuilder.setCallback(this);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void finish() {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.mActionMode != this) {
                return;
            }
            if (!(!windowDecorActionBar.mHiddenBySystem)) {
                windowDecorActionBar.mDeferredDestroyActionMode = this;
                windowDecorActionBar.mDeferredModeDestroyCallback = this.mCallback;
            } else {
                this.mCallback.onDestroyActionMode(this);
            }
            this.mCallback = null;
            windowDecorActionBar.animateToMode(false);
            ActionBarContextView actionBarContextView = windowDecorActionBar.mContextView;
            if (actionBarContextView.mClose == null) {
                actionBarContextView.killMode();
            }
            ActionBarOverlayLayout actionBarOverlayLayout = windowDecorActionBar.mOverlayLayout;
            boolean z = windowDecorActionBar.mHideOnContentScroll;
            if (z != actionBarOverlayLayout.mHideOnContentScroll) {
                actionBarOverlayLayout.mHideOnContentScroll = z;
                if (!z) {
                    actionBarOverlayLayout.haltActionBarHideOffsetAnimations();
                    actionBarOverlayLayout.haltActionBarHideOffsetAnimations();
                    actionBarOverlayLayout.mActionBarTop.setTranslationY(-Math.max(0, Math.min(0, actionBarOverlayLayout.mActionBarTop.getHeight())));
                }
            }
            windowDecorActionBar.mActionMode = null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final View getCustomView() {
            WeakReference weakReference = this.mCustomView;
            if (weakReference != null) {
                return (View) weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final MenuBuilder getMenu() {
            return this.mMenu;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final MenuInflater getMenuInflater() {
            return new SupportMenuInflater(this.mActionModeContext);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final CharSequence getSubtitle() {
            return WindowDecorActionBar.this.mContextView.mSubtitle;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final CharSequence getTitle() {
            return WindowDecorActionBar.this.mContextView.mTitle;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void invalidate() {
            if (WindowDecorActionBar.this.mActionMode != this) {
                return;
            }
            MenuBuilder menuBuilder = this.mMenu;
            menuBuilder.stopDispatchingItemsChanged();
            try {
                this.mCallback.onPrepareActionMode(this, menuBuilder);
            } finally {
                menuBuilder.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public final boolean isTitleOptional() {
            return WindowDecorActionBar.this.mContextView.mTitleOptional;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            ActionMode.Callback callback = this.mCallback;
            if (callback != null) {
                return callback.onActionItemClicked(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final void onMenuModeChange(MenuBuilder menuBuilder) {
            if (this.mCallback == null) {
                return;
            }
            invalidate();
            ActionMenuPresenter actionMenuPresenter = WindowDecorActionBar.this.mContextView.mActionMenuPresenter;
            if (actionMenuPresenter != null) {
                actionMenuPresenter.showOverflowMenu();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setCustomView(View view) {
            WindowDecorActionBar.this.mContextView.setCustomView(view);
            this.mCustomView = new WeakReference(view);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setSubtitle(CharSequence charSequence) {
            ActionBarContextView actionBarContextView = WindowDecorActionBar.this.mContextView;
            actionBarContextView.mSubtitle = charSequence;
            actionBarContextView.initTitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setTitle(CharSequence charSequence) {
            ActionBarContextView actionBarContextView = WindowDecorActionBar.this.mContextView;
            actionBarContextView.mTitle = charSequence;
            actionBarContextView.initTitle();
            ViewCompat.setAccessibilityPaneTitle(actionBarContextView, charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setTitleOptionalHint(boolean z) {
            this.mTitleOptionalHint = z;
            ActionBarContextView actionBarContextView = WindowDecorActionBar.this.mContextView;
            if (z != actionBarContextView.mTitleOptional) {
                actionBarContextView.requestLayout();
            }
            actionBarContextView.mTitleOptional = z;
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setSubtitle(int i) {
            setSubtitle(WindowDecorActionBar.this.mContext.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.ActionMode
        public final void setTitle(int i) {
            setTitle(WindowDecorActionBar.this.mContext.getResources().getString(i));
        }
    }

    public WindowDecorActionBar(Dialog dialog) {
        new ArrayList();
        this.mMenuVisibilityListeners = new ArrayList();
        this.mCurWindowVisibility = 0;
        this.mContentAnimations = true;
        this.mNowShowing = true;
        this.mHideListener = new AnonymousClass1();
        this.mShowListener = new AnonymousClass2();
        this.mUpdateListener = new AnonymousClass3();
        init(dialog.getWindow().getDecorView());
    }

    public WindowDecorActionBar(View view) {
        new ArrayList();
        this.mMenuVisibilityListeners = new ArrayList();
        this.mCurWindowVisibility = 0;
        this.mContentAnimations = true;
        this.mNowShowing = true;
        this.mHideListener = new AnonymousClass1();
        this.mShowListener = new AnonymousClass2();
        this.mUpdateListener = new AnonymousClass3();
        init(view);
    }
}
