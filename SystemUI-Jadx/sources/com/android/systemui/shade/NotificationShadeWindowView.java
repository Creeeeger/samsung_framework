package com.android.systemui.shade;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.ActionMode;
import android.view.InputQueue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.FrameLayout;
import com.android.internal.view.FloatingActionMode;
import com.android.internal.widget.floatingtoolbar.FloatingToolbar;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R$styleable;
import com.android.systemui.compose.ComposeFacade;
import com.android.systemui.shade.NotificationShadeWindowViewController;
import com.android.systemui.shade.SecPanelConfigurationBellTower;
import com.android.systemui.statusbar.NotificationInsetsController;
import com.android.systemui.statusbar.StatusBarStateControllerImpl;
import com.android.systemui.statusbar.SysuiStatusBarStateController;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class NotificationShadeWindowView extends FrameLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean mBouncerShowing;
    public final AnonymousClass1 mFakeWindow;
    public ActionMode mFloatingActionMode;
    public View mFloatingActionModeOriginatingView;
    public FloatingToolbar mFloatingToolbar;
    public NotificationShadeWindowView$$ExternalSyntheticLambda1 mFloatingToolbarPreDrawListener;
    public NotificationShadeWindowViewController.AnonymousClass1 mInteractionEventHandler;
    public NotificationInsetsController mLayoutInsetProvider;
    public int mLeftInset;
    public int mRightInset;
    public IntConsumer mVisibilityChangedListener;
    public IntConsumer mWindowVisibilityChangedListener;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ActionModeCallback2Wrapper extends ActionMode.Callback2 {
        public final ActionMode.Callback mWrapped;

        public ActionModeCallback2Wrapper(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onCreateActionMode(actionMode, menu);
        }

        @Override // android.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            this.mWrapped.onDestroyActionMode(actionMode);
            NotificationShadeWindowView notificationShadeWindowView = NotificationShadeWindowView.this;
            if (actionMode == notificationShadeWindowView.mFloatingActionMode) {
                notificationShadeWindowView.cleanupFloatingActionModeViews();
                NotificationShadeWindowView.this.mFloatingActionMode = null;
            }
            NotificationShadeWindowView.this.requestFitSystemWindows();
        }

        @Override // android.view.ActionMode.Callback2
        public final void onGetContentRect(ActionMode actionMode, View view, Rect rect) {
            ActionMode.Callback callback = this.mWrapped;
            if (callback instanceof ActionMode.Callback2) {
                ((ActionMode.Callback2) callback).onGetContentRect(actionMode, view, rect);
            } else {
                super.onGetContentRect(actionMode, view, rect);
            }
        }

        @Override // android.view.ActionMode.Callback
        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            NotificationShadeWindowView.this.requestFitSystemWindows();
            return this.mWrapped.onPrepareActionMode(actionMode, menu);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LayoutParams extends FrameLayout.LayoutParams {
        public final boolean ignoreRightInset;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.StatusBarWindowView_Layout);
            this.ignoreRightInset = obtainStyledAttributes.getBoolean(0, false);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.shade.NotificationShadeWindowView$1] */
    public NotificationShadeWindowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRightInset = 0;
        this.mLeftInset = 0;
        this.mFakeWindow = new Window(((FrameLayout) this).mContext) { // from class: com.android.systemui.shade.NotificationShadeWindowView.1
            @Override // android.view.Window
            public final View getCurrentFocus() {
                return null;
            }

            @Override // android.view.Window
            public final View getDecorView() {
                return NotificationShadeWindowView.this;
            }

            @Override // android.view.Window
            public final WindowInsetsController getInsetsController() {
                return null;
            }

            @Override // android.view.Window
            public final LayoutInflater getLayoutInflater() {
                return null;
            }

            @Override // android.view.Window
            public final int getNavigationBarColor() {
                return 0;
            }

            @Override // android.view.Window
            public final int getStatusBarColor() {
                return 0;
            }

            @Override // android.view.Window
            public final int getVolumeControlStream() {
                return 0;
            }

            @Override // android.view.Window
            public final boolean isFloating() {
                return false;
            }

            @Override // android.view.Window
            public final boolean isShortcutKey(int i, KeyEvent keyEvent) {
                return false;
            }

            @Override // android.view.Window
            public final View peekDecorView() {
                return null;
            }

            @Override // android.view.Window
            public final boolean performContextMenuIdentifierAction(int i, int i2) {
                return false;
            }

            @Override // android.view.Window
            public final boolean performPanelIdentifierAction(int i, int i2, int i3) {
                return false;
            }

            @Override // android.view.Window
            public final boolean performPanelShortcut(int i, int i2, KeyEvent keyEvent, int i3) {
                return false;
            }

            @Override // android.view.Window
            public final Bundle saveHierarchyState() {
                return null;
            }

            @Override // android.view.Window
            public final void setContentView(int i) {
            }

            @Override // android.view.Window
            public final boolean superDispatchGenericMotionEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.Window
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return false;
            }

            @Override // android.view.Window
            public final boolean superDispatchKeyShortcutEvent(KeyEvent keyEvent) {
                return false;
            }

            @Override // android.view.Window
            public final boolean superDispatchTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.Window
            public final boolean superDispatchTrackballEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.Window
            public final void setContentView(View view) {
            }

            @Override // android.view.Window
            public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
            }

            @Override // android.view.Window
            public final void closePanel(int i) {
            }

            @Override // android.view.Window
            public final void invalidatePanelMenu(int i) {
            }

            @Override // android.view.Window
            public final void onConfigurationChanged(Configuration configuration) {
            }

            public final void onPictureInPictureModeChanged(boolean z) {
            }

            @Override // android.view.Window
            public final void restoreHierarchyState(Bundle bundle) {
            }

            @Override // android.view.Window
            public final void setBackgroundDrawable(Drawable drawable) {
            }

            @Override // android.view.Window
            public final void setDecorCaptionShade(int i) {
            }

            @Override // android.view.Window
            public final void setNavigationBarColor(int i) {
            }

            @Override // android.view.Window
            public final void setResizingCaptionDrawable(Drawable drawable) {
            }

            @Override // android.view.Window
            public final void setStatusBarColor(int i) {
            }

            @Override // android.view.Window
            public final void setTitle(CharSequence charSequence) {
            }

            @Override // android.view.Window
            public final void setTitleColor(int i) {
            }

            @Override // android.view.Window
            public final void setVolumeControlStream(int i) {
            }

            @Override // android.view.Window
            public final void takeInputQueue(InputQueue.Callback callback) {
            }

            @Override // android.view.Window
            public final void takeKeyEvents(boolean z) {
            }

            @Override // android.view.Window
            public final void takeSurface(SurfaceHolder.Callback2 callback2) {
            }

            public final void alwaysReadCloseOnTouchAttr() {
            }

            public final void clearContentView() {
            }

            @Override // android.view.Window
            public final void closeAllPanels() {
            }

            @Override // android.view.Window
            public final void onActive() {
            }

            public final void onMultiWindowModeChanged() {
            }

            @Override // android.view.Window
            public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
            }

            @Override // android.view.Window
            public final void openPanel(int i, KeyEvent keyEvent) {
            }

            @Override // android.view.Window
            public final void setChildDrawable(int i, Drawable drawable) {
            }

            @Override // android.view.Window
            public final void setChildInt(int i, int i2) {
            }

            @Override // android.view.Window
            public final void setFeatureDrawable(int i, Drawable drawable) {
            }

            @Override // android.view.Window
            public final void setFeatureDrawableAlpha(int i, int i2) {
            }

            @Override // android.view.Window
            public final void setFeatureDrawableResource(int i, int i2) {
            }

            @Override // android.view.Window
            public final void setFeatureDrawableUri(int i, Uri uri) {
            }

            @Override // android.view.Window
            public final void setFeatureInt(int i, int i2) {
            }

            @Override // android.view.Window
            public final void togglePanel(int i, KeyEvent keyEvent) {
            }
        };
        setMotionEventSplittingEnabled(false);
    }

    public final void applyBouncerMargins() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getLayoutParams() instanceof LayoutParams) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (!layoutParams.ignoreRightInset && (((FrameLayout.LayoutParams) layoutParams).rightMargin != 0 || ((FrameLayout.LayoutParams) layoutParams).leftMargin != 0)) {
                    ((FrameLayout.LayoutParams) layoutParams).rightMargin = 0;
                    ((FrameLayout.LayoutParams) layoutParams).leftMargin = 0;
                    childAt.requestLayout();
                }
            }
        }
    }

    public final void cleanupFloatingActionModeViews() {
        FloatingToolbar floatingToolbar = this.mFloatingToolbar;
        if (floatingToolbar != null) {
            floatingToolbar.dismiss();
            this.mFloatingToolbar = null;
        }
        View view = this.mFloatingActionModeOriginatingView;
        if (view != null) {
            if (this.mFloatingToolbarPreDrawListener != null) {
                view.getViewTreeObserver().removeOnPreDrawListener(this.mFloatingToolbarPreDrawListener);
                this.mFloatingToolbarPreDrawListener = null;
            }
            this.mFloatingActionModeOriginatingView = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        NotificationShadeWindowViewController.AnonymousClass1 anonymousClass1 = this.mInteractionEventHandler;
        anonymousClass1.getClass();
        int action = motionEvent.getAction();
        NotificationShadeWindowViewController notificationShadeWindowViewController = NotificationShadeWindowViewController.this;
        if (((StatusBarStateControllerImpl) notificationShadeWindowViewController.mStatusBarStateController).mState == 1 && action == 7) {
            ((CentralSurfacesImpl) notificationShadeWindowViewController.mService).userActivity();
        }
        if (super.dispatchHoverEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01fe  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean dispatchKeyEvent(final android.view.KeyEvent r17) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shade.NotificationShadeWindowView.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) NotificationShadeWindowViewController.this.mService;
        centralSurfacesImpl.getClass();
        if (keyEvent.getKeyCode() == 4 && ((!LsRune.SECURITY_CAPTURED_BLUR || !centralSurfacesImpl.mBouncerShowing) && centralSurfacesImpl.mState == 1 && centralSurfacesImpl.mStatusBarKeyguardViewManager.dispatchBackKeyEventPreIme())) {
            return centralSurfacesImpl.onBackPressed();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:75:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x014d  */
    /* JADX WARN: Type inference failed for: r15v1, types: [android.view.View] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shade.NotificationShadeWindowView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        Insets insetsIgnoringVisibility = windowInsets.getInsetsIgnoringVisibility(WindowInsets.Type.systemBars());
        boolean z = true;
        if (getFitsSystemWindows()) {
            if (insetsIgnoringVisibility.top == getPaddingTop() && insetsIgnoringVisibility.bottom == getPaddingBottom()) {
                z = false;
            }
            if (z) {
                setPadding(0, 0, 0, 0);
            }
        } else {
            if (getPaddingLeft() == 0 && getPaddingRight() == 0 && getPaddingTop() == 0 && getPaddingBottom() == 0) {
                z = false;
            }
            if (z) {
                setPadding(0, 0, 0, 0);
            }
        }
        this.mLeftInset = 0;
        this.mRightInset = 0;
        Pair pair = this.mLayoutInsetProvider.getinsets(windowInsets, getRootWindowInsets().getDisplayCutout());
        this.mLeftInset = ((Integer) pair.first).intValue();
        this.mRightInset = ((Integer) pair.second).intValue();
        if (LsRune.SECURITY_CAPTURED_BLUR && this.mBouncerShowing) {
            applyBouncerMargins();
        } else {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt.getLayoutParams() instanceof LayoutParams) {
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    if (!layoutParams.ignoreRightInset) {
                        int i2 = ((FrameLayout.LayoutParams) layoutParams).rightMargin;
                        int i3 = this.mRightInset;
                        if (i2 != i3 || ((FrameLayout.LayoutParams) layoutParams).leftMargin != this.mLeftInset) {
                            ((FrameLayout.LayoutParams) layoutParams).rightMargin = i3;
                            ((FrameLayout.LayoutParams) layoutParams).leftMargin = this.mLeftInset;
                            childAt.requestLayout();
                        }
                    }
                }
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setWillNotDraw(true);
        ComposeFacade.INSTANCE.getClass();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        SecPanelConfigurationBellTower secPanelConfigurationBellTower = ((SecPanelPolicy) Dependency.get(SecPanelPolicy.class)).mPanelConfigurationBellTower;
        SecPanelConfigurationBellTower.PanelConfigurationWrapper panelConfigurationWrapper = secPanelConfigurationBellTower.mTmpConfiguration;
        panelConfigurationWrapper.setConfiguration(configuration);
        secPanelConfigurationBellTower.printConfigurationStateLog("New Vs." + panelConfigurationWrapper.mSeqNumber, "newOri:" + configuration.orientation);
        SecPanelConfigurationBellTower.PanelConfigurationWrapper panelConfigurationWrapper2 = secPanelConfigurationBellTower.mViewConfiguration;
        if (panelConfigurationWrapper2.mSeqNumber < panelConfigurationWrapper.mSeqNumber) {
            panelConfigurationWrapper2.setConfiguration(panelConfigurationWrapper.mConfiguration);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ComposeFacade.INSTANCE.getClass();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        if (LsRune.SECURITY_SIM_PERM_DISABLED && ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).isSimDisabledPermanently() && LsRune.LOCKUI_BOTTOM_USIM_TEXT && !this.mInteractionEventHandler.isTouchableArea(motionEvent)) {
            return true;
        }
        NotificationShadeWindowViewController notificationShadeWindowViewController = NotificationShadeWindowViewController.this;
        if (!notificationShadeWindowViewController.mStatusBarKeyguardViewManager.shouldInterceptTouchEvent()) {
            notificationShadeWindowViewController.mLockIconViewController.getClass();
            int actionMasked = motionEvent.getActionMasked();
            NotificationPanelViewController notificationPanelViewController = notificationShadeWindowViewController.mNotificationPanelViewController;
            SysuiStatusBarStateController sysuiStatusBarStateController = notificationShadeWindowViewController.mStatusBarStateController;
            if (actionMasked == 0 && ((StatusBarStateControllerImpl) sysuiStatusBarStateController).mState == 1) {
                notificationShadeWindowViewController.mTouchedOnEmptyArea = notificationPanelViewController.isTouchOnEmptyArea(motionEvent);
            }
            if (motionEvent.getActionMasked() == 0 && ((StatusBarStateControllerImpl) sysuiStatusBarStateController).mState == 1) {
                notificationShadeWindowViewController.mPluginLockTouchArea = notificationPanelViewController.isInLockStarContainer(motionEvent);
            }
            if (motionEvent.getActionMasked() == 0 && ((StatusBarStateControllerImpl) sysuiStatusBarStateController).mState == 1) {
                notificationShadeWindowViewController.mSecKeyguardStatusViewTouchArea = notificationPanelViewController.isInFaceWidgetContainer(motionEvent);
            }
            if (notificationPanelViewController.isFullyExpanded() && notificationShadeWindowViewController.mDragDownHelper.dragDownCallback.isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(null) && !notificationShadeWindowViewController.mTouchedOnEmptyArea && !notificationShadeWindowViewController.mPluginLockTouchArea && !notificationShadeWindowViewController.mSecKeyguardStatusViewTouchArea) {
                CentralSurfacesImpl centralSurfacesImpl = (CentralSurfacesImpl) notificationShadeWindowViewController.mService;
                if (!centralSurfacesImpl.mBouncerShowing && !((StatusBarStateControllerImpl) sysuiStatusBarStateController).mIsDozing) {
                    if (!centralSurfacesImpl.mIsDlsOverlay || centralSurfacesImpl.mState != 1) {
                        z = false;
                    }
                    if (!z) {
                        z = notificationShadeWindowViewController.mDragDownHelper.onInterceptTouchEvent(motionEvent);
                    }
                }
            }
            z = false;
        }
        if (!z) {
            z = super.onInterceptTouchEvent(motionEvent);
        }
        if (z) {
            NotificationShadeWindowViewController.AnonymousClass1 anonymousClass1 = this.mInteractionEventHandler;
            anonymousClass1.getClass();
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            obtain.setAction(3);
            NotificationShadeWindowViewController notificationShadeWindowViewController2 = NotificationShadeWindowViewController.this;
            notificationShadeWindowViewController2.mStackScrollLayout.onInterceptTouchEvent(obtain);
            notificationShadeWindowViewController2.mNotificationPanelViewController.mTouchHandler.onInterceptTouchEvent(obtain);
            obtain.recycle();
        }
        return z;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        Trace.beginSection("NotificationShadeWindowView#onMeasure");
        super.onMeasure(i, i2);
        Trace.endSection();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0068  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            boolean r0 = com.android.systemui.LsRune.SECURITY_SIM_PERM_DISABLED
            r1 = 1
            if (r0 == 0) goto L20
            java.lang.Class<com.android.keyguard.KeyguardUpdateMonitor> r0 = com.android.keyguard.KeyguardUpdateMonitor.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.keyguard.KeyguardUpdateMonitor r0 = (com.android.keyguard.KeyguardUpdateMonitor) r0
            boolean r0 = r0.isSimDisabledPermanently()
            if (r0 == 0) goto L20
            boolean r0 = com.android.systemui.LsRune.LOCKUI_BOTTOM_USIM_TEXT
            if (r0 == 0) goto L20
            com.android.systemui.shade.NotificationShadeWindowViewController$1 r0 = r6.mInteractionEventHandler
            boolean r0 = r0.isTouchableArea(r7)
            if (r0 != 0) goto L20
            return r1
        L20:
            com.android.systemui.shade.NotificationShadeWindowViewController$1 r0 = r6.mInteractionEventHandler
            com.android.systemui.shade.NotificationShadeWindowViewController r0 = com.android.systemui.shade.NotificationShadeWindowViewController.this
            com.android.systemui.statusbar.SysuiStatusBarStateController r2 = r0.mStatusBarStateController
            com.android.systemui.statusbar.StatusBarStateControllerImpl r2 = (com.android.systemui.statusbar.StatusBarStateControllerImpl) r2
            boolean r2 = r2.mIsDozing
            r3 = 0
            if (r2 == 0) goto L37
            com.android.systemui.statusbar.phone.CentralSurfaces r2 = r0.mService
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r2 = (com.android.systemui.statusbar.phone.CentralSurfacesImpl) r2
            boolean r2 = r2.isPulsing()
            r2 = r2 ^ r1
            goto L38
        L37:
            r2 = r3
        L38:
            com.android.systemui.statusbar.phone.StatusBarKeyguardViewManager r4 = r0.mStatusBarKeyguardViewManager
            boolean r4 = r4.onTouch(r7)
            if (r4 == 0) goto L41
            goto L5f
        L41:
            com.android.systemui.statusbar.DragDownHelper r4 = r0.mDragDownHelper
            com.android.systemui.statusbar.LockscreenShadeTransitionController r4 = r4.dragDownCallback
            r5 = 0
            boolean r4 = r4.isDragDownEnabledForView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(r5)
            if (r4 != 0) goto L52
            com.android.systemui.statusbar.DragDownHelper r4 = r0.mDragDownHelper
            boolean r4 = r4.isDraggingDown
            if (r4 == 0) goto L60
        L52:
            com.android.systemui.statusbar.DragDownHelper r0 = r0.mDragDownHelper
            boolean r0 = r0.onTouchEvent(r7)
            if (r0 != 0) goto L5f
            if (r2 == 0) goto L5d
            goto L5f
        L5d:
            r2 = r3
            goto L60
        L5f:
            r2 = r1
        L60:
            if (r2 != 0) goto L66
            boolean r2 = super.onTouchEvent(r7)
        L66:
            if (r2 != 0) goto L7f
            com.android.systemui.shade.NotificationShadeWindowViewController$1 r6 = r6.mInteractionEventHandler
            r6.getClass()
            int r7 = r7.getActionMasked()
            if (r7 == r1) goto L76
            r0 = 3
            if (r7 != r0) goto L7f
        L76:
            com.android.systemui.shade.NotificationShadeWindowViewController r6 = com.android.systemui.shade.NotificationShadeWindowViewController.this
            com.android.systemui.statusbar.phone.CentralSurfaces r6 = r6.mService
            com.android.systemui.statusbar.phone.CentralSurfacesImpl r6 = (com.android.systemui.statusbar.phone.CentralSurfacesImpl) r6
            r6.setInteracting(r1, r3)
        L7f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shade.NotificationShadeWindowView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).setFocusForBiometrics(1, z);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        IntConsumer intConsumer = this.mVisibilityChangedListener;
        if (intConsumer != null) {
            intConsumer.accept(i);
        }
        IntConsumer intConsumer2 = this.mWindowVisibilityChangedListener;
        if (intConsumer2 != null) {
            intConsumer2.accept(i);
        }
        SecPanelPolicy secPanelPolicy = (SecPanelPolicy) Dependency.get(SecPanelPolicy.class);
        Consumer consumer = new Consumer() { // from class: com.android.systemui.shade.NotificationShadeWindowView$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                NotificationShadeWindowView notificationShadeWindowView = NotificationShadeWindowView.this;
                int i2 = NotificationShadeWindowView.$r8$clinit;
                notificationShadeWindowView.getRootView().dispatchConfigurationChanged((Configuration) obj);
            }
        };
        final SecPanelConfigurationBellTower secPanelConfigurationBellTower = secPanelPolicy.mPanelConfigurationBellTower;
        secPanelConfigurationBellTower.mWindowVisibility = i;
        secPanelConfigurationBellTower.mDispatchConfigurationChangeConsumer = consumer;
        secPanelConfigurationBellTower.printConfigurationStateLog("onWindowViewVisibilityChanged", "");
        secPanelConfigurationBellTower.mHandler.postDelayed(new Runnable() { // from class: com.android.systemui.shade.SecPanelConfigurationBellTower$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                SecPanelConfigurationBellTower secPanelConfigurationBellTower2 = SecPanelConfigurationBellTower.this;
                if (secPanelConfigurationBellTower2.mWindowVisibility == 0 && secPanelConfigurationBellTower2.shouldRingBell()) {
                    secPanelConfigurationBellTower2.ringConfigurationBell();
                }
            }
        }, 32L);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        Trace.instant(4096L, "NotificationShadeWindowView#requestLayout");
        super.requestLayout();
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.systemui.shade.NotificationShadeWindowView$$ExternalSyntheticLambda1] */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i == 1) {
            ActionModeCallback2Wrapper actionModeCallback2Wrapper = new ActionModeCallback2Wrapper(callback);
            ActionMode actionMode = this.mFloatingActionMode;
            if (actionMode != null) {
                actionMode.finish();
            }
            cleanupFloatingActionModeViews();
            this.mFloatingToolbar = new FloatingToolbar(this.mFakeWindow);
            final FloatingActionMode floatingActionMode = new FloatingActionMode(((FrameLayout) this).mContext, actionModeCallback2Wrapper, view, this.mFloatingToolbar);
            this.mFloatingActionModeOriginatingView = view;
            this.mFloatingToolbarPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.systemui.shade.NotificationShadeWindowView$$ExternalSyntheticLambda1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    FloatingActionMode floatingActionMode2 = floatingActionMode;
                    int i2 = NotificationShadeWindowView.$r8$clinit;
                    floatingActionMode2.updateViewLocationInWindow();
                    return true;
                }
            };
            if (actionModeCallback2Wrapper.onCreateActionMode(floatingActionMode, floatingActionMode.getMenu())) {
                this.mFloatingActionMode = floatingActionMode;
                floatingActionMode.invalidate();
                this.mFloatingActionModeOriginatingView.getViewTreeObserver().addOnPreDrawListener(this.mFloatingToolbarPreDrawListener);
                return floatingActionMode;
            }
            return null;
        }
        return super.startActionModeForChild(view, callback, i);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
