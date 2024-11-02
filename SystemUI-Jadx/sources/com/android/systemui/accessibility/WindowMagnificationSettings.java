package com.android.systemui.accessibility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Handler;
import android.os.RemoteException;
import android.provider.Settings;
import android.util.Log;
import android.util.MathUtils;
import android.util.Slog;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.accessibility.A11yLogger;
import android.view.accessibility.A11yRune;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.IWindowMagnificationConnectionCallback;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.SeslSeekBar;
import androidx.appcompat.widget.SwitchCompat;
import com.android.internal.graphics.SfVsyncFrameCallbackProvider;
import com.android.systemui.R;
import com.android.systemui.accessibility.AccessibilityLogger;
import com.android.systemui.accessibility.MagnificationGestureDetector;
import com.android.systemui.accessibility.MagnificationSettingsController;
import com.android.systemui.accessibility.WindowMagnification;
import com.android.systemui.util.settings.SecureSettings;
import com.samsung.android.view.SemWindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class WindowMagnificationSettings implements MagnificationGestureDetector.OnGestureListener {
    public final boolean mAllowDiagonalScrolling;
    public SwitchCompat mAllowDiagonalScrollingSwitch;
    public TextView mAllowDiagonalScrollingTitle;
    public LinearLayout mAllowDiagonalScrollingView;
    public final WindowMagnificationSettingsCallback mCallback;
    public final Context mContext;
    public Button mDoneButton;
    public TextView mEditButton;
    public ImageButton mFullScreenButton;
    public final MagnificationGestureDetector mGestureDetector;
    public ImageButton mLargeButton;
    public final AnonymousClass1 mMagnificationCapabilityObserver;
    public TextView mMagnifierSizeTv;
    public ImageButton mMediumButton;
    public final WindowManager.LayoutParams mParams;
    public final SecureSettings mSecureSettings;
    public LinearLayout mSettingView;
    public final SfVsyncFrameCallbackProvider mSfVsyncFrameProvider;
    public ImageButton mSmallButton;
    public final WindowMagnificationSettings$$ExternalSyntheticLambda3 mWindowInsetChangeRunnable;
    public final WindowManager mWindowManager;
    public SecSeekBarWithIconButtonsView mZoomSeekbar;
    public TextView mZoomTv;
    final Rect mDraggableWindowBounds = new Rect();
    public boolean mIsVisible = false;
    public boolean mSingleTapDetected = false;
    public final AnonymousClass2 mPanelDelegate = new View.AccessibilityDelegate() { // from class: com.android.systemui.accessibility.WindowMagnificationSettings.2
        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK.getId(), WindowMagnificationSettings.this.mContext.getResources().getString(R.string.magnification_mode_switch_click_label)));
            accessibilityNodeInfo.setClickable(true);
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibility_action_move_up, WindowMagnificationSettings.this.mContext.getString(R.string.accessibility_control_move_up)));
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibility_action_move_down, WindowMagnificationSettings.this.mContext.getString(R.string.accessibility_control_move_down)));
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibility_action_move_left, WindowMagnificationSettings.this.mContext.getString(R.string.accessibility_control_move_left)));
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.accessibility_action_move_right, WindowMagnificationSettings.this.mContext.getString(R.string.accessibility_control_move_right)));
        }

        /* JADX WARN: Removed duplicated region for block: B:6:0x0054 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0055  */
        @Override // android.view.View.AccessibilityDelegate
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean performAccessibilityAction(android.view.View r5, int r6, android.os.Bundle r7) {
            /*
                r4 = this;
                com.android.systemui.accessibility.WindowMagnificationSettings r0 = com.android.systemui.accessibility.WindowMagnificationSettings.this
                android.view.WindowManager r0 = r0.mWindowManager
                android.view.WindowMetrics r0 = r0.getCurrentWindowMetrics()
                android.graphics.Rect r0 = r0.getBounds()
                r1 = 1
                r2 = 2131361833(0x7f0a0029, float:1.834343E38)
                r3 = 0
                if (r6 != r2) goto L1f
                com.android.systemui.accessibility.WindowMagnificationSettings r2 = com.android.systemui.accessibility.WindowMagnificationSettings.this
                int r0 = r0.height()
                int r0 = -r0
                float r0 = (float) r0
                r2.moveButton(r3, r0)
                goto L4f
            L1f:
                r2 = 2131361830(0x7f0a0026, float:1.8343423E38)
                if (r6 != r2) goto L2f
                com.android.systemui.accessibility.WindowMagnificationSettings r2 = com.android.systemui.accessibility.WindowMagnificationSettings.this
                int r0 = r0.height()
                float r0 = (float) r0
                r2.moveButton(r3, r0)
                goto L4f
            L2f:
                r2 = 2131361831(0x7f0a0027, float:1.8343425E38)
                if (r6 != r2) goto L40
                com.android.systemui.accessibility.WindowMagnificationSettings r2 = com.android.systemui.accessibility.WindowMagnificationSettings.this
                int r0 = r0.width()
                int r0 = -r0
                float r0 = (float) r0
                r2.moveButton(r0, r3)
                goto L4f
            L40:
                r2 = 2131361832(0x7f0a0028, float:1.8343427E38)
                if (r6 != r2) goto L51
                com.android.systemui.accessibility.WindowMagnificationSettings r2 = com.android.systemui.accessibility.WindowMagnificationSettings.this
                int r0 = r0.width()
                float r0 = (float) r0
                r2.moveButton(r0, r3)
            L4f:
                r0 = r1
                goto L52
            L51:
                r0 = 0
            L52:
                if (r0 == 0) goto L55
                return r1
            L55:
                boolean r4 = super.performAccessibilityAction(r5, r6, r7)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.accessibility.WindowMagnificationSettings.AnonymousClass2.performAccessibilityAction(android.view.View, int, android.os.Bundle):boolean");
        }
    };
    public final AnonymousClass3 mButtonClickListener = new View.OnClickListener() { // from class: com.android.systemui.accessibility.WindowMagnificationSettings.3
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean z;
            int id = view.getId();
            boolean z2 = true;
            if (id == R.id.magnifier_small_button) {
                WindowMagnificationSettings.m72$$Nest$msetMagnifierSize(WindowMagnificationSettings.this, 1);
                A11yLogger.insertLog(WindowMagnificationSettings.this.mContext, "A11Y3191");
                return;
            }
            int i = 2;
            if (id == R.id.magnifier_medium_button) {
                WindowMagnificationSettings.m72$$Nest$msetMagnifierSize(WindowMagnificationSettings.this, 2);
                A11yLogger.insertLog(WindowMagnificationSettings.this.mContext, "A11Y3192");
                return;
            }
            if (id == R.id.magnifier_large_button) {
                WindowMagnificationSettings.m72$$Nest$msetMagnifierSize(WindowMagnificationSettings.this, 3);
                A11yLogger.insertLog(WindowMagnificationSettings.this.mContext, "A11Y3193");
                return;
            }
            if (id == R.id.magnifier_full_button) {
                WindowMagnificationSettings.m72$$Nest$msetMagnifierSize(WindowMagnificationSettings.this, 4);
                A11yLogger.insertLog(WindowMagnificationSettings.this.mContext, "A11Y3194");
                return;
            }
            if (id == R.id.magnifier_edit_button) {
                WindowMagnificationSettings windowMagnificationSettings = WindowMagnificationSettings.this;
                MagnificationSettingsController magnificationSettingsController = MagnificationSettingsController.this;
                MagnificationSettingsController.Callback callback = magnificationSettingsController.mSettingsControllerCallback;
                int i2 = magnificationSettingsController.mDisplayId;
                WindowMagnification.AnonymousClass3 anonymousClass3 = (WindowMagnification.AnonymousClass3) callback;
                WindowMagnification windowMagnification = WindowMagnification.this;
                windowMagnification.mHandler.post(new WindowMagnification$3$$ExternalSyntheticLambda1(anonymousClass3, i2, z2, i));
                windowMagnification.mA11yLogger.uiEventLogger.log(AccessibilityLogger.MagnificationSettingsEvent.MAGNIFICATION_SETTINGS_SIZE_EDITING_ACTIVATED);
                windowMagnificationSettings.mEditButton.announceForAccessibility(windowMagnificationSettings.mContext.getString(R.string.accessibility_magnification_window_resizing_guides_shown));
                windowMagnificationSettings.hideSettingPanel(true);
                A11yLogger.insertLog(WindowMagnificationSettings.this.mContext, "A11Y3186");
                return;
            }
            if (id == R.id.magnifier_horizontal_lock_view) {
                WindowMagnificationSettings windowMagnificationSettings2 = WindowMagnificationSettings.this;
                if (windowMagnificationSettings2.mSecureSettings.getIntForUser(1, -2, "accessibility_allow_diagonal_scrolling") == 1) {
                    z = true;
                } else {
                    z = false;
                }
                windowMagnificationSettings2.setDiagonalScrolling(!z);
                return;
            }
            if (id == R.id.magnifier_done_button) {
                WindowMagnificationSettings.this.hideSettingPanel(true);
                A11yLogger.insertLog(WindowMagnificationSettings.this.mContext, "A11Y3199");
            }
        }
    };
    public final AnonymousClass4 mScreenOffReceiver = new BroadcastReceiver() { // from class: com.android.systemui.accessibility.WindowMagnificationSettings.4
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            WindowMagnificationSettings.this.hideSettingPanel(true);
        }
    };
    public final AnonymousClass5 mWindowScaleChangeObserver = new ContentObserver(new Handler()) { // from class: com.android.systemui.accessibility.WindowMagnificationSettings.5
        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            boolean z2;
            float floatForUser = Settings.Secure.getFloatForUser(WindowMagnificationSettings.this.mContext.getContentResolver(), "accessibility_display_magnification_scale", WindowMagnificationSettings.this.mContext.getResources().getInteger(R.integer.magnification_default_scale), -2);
            WindowMagnificationSettings windowMagnificationSettings = WindowMagnificationSettings.this;
            windowMagnificationSettings.getClass();
            int i = (int) ((floatForUser - 1.0f) / 1.0f);
            boolean z3 = false;
            if (i < 0) {
                i = 0;
            }
            SecSeekBarWithIconButtonsView secSeekBarWithIconButtonsView = windowMagnificationSettings.mZoomSeekbar;
            secSeekBarWithIconButtonsView.mSeekbar.setProgress(i);
            ImageView imageView = secSeekBarWithIconButtonsView.mIconStart;
            if (i > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            SecSeekBarWithIconButtonsView.setIconViewAndFrameEnabled(imageView, z2);
            ImageView imageView2 = secSeekBarWithIconButtonsView.mIconEnd;
            if (i < secSeekBarWithIconButtonsView.mSeekbar.getMax()) {
                z3 = true;
            }
            SecSeekBarWithIconButtonsView.setIconViewAndFrameEnabled(imageView2, z3);
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.accessibility.WindowMagnificationSettings$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ContentObserver {
        public AnonymousClass1(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            WindowMagnificationSettings.this.mSettingView.post(new WindowMagnificationSettings$$ExternalSyntheticLambda3(this, 4));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SliderA11yDelegate extends View.AccessibilityDelegate {
        public /* synthetic */ SliderA11yDelegate(WindowMagnificationSettings windowMagnificationSettings, int i) {
            this(windowMagnificationSettings);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(SeekBar.class.getName());
        }

        private SliderA11yDelegate(WindowMagnificationSettings windowMagnificationSettings) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ZoomSeekbarChangeListener implements SeslSeekBar.OnSeekBarChangeListener {
        public /* synthetic */ ZoomSeekbarChangeListener(WindowMagnificationSettings windowMagnificationSettings, int i) {
            this();
        }

        @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeslSeekBar seslSeekBar, int i, boolean z) {
            IWindowMagnificationConnectionCallback iWindowMagnificationConnectionCallback;
            float f = (i * 1.0f) + 1.0f;
            WindowMagnificationSettings windowMagnificationSettings = WindowMagnificationSettings.this;
            if (f >= 1.0f) {
                Settings.Secure.putFloatForUser(windowMagnificationSettings.mContext.getContentResolver(), "accessibility_display_magnification_scale", f, -2);
            }
            MagnificationSettingsController magnificationSettingsController = MagnificationSettingsController.this;
            MagnificationSettingsController.Callback callback = magnificationSettingsController.mSettingsControllerCallback;
            int i2 = magnificationSettingsController.mDisplayId;
            float floatValue = ((Float) MagnificationSettingsController.A11Y_ACTION_SCALE_RANGE.clamp(Float.valueOf(f))).floatValue();
            WindowMagnificationConnectionImpl windowMagnificationConnectionImpl = WindowMagnification.this.mWindowMagnificationConnectionImpl;
            if (windowMagnificationConnectionImpl != null && (iWindowMagnificationConnectionCallback = windowMagnificationConnectionImpl.mConnectionCallback) != null) {
                try {
                    iWindowMagnificationConnectionCallback.onPerformScaleAction(i2, floatValue);
                } catch (RemoteException e) {
                    Log.e("WindowMagnificationConnectionImpl", "Failed to inform performing scale action", e);
                }
            }
            windowMagnificationSettings.mZoomSeekbar.setSeekbarStateDescription(f);
            SecSeekBarWithIconButtonsView secSeekBarWithIconButtonsView = windowMagnificationSettings.mZoomSeekbar;
            Context context = windowMagnificationSettings.mContext;
            int i3 = (int) f;
            secSeekBarWithIconButtonsView.announceForAccessibility(context.getResources().getString(R.string.font_scale_percentage, Integer.valueOf(i3 * 100)));
            A11yLogger.insertLog(context, "A11Y3197", "Level" + i3);
        }

        private ZoomSeekbarChangeListener() {
        }

        @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeslSeekBar seslSeekBar) {
        }

        @Override // androidx.appcompat.widget.SeslSeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeslSeekBar seslSeekBar) {
        }
    }

    /* renamed from: -$$Nest$msetMagnifierSize, reason: not valid java name */
    public static void m72$$Nest$msetMagnifierSize(WindowMagnificationSettings windowMagnificationSettings, int i) {
        Context context = windowMagnificationSettings.mContext;
        Settings.Secure.putIntForUser(context.getContentResolver(), "accessibility_change_magnification_size", i, -2);
        int i2 = 0;
        Context context2 = windowMagnificationSettings.mContext;
        WindowMagnificationSettingsCallback windowMagnificationSettingsCallback = windowMagnificationSettings.mCallback;
        int i3 = 1;
        if (i == 4) {
            Settings.Secure.putIntForUser(context2.getContentResolver(), "accessibility_magnification_mode", 1, -2);
            MagnificationSettingsController magnificationSettingsController = MagnificationSettingsController.this;
            MagnificationSettingsController.Callback callback = magnificationSettingsController.mSettingsControllerCallback;
            WindowMagnification.AnonymousClass3 anonymousClass3 = (WindowMagnification.AnonymousClass3) callback;
            WindowMagnification.this.mHandler.post(new WindowMagnification$3$$ExternalSyntheticLambda0(anonymousClass3, magnificationSettingsController.mDisplayId, i3, i2));
            return;
        }
        if (i != 0) {
            MagnificationSettingsController magnificationSettingsController2 = MagnificationSettingsController.this;
            MagnificationSettingsController.Callback callback2 = magnificationSettingsController2.mSettingsControllerCallback;
            int i4 = magnificationSettingsController2.mDisplayId;
            WindowMagnification.AnonymousClass3 anonymousClass32 = (WindowMagnification.AnonymousClass3) callback2;
            WindowMagnification windowMagnification = WindowMagnification.this;
            windowMagnification.mHandler.post(new WindowMagnification$3$$ExternalSyntheticLambda0(anonymousClass32, i4, i, i3));
            windowMagnification.mA11yLogger.uiEventLogger.log(AccessibilityLogger.MagnificationSettingsEvent.MAGNIFICATION_SETTINGS_WINDOW_SIZE_SELECTED);
            Settings.Secure.putIntForUser(context2.getContentResolver(), "accessibility_magnification_mode", 2, -2);
            MagnificationSettingsController magnificationSettingsController3 = MagnificationSettingsController.this;
            MagnificationSettingsController.Callback callback3 = magnificationSettingsController3.mSettingsControllerCallback;
            WindowMagnification.AnonymousClass3 anonymousClass33 = (WindowMagnification.AnonymousClass3) callback3;
            WindowMagnification.this.mHandler.post(new WindowMagnification$3$$ExternalSyntheticLambda0(anonymousClass33, magnificationSettingsController3.mDisplayId, 2, i2));
            if (i == 1) {
                windowMagnificationSettings.mSettingView.announceForAccessibility(context.getResources().getString(R.string.accessibility_magnification_partial_screen_small_applied));
            } else if (i == 2) {
                windowMagnificationSettings.mSettingView.announceForAccessibility(context.getResources().getString(R.string.accessibility_magnification_partial_screen_medium_applied));
            } else if (i == 3) {
                windowMagnificationSettings.mSettingView.announceForAccessibility(context.getResources().getString(R.string.accessibility_magnification_partial_screen_large_applied));
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.android.systemui.accessibility.WindowMagnificationSettings$2] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.accessibility.WindowMagnificationSettings$3] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.systemui.accessibility.WindowMagnificationSettings$4] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.systemui.accessibility.WindowMagnificationSettings$5] */
    public WindowMagnificationSettings(Context context, WindowMagnificationSettingsCallback windowMagnificationSettingsCallback, SfVsyncFrameCallbackProvider sfVsyncFrameCallbackProvider, SecureSettings secureSettings) {
        boolean z;
        this.mAllowDiagonalScrolling = true;
        this.mContext = context;
        context.setTheme(2132018370);
        this.mWindowManager = (WindowManager) context.getSystemService(WindowManager.class);
        this.mSfVsyncFrameProvider = sfVsyncFrameCallbackProvider;
        this.mCallback = windowMagnificationSettingsCallback;
        this.mSecureSettings = secureSettings;
        if (secureSettings.getIntForUser(1, -2, "accessibility_allow_diagonal_scrolling") == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mAllowDiagonalScrolling = z;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 2039, 8, -2);
        layoutParams.gravity = 51;
        layoutParams.accessibilityTitle = context.getString(R.string.accessibility_magnification_title);
        if (context.getDisplayId() == 0 && !A11yRune.A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP) {
            layoutParams.layoutInDisplayCutoutMode = 3;
        }
        layoutParams.setFitInsetsTypes(WindowInsets.Type.systemBars());
        layoutParams.receiveInsetsIgnoringZOrder = true;
        this.mParams = layoutParams;
        this.mWindowInsetChangeRunnable = new WindowMagnificationSettings$$ExternalSyntheticLambda3(this, 0);
        inflateView();
        this.mGestureDetector = new MagnificationGestureDetector(context, context.getMainThreadHandler(), this);
        this.mMagnificationCapabilityObserver = new AnonymousClass1(context.getMainThreadHandler());
    }

    public static void applyUpToLargeTextSize(Context context, TextView textView, float f) {
        if (context != null && textView != null && f >= 0.0f) {
            if (context.getResources().getConfiguration().fontScale > 1.3f) {
                textView.setTextSize(0, (float) Math.floor(Math.ceil(f / r4) * 1.2999999523162842d));
                return;
            }
            return;
        }
        Slog.w("WindowMagnificationSettings", "parameter error");
    }

    public final Rect getDraggableWindowBounds() {
        int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.magnification_setting_margin);
        WindowMetrics currentWindowMetrics = this.mWindowManager.getCurrentWindowMetrics();
        Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout());
        Rect rect = new Rect(currentWindowMetrics.getBounds());
        rect.offsetTo(0, 0);
        WindowManager.LayoutParams layoutParams = this.mParams;
        rect.inset(0, 0, layoutParams.width, layoutParams.height);
        rect.inset(insetsIgnoringVisibility);
        rect.inset(dimensionPixelSize, dimensionPixelSize);
        return rect;
    }

    public ViewGroup getSettingView() {
        return this.mSettingView;
    }

    public final void hideSettingPanel(boolean z) {
        if (!this.mIsVisible) {
            return;
        }
        this.mSecureSettings.unregisterContentObserver(this.mMagnificationCapabilityObserver);
        this.mWindowManager.removeView(this.mSettingView);
        this.mIsVisible = false;
        if (z) {
            WindowManager.LayoutParams layoutParams = this.mParams;
            layoutParams.x = 0;
            layoutParams.y = 0;
        }
        Context context = this.mContext;
        context.unregisterReceiver(this.mScreenOffReceiver);
        ((MagnificationSettingsController.AnonymousClass1) this.mCallback).onSettingsPanelVisibilityChanged(false);
        context.getContentResolver().unregisterContentObserver(this.mWindowScaleChangeObserver);
    }

    public final void inflateView() {
        boolean z;
        boolean z2;
        boolean z3;
        int i = 0;
        if (A11yRune.A11Y_COMMON_BOOL_SUPPORT_LARGE_COVER_SCREEN_FLIP && SemWindowManager.getInstance().isFolded()) {
            z = true;
        } else {
            z = false;
        }
        Context context = this.mContext;
        if (z) {
            this.mSettingView = (LinearLayout) View.inflate(context, R.layout.window_magnification_settings_cover_view, null);
        } else {
            this.mSettingView = (LinearLayout) View.inflate(context, R.layout.window_magnification_settings_view, null);
        }
        this.mSettingView.setFocusable(true);
        this.mSettingView.setFocusableInTouchMode(true);
        this.mSettingView.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.systemui.accessibility.WindowMagnificationSettings$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                WindowMagnificationSettings windowMagnificationSettings = WindowMagnificationSettings.this;
                if (!windowMagnificationSettings.mIsVisible) {
                    return false;
                }
                return windowMagnificationSettings.mGestureDetector.onTouch(view, motionEvent);
            }
        });
        this.mSettingView.setAccessibilityDelegate(this.mPanelDelegate);
        this.mSmallButton = (ImageButton) this.mSettingView.findViewById(R.id.magnifier_small_button);
        this.mMediumButton = (ImageButton) this.mSettingView.findViewById(R.id.magnifier_medium_button);
        this.mLargeButton = (ImageButton) this.mSettingView.findViewById(R.id.magnifier_large_button);
        this.mDoneButton = (Button) this.mSettingView.findViewById(R.id.magnifier_done_button);
        this.mEditButton = (TextView) this.mSettingView.findViewById(R.id.magnifier_edit_button);
        this.mFullScreenButton = (ImageButton) this.mSettingView.findViewById(R.id.magnifier_full_button);
        this.mAllowDiagonalScrollingTitle = (TextView) this.mSettingView.findViewById(R.id.magnifier_horizontal_lock_title);
        this.mZoomSeekbar = (SecSeekBarWithIconButtonsView) this.mSettingView.findViewById(R.id.magnifier_zoom_slider);
        final float floatForUser = this.mSecureSettings.getFloatForUser("accessibility_display_magnification_scale", -2, 0.0f);
        int i2 = (int) ((floatForUser - 1.0f) / 1.0f);
        if (i2 < 0) {
            i2 = 0;
        }
        SecSeekBarWithIconButtonsView secSeekBarWithIconButtonsView = this.mZoomSeekbar;
        secSeekBarWithIconButtonsView.mSeekbar.setProgress(i2);
        ImageView imageView = secSeekBarWithIconButtonsView.mIconStart;
        if (i2 > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        SecSeekBarWithIconButtonsView.setIconViewAndFrameEnabled(imageView, z2);
        ImageView imageView2 = secSeekBarWithIconButtonsView.mIconEnd;
        if (i2 < secSeekBarWithIconButtonsView.mSeekbar.getMax()) {
            z3 = true;
        } else {
            z3 = false;
        }
        SecSeekBarWithIconButtonsView.setIconViewAndFrameEnabled(imageView2, z3);
        this.mZoomSeekbar.mSeekBarListener.mOnSeekBarChangeListener = new ZoomSeekbarChangeListener(this, i);
        this.mSmallButton.setTooltipText(context.getString(R.string.accessibility_magnification_small));
        this.mMediumButton.setTooltipText(context.getString(R.string.accessibility_magnification_medium));
        this.mLargeButton.setTooltipText(context.getString(R.string.accessibility_magnification_large));
        this.mFullScreenButton.setTooltipText(context.getString(R.string.accessibility_magnification_switch_to_full_screen));
        this.mZoomSeekbar.setAccessibilityDelegate(new SliderA11yDelegate(this, i));
        this.mZoomSeekbar.setSeekbarStateDescription(floatForUser);
        this.mZoomSeekbar.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.accessibility.WindowMagnificationSettings.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WindowMagnificationSettings.this.mZoomSeekbar.announceForAccessibility(WindowMagnificationSettings.this.mContext.getResources().getString(R.string.font_scale_percentage, Integer.valueOf(((int) floatForUser) * 100)) + WindowMagnificationSettings.this.mContext.getResources().getString(R.string.accessibility_magnification_zoom));
            }
        });
        this.mMagnifierSizeTv = (TextView) this.mSettingView.findViewById(R.id.magnifier_size);
        this.mZoomTv = (TextView) this.mSettingView.findViewById(R.id.magnifier_zoom);
        applyUpToLargeTextSize(context, this.mDoneButton, context.getResources().getDimensionPixelSize(R.dimen.magnification_setting_text_size));
        applyUpToLargeTextSize(context, this.mEditButton, context.getResources().getDimensionPixelSize(R.dimen.magnification_setting_text_size));
        applyUpToLargeTextSize(context, this.mMagnifierSizeTv, context.getResources().getDimensionPixelSize(R.dimen.magnification_setting_text_size));
        applyUpToLargeTextSize(context, this.mAllowDiagonalScrollingTitle, context.getResources().getDimensionPixelSize(R.dimen.magnification_setting_text_size));
        applyUpToLargeTextSize(context, this.mZoomTv, context.getResources().getDimensionPixelSize(R.dimen.magnification_setting_text_size));
        this.mAllowDiagonalScrollingView = (LinearLayout) this.mSettingView.findViewById(R.id.magnifier_horizontal_lock_view);
        SwitchCompat switchCompat = (SwitchCompat) this.mSettingView.findViewById(R.id.magnifier_horizontal_lock_switch);
        this.mAllowDiagonalScrollingSwitch = switchCompat;
        switchCompat.setChecked(this.mAllowDiagonalScrolling);
        ImageButton imageButton = this.mSmallButton;
        AnonymousClass3 anonymousClass3 = this.mButtonClickListener;
        imageButton.setOnClickListener(anonymousClass3);
        this.mMediumButton.setOnClickListener(anonymousClass3);
        this.mLargeButton.setOnClickListener(anonymousClass3);
        this.mDoneButton.setOnClickListener(anonymousClass3);
        this.mFullScreenButton.setOnClickListener(anonymousClass3);
        this.mEditButton.setOnClickListener(anonymousClass3);
        this.mAllowDiagonalScrollingTitle.setSelected(true);
        this.mAllowDiagonalScrollingView.setOnClickListener(anonymousClass3);
        this.mSettingView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.android.systemui.accessibility.WindowMagnificationSettings$$ExternalSyntheticLambda1
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                WindowMagnificationSettings windowMagnificationSettings = WindowMagnificationSettings.this;
                if (windowMagnificationSettings.mSettingView.isAttachedToWindow()) {
                    Handler handler = windowMagnificationSettings.mSettingView.getHandler();
                    WindowMagnificationSettings$$ExternalSyntheticLambda3 windowMagnificationSettings$$ExternalSyntheticLambda3 = windowMagnificationSettings.mWindowInsetChangeRunnable;
                    if (!handler.hasCallbacks(windowMagnificationSettings$$ExternalSyntheticLambda3)) {
                        windowMagnificationSettings.mSettingView.getHandler().post(windowMagnificationSettings$$ExternalSyntheticLambda3);
                    }
                }
                return view.onApplyWindowInsets(windowInsets);
            }
        });
    }

    public final void moveButton(final float f, final float f2) {
        this.mSfVsyncFrameProvider.postFrameCallback(new Choreographer.FrameCallback() { // from class: com.android.systemui.accessibility.WindowMagnificationSettings$$ExternalSyntheticLambda2
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                WindowMagnificationSettings windowMagnificationSettings = WindowMagnificationSettings.this;
                float f3 = f;
                float f4 = f2;
                WindowManager.LayoutParams layoutParams = windowMagnificationSettings.mParams;
                int i = (int) (layoutParams.x + f3);
                layoutParams.x = i;
                layoutParams.y = (int) (layoutParams.y + f4);
                if (windowMagnificationSettings.mIsVisible) {
                    Rect rect = windowMagnificationSettings.mDraggableWindowBounds;
                    layoutParams.x = MathUtils.constrain(i, rect.left, rect.right);
                    int i2 = layoutParams.y;
                    Rect rect2 = windowMagnificationSettings.mDraggableWindowBounds;
                    layoutParams.y = MathUtils.constrain(i2, rect2.top, rect2.bottom);
                    windowMagnificationSettings.mWindowManager.updateViewLayout(windowMagnificationSettings.mSettingView, layoutParams);
                }
            }
        });
    }

    @Override // com.android.systemui.accessibility.MagnificationGestureDetector.OnGestureListener
    public final boolean onDrag(View view, float f, float f2) {
        moveButton(f, f2);
        return true;
    }

    @Override // com.android.systemui.accessibility.MagnificationGestureDetector.OnGestureListener
    public final boolean onFinish() {
        boolean z;
        if (!this.mSingleTapDetected) {
            if (this.mSecureSettings.getIntForUser(1, -2, "accessibility_allow_diagonal_scrolling") == 1) {
                z = true;
            } else {
                z = false;
            }
            this.mAllowDiagonalScrollingSwitch.setChecked(z);
            showSettingPanel(true);
        }
        this.mSingleTapDetected = false;
        return true;
    }

    @Override // com.android.systemui.accessibility.MagnificationGestureDetector.OnGestureListener
    public final void onSingleTap(View view) {
        this.mSingleTapDetected = true;
    }

    public void setDiagonalScrolling(boolean z) {
        Context context = this.mContext;
        Settings.Secure.putIntForUser(context.getContentResolver(), "accessibility_allow_diagonal_scrolling", z ? 1 : 0, -2);
        MagnificationSettingsController magnificationSettingsController = MagnificationSettingsController.this;
        MagnificationSettingsController.Callback callback = magnificationSettingsController.mSettingsControllerCallback;
        WindowMagnification.AnonymousClass3 anonymousClass3 = (WindowMagnification.AnonymousClass3) callback;
        WindowMagnification.this.mHandler.post(new WindowMagnification$3$$ExternalSyntheticLambda1(anonymousClass3, magnificationSettingsController.mDisplayId, z, 1));
        this.mAllowDiagonalScrollingSwitch.announceForAccessibility(context.getResources().getString(R.string.accessibility_allow_diagonal_scrolling));
        this.mAllowDiagonalScrollingSwitch.setChecked(z);
        if (!z) {
            A11yLogger.insertLog(context, "A11YS3195", "Off");
        } else {
            A11yLogger.insertLog(context, "A11YS3195", "On");
        }
    }

    public final void showSettingPanel(boolean z) {
        boolean z2;
        boolean z3;
        boolean z4 = this.mIsVisible;
        Context context = this.mContext;
        if (!z4) {
            updateUIControlsIfNeeded();
            WindowManager.LayoutParams layoutParams = this.mParams;
            if (z) {
                this.mDraggableWindowBounds.set(getDraggableWindowBounds());
                Rect rect = this.mDraggableWindowBounds;
                layoutParams.x = rect.right;
                layoutParams.y = rect.bottom;
            }
            SecureSettings secureSettings = this.mSecureSettings;
            int floatForUser = (int) ((secureSettings.getFloatForUser("accessibility_display_magnification_scale", -2, 0.0f) - 1.0f) / 1.0f);
            if (floatForUser < 0) {
                floatForUser = 0;
            }
            SecSeekBarWithIconButtonsView secSeekBarWithIconButtonsView = this.mZoomSeekbar;
            secSeekBarWithIconButtonsView.mSeekbar.setProgress(floatForUser);
            ImageView imageView = secSeekBarWithIconButtonsView.mIconStart;
            if (floatForUser > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            SecSeekBarWithIconButtonsView.setIconViewAndFrameEnabled(imageView, z2);
            ImageView imageView2 = secSeekBarWithIconButtonsView.mIconEnd;
            if (floatForUser < secSeekBarWithIconButtonsView.mSeekbar.getMax()) {
                z3 = true;
            } else {
                z3 = false;
            }
            SecSeekBarWithIconButtonsView.setIconViewAndFrameEnabled(imageView2, z3);
            this.mWindowManager.addView(this.mSettingView, layoutParams);
            secureSettings.registerContentObserverForUser("accessibility_magnification_capability", this.mMagnificationCapabilityObserver, -2);
            this.mSettingView.post(new WindowMagnificationSettings$$ExternalSyntheticLambda3(this, 3));
            this.mIsVisible = true;
            ((MagnificationSettingsController.AnonymousClass1) this.mCallback).onSettingsPanelVisibilityChanged(true);
            this.mSettingView.post(new WindowMagnificationSettings$$ExternalSyntheticLambda3(this, 1));
            this.mSettingView.postDelayed(new WindowMagnificationSettings$$ExternalSyntheticLambda3(this, 2), 200L);
            if (z) {
                this.mSettingView.announceForAccessibility(context.getResources().getString(R.string.accessibility_magnification_settings_panel_description));
            }
        }
        context.registerReceiver(this.mScreenOffReceiver, new IntentFilter("android.intent.action.SCREEN_OFF"));
        context.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("accessibility_display_magnification_scale"), false, this.mWindowScaleChangeObserver, -1);
    }

    public final void updateUIControlsIfNeeded() {
        int intForUser = this.mSecureSettings.getIntForUser(0, -2, "accessibility_magnification_capability");
        if (Settings.System.getIntForUser(this.mContext.getContentResolver(), "accessibility_am_magnification_mode", 0, -2) == 1) {
            intForUser = 2;
        }
        if (intForUser != 2) {
            this.mFullScreenButton.setVisibility(0);
            this.mEditButton.setVisibility(0);
            this.mAllowDiagonalScrollingView.setVisibility(0);
        } else {
            this.mEditButton.setVisibility(0);
            this.mAllowDiagonalScrollingView.setVisibility(0);
            this.mFullScreenButton.setVisibility(8);
        }
        this.mSettingView.requestLayout();
    }

    @Override // com.android.systemui.accessibility.MagnificationGestureDetector.OnGestureListener
    public final void onLongPressed(View view) {
    }

    @Override // com.android.systemui.accessibility.MagnificationGestureDetector.OnGestureListener
    public final void onStart() {
    }
}
