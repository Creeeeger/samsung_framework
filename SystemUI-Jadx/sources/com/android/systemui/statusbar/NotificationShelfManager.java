package com.android.systemui.statusbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.Settings;
import android.util.MathUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.systemui.Dependency;
import com.android.systemui.FontSizeUtils;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.ShelfToolTipManager;
import com.android.systemui.noticenter.NotiCenterPlugin;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.shade.ShadeExpansionChangeEvent;
import com.android.systemui.shade.ShadeExpansionListener;
import com.android.systemui.shade.ShadeExpansionStateManager;
import com.android.systemui.statusbar.phone.SecShelfNotificationIconContainer;
import com.android.systemui.statusbar.phone.SwitchableDoubleShadowTextView;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.ShadowDelegateUtil;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationShelfManager implements SettingsHelper.OnChangedCallback, ConfigurationController.ConfigurationListener {
    public final ConfigurationController configurationController;
    public final Context context;
    public boolean isAnimationEndedAndVisible;
    public boolean isFullyExpanded;
    public TextView mClearAllButton;
    public int mIconContainerPaddingEnd;
    public LinearLayout mNotiSettingContainer;
    public ImageView mNotiSettingIcon;
    public SwitchableDoubleShadowTextView mNotiSettingText;
    public SecShelfNotificationIconContainer mNotificationIconContainer;
    public LinearLayout mShelfTextArea;
    public NotificationPanelViewController notificationPanelController;
    public final SettingsHelper settingsHelper;
    public NotificationShelf shelf;
    public int statusBarState;
    public final StatusBarStateController statusBarStateController;
    public final float OPAQUE_ALPHA = 1.0f;
    public final float DISABLED_ALPHA = 0.3f;
    public final float ALPHA_ACCEL_INTERPOLATOR = 2.0f;
    public final long ALPHA_DURATION = 150;

    public NotificationShelfManager(SettingsHelper settingsHelper, Context context, ConfigurationController configurationController, ShadeExpansionStateManager shadeExpansionStateManager, StatusBarStateController statusBarStateController) {
        this.settingsHelper = settingsHelper;
        this.context = context;
        this.configurationController = configurationController;
        this.statusBarStateController = statusBarStateController;
        Uri[] uriArr = {Settings.System.getUriFor("emergency_mode"), Settings.System.getUriFor("show_button_background")};
        settingsHelper.registerCallback(this, (Uri[]) Arrays.copyOf(uriArr, uriArr.length));
        shadeExpansionStateManager.addExpansionListener(new ShadeExpansionListener() { // from class: com.android.systemui.statusbar.NotificationShelfManager.1
            @Override // com.android.systemui.shade.ShadeExpansionListener
            public final void onPanelExpansionChanged(ShadeExpansionChangeEvent shadeExpansionChangeEvent) {
                boolean z;
                if (shadeExpansionChangeEvent.fraction == 1.0f) {
                    z = true;
                } else {
                    z = false;
                }
                NotificationShelfManager notificationShelfManager = NotificationShelfManager.this;
                if (notificationShelfManager.isFullyExpanded != z) {
                    notificationShelfManager.isFullyExpanded = z;
                    notificationShelfManager.startButtonAnimation(notificationShelfManager.mNotiSettingContainer, z);
                    notificationShelfManager.startButtonAnimation(notificationShelfManager.mClearAllButton, notificationShelfManager.isFullyExpanded);
                }
            }
        });
    }

    @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
    public final void onChanged(Uri uri) {
        boolean z = !this.settingsHelper.isEmergencyMode();
        LinearLayout linearLayout = this.mNotiSettingContainer;
        if (linearLayout != null) {
            linearLayout.setEnabled(z);
            if (linearLayout.getVisibility() == 0) {
                if (z) {
                    linearLayout.setAlpha(1.0f);
                } else {
                    linearLayout.setAlpha(0.3f);
                }
            }
        }
        updateShelfButtonBackground();
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onConfigChanged(Configuration configuration) {
        Context context = this.context;
        String string = context.getResources().getString(R.string.accessibility_button);
        String string2 = context.getResources().getString(R.string.noti_setting_text);
        String string3 = context.getResources().getString(R.string.clear_all_text);
        LinearLayout linearLayout = this.mNotiSettingContainer;
        if (linearLayout != null) {
            linearLayout.setContentDescription(string2 + "," + string);
        }
        TextView textView = this.mClearAllButton;
        if (textView != null) {
            textView.setContentDescription(string3 + "," + string);
        }
        SwitchableDoubleShadowTextView switchableDoubleShadowTextView = this.mNotiSettingText;
        if (switchableDoubleShadowTextView != null) {
            switchableDoubleShadowTextView.setText(R.string.noti_setting_text);
        }
        TextView textView2 = this.mClearAllButton;
        if (textView2 != null) {
            textView2.setText(R.string.clear_all_text);
        }
        updateShelfButtonBackground();
        ((ShelfToolTipManager) Dependency.get(ShelfToolTipManager.class)).releaseToolTip();
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onDensityOrFontScaleChanged() {
        int i;
        updateShelfHeight();
        float constrain = MathUtils.constrain(this.context.getResources().getConfiguration().fontScale, 0.8f, 1.3f);
        ImageView imageView = this.mNotiSettingIcon;
        if (imageView != null) {
            imageView.getLayoutParams().width = (int) (imageView.getContext().getResources().getDimensionPixelSize(R.dimen.notification_settings_icon_size) * constrain);
            imageView.getLayoutParams().height = (int) (imageView.getContext().getResources().getDimensionPixelSize(R.dimen.notification_settings_icon_size) * constrain);
            int dimensionPixelSize = (int) (imageView.getContext().getResources().getDimensionPixelSize(R.dimen.notification_settings_icon_padding) * constrain);
            imageView.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        }
        SwitchableDoubleShadowTextView switchableDoubleShadowTextView = this.mNotiSettingText;
        if (switchableDoubleShadowTextView != null) {
            switchableDoubleShadowTextView.setPaddingRelative(switchableDoubleShadowTextView.getPaddingStart(), switchableDoubleShadowTextView.getPaddingTop(), switchableDoubleShadowTextView.getContext().getResources().getDimensionPixelSize(R.dimen.notification_settings_text_padding_end), switchableDoubleShadowTextView.getPaddingBottom());
        }
        if (QpRune.QUICK_TABLET) {
            i = R.dimen.bottom_bar_button_text_size_for_tablet;
        } else {
            i = R.dimen.bottom_bar_button_text_size;
        }
        FontSizeUtils.updateFontSize(this.mNotiSettingText, i, 0.8f, 1.3f);
        FontSizeUtils.updateFontSize(this.mClearAllButton, i, 0.8f, 1.3f);
        updateShelfButtonBackground();
        updateClearAllOnShelf();
        SecShelfNotificationIconContainer secShelfNotificationIconContainer = this.mNotificationIconContainer;
        if (secShelfNotificationIconContainer != null) {
            secShelfNotificationIconContainer.onDensityOrFontScaleChanged();
        }
    }

    @Override // com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener
    public final void onUiModeChanged() {
        updateTextColor();
        updateShelfButtonBackground();
    }

    public final void startButtonAnimation(final View view, final boolean z) {
        if (view == null) {
            return;
        }
        view.animate().cancel();
        if (z) {
            view.setVisibility(0);
        }
        final Ref$FloatRef ref$FloatRef = new Ref$FloatRef();
        ref$FloatRef.element = 0.0f;
        if (z) {
            if (view.isEnabled()) {
                ref$FloatRef.element = this.OPAQUE_ALPHA;
            } else {
                ref$FloatRef.element = this.DISABLED_ALPHA;
            }
        }
        view.animate().alpha(ref$FloatRef.element).setDuration(this.ALPHA_DURATION).setInterpolator(new AccelerateInterpolator(this.ALPHA_ACCEL_INTERPOLATOR)).setListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.NotificationShelfManager$startButtonAnimation$1
            /* JADX WARN: Removed duplicated region for block: B:26:0x0056  */
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onAnimationEnd(android.animation.Animator r6) {
                /*
                    r5 = this;
                    boolean r6 = r1
                    if (r6 != 0) goto La
                    android.view.View r6 = r2
                    r0 = 4
                    r6.setVisibility(r0)
                La:
                    android.view.View r6 = r2
                    kotlin.jvm.internal.Ref$FloatRef r0 = r3
                    float r0 = r0.element
                    r6.setAlpha(r0)
                    android.view.View r6 = r2
                    int r6 = r6.getId()
                    r0 = 2131363676(0x7f0a075c, float:1.8347168E38)
                    if (r6 != r0) goto L95
                    boolean r6 = r1
                    if (r6 == 0) goto L95
                    java.lang.Class<com.android.systemui.ShelfToolTipManager> r6 = com.android.systemui.ShelfToolTipManager.class
                    java.lang.Object r6 = com.android.systemui.Dependency.get(r6)
                    com.android.systemui.ShelfToolTipManager r6 = (com.android.systemui.ShelfToolTipManager) r6
                    com.samsung.android.widget.SemTipPopup r0 = r6.mNotiSettingTip
                    if (r0 != 0) goto L95
                    boolean r0 = r6.alreadyToolTipShown
                    r1 = 0
                    r2 = 1
                    if (r0 != 0) goto L53
                    boolean r0 = r6.isTappedNotiSettings
                    if (r0 != 0) goto L53
                    boolean r0 = r6.mIsQsExpanded
                    if (r0 != 0) goto L53
                    boolean r0 = r6.mJustBeginToOpen
                    if (r0 == 0) goto L53
                    int r0 = r6.panelExpandedCount
                    int r3 = r6.THRESHOLD_COUNT
                    if (r0 != r3) goto L48
                    r0 = r2
                    goto L49
                L48:
                    r0 = r1
                L49:
                    if (r0 == 0) goto L53
                    boolean r0 = r6.hasBottomClippedNotiRow()
                    if (r0 == 0) goto L53
                    r0 = r2
                    goto L54
                L53:
                    r0 = r1
                L54:
                    if (r0 == 0) goto L95
                    android.widget.LinearLayout r0 = r6.mNotiSettingContainer
                    if (r0 == 0) goto L60
                    com.samsung.android.widget.SemTipPopup r3 = new com.samsung.android.widget.SemTipPopup
                    r3.<init>(r0)
                    goto L61
                L60:
                    r3 = 0
                L61:
                    r6.mNotiSettingTip = r3
                    if (r3 == 0) goto L71
                    android.content.Context r0 = r6.mContext
                    r4 = 2131954698(0x7f130c0a, float:1.9545903E38)
                    java.lang.String r0 = r0.getString(r4)
                    r3.setMessage(r0)
                L71:
                    com.samsung.android.widget.SemTipPopup r0 = r6.mNotiSettingTip
                    if (r0 == 0) goto L78
                    r0.setExpanded(r2)
                L78:
                    com.samsung.android.widget.SemTipPopup r0 = r6.mNotiSettingTip
                    if (r0 == 0) goto L7f
                    r0.setOutsideTouchEnabled(r1)
                L7f:
                    com.samsung.android.widget.SemTipPopup r0 = r6.mNotiSettingTip
                    if (r0 == 0) goto L8b
                    com.android.systemui.ShelfToolTipManager$tryToShowToolTip$2 r1 = new com.android.systemui.ShelfToolTipManager$tryToShowToolTip$2
                    r1.<init>()
                    r0.setOnStateChangeListener(r1)
                L8b:
                    r6.calculatePosition()
                    com.samsung.android.widget.SemTipPopup r6 = r6.mNotiSettingTip
                    if (r6 == 0) goto L95
                    r6.show(r2)
                L95:
                    android.view.View r6 = r2
                    int r6 = r6.getId()
                    r0 = 2131362404(0x7f0a0264, float:1.8344588E38)
                    if (r6 != r0) goto La6
                    com.android.systemui.statusbar.NotificationShelfManager r6 = r4
                    boolean r5 = r1
                    r6.isAnimationEndedAndVisible = r5
                La6:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.NotificationShelfManager$startButtonAnimation$1.onAnimationEnd(android.animation.Animator):void");
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }
        }).start();
    }

    public final void updateClearAllOnShelf() {
        TextView textView = this.mClearAllButton;
        if (textView != null) {
            NotificationPanelViewController notificationPanelViewController = this.notificationPanelController;
            Intrinsics.checkNotNull(notificationPanelViewController);
            boolean hasNotifications = notificationPanelViewController.mNotificationStackScrollLayoutController.hasNotifications(0, true);
            NotiCenterPlugin.INSTANCE.getClass();
            if (NotiCenterPlugin.isNotiCenterPluginConnected() && NotiCenterPlugin.noclearEnabled) {
                hasNotifications = NotiCenterPlugin.clearableNotifications;
            }
            textView.setEnabled(hasNotifications);
            if (this.isAnimationEndedAndVisible && textView.getVisibility() == 0) {
                if (hasNotifications) {
                    textView.setAlpha(1.0f);
                } else {
                    textView.setAlpha(0.3f);
                }
            }
        }
    }

    public final void updateShelfButtonBackground() {
        if (this.settingsHelper.isShowButtonBackground()) {
            ImageView imageView = this.mNotiSettingIcon;
            if (imageView != null) {
                Drawable drawable = imageView.getContext().getDrawable(R.drawable.notification_setting_icon);
                Intrinsics.checkNotNull(drawable);
                imageView.setImageDrawable(drawable);
                imageView.setColorFilter(imageView.getContext().getColor(17171269));
                imageView.setAlpha(1.0f);
            }
            SwitchableDoubleShadowTextView switchableDoubleShadowTextView = this.mNotiSettingText;
            if (switchableDoubleShadowTextView != null) {
                switchableDoubleShadowTextView.shadowEnabled = false;
                switchableDoubleShadowTextView.setTextColor(switchableDoubleShadowTextView.getContext().getColor(17171269));
                switchableDoubleShadowTextView.setAlpha(1.0f);
            }
            LinearLayout linearLayout = this.mNotiSettingContainer;
            if (linearLayout != null) {
                linearLayout.setBackground(linearLayout.getContext().getDrawable(R.drawable.shelf_button_show_button_highlight_background));
            }
            TextView textView = this.mClearAllButton;
            if (textView != null) {
                textView.setTextColor(textView.getContext().getColor(17171269));
                textView.setBackground(textView.getContext().getDrawable(R.drawable.shelf_button_show_button_highlight_background));
                int dimensionPixelSize = textView.getContext().getResources().getDimensionPixelSize(R.dimen.notification_shelf_clear_button_side_padding);
                textView.setPadding(dimensionPixelSize, textView.getPaddingTop(), dimensionPixelSize, textView.getPaddingBottom());
                return;
            }
            return;
        }
        ImageView imageView2 = this.mNotiSettingIcon;
        if (imageView2 != null) {
            ShadowDelegateUtil shadowDelegateUtil = ShadowDelegateUtil.INSTANCE;
            Drawable drawable2 = imageView2.getContext().getDrawable(R.drawable.notification_setting_icon);
            Intrinsics.checkNotNull(drawable2);
            float dimension = imageView2.getContext().getResources().getDimension(R.dimen.notification_shelf_shadow_radius);
            int dimensionPixelSize2 = imageView2.getContext().getResources().getDimensionPixelSize(R.dimen.notification_settings_icon_size);
            shadowDelegateUtil.getClass();
            imageView2.setImageDrawable(ShadowDelegateUtil.createShadowDrawable(drawable2, dimension, 0.235f, dimensionPixelSize2));
            imageView2.clearColorFilter();
            imageView2.setAlpha(0.85f);
        }
        SwitchableDoubleShadowTextView switchableDoubleShadowTextView2 = this.mNotiSettingText;
        if (switchableDoubleShadowTextView2 != null) {
            switchableDoubleShadowTextView2.shadowEnabled = true;
            switchableDoubleShadowTextView2.setTextColor(switchableDoubleShadowTextView2.getContext().getColor(R.color.notification_shelf_setting_text_color));
            switchableDoubleShadowTextView2.setAlpha(0.85f);
        }
        LinearLayout linearLayout2 = this.mNotiSettingContainer;
        if (linearLayout2 != null) {
            linearLayout2.setBackground(linearLayout2.getContext().getDrawable(R.drawable.notification_shelf_setting_button_ripple_button));
        }
        TextView textView2 = this.mClearAllButton;
        if (textView2 != null) {
            textView2.setTextColor(textView2.getContext().getResources().getColor(R.color.notification_shelf_clear_text_color));
            textView2.setBackground(textView2.getContext().getDrawable(R.drawable.shelf_button_show_button_background_state_hide));
        }
    }

    public final void updateShelfHeight() {
        int i;
        NotificationShelf notificationShelf = this.shelf;
        if (notificationShelf != null) {
            ViewGroup.LayoutParams layoutParams = notificationShelf.getLayoutParams();
            Resources resources = notificationShelf.getContext().getResources();
            if (this.statusBarState != 1) {
                if (QpRune.QUICK_TABLET) {
                    i = R.dimen.sec_notification_shelf_height_tablet;
                } else {
                    i = R.dimen.sec_notification_shelf_height;
                }
            } else {
                i = R.dimen.notification_shelf_height_for_lockscreen;
            }
            layoutParams.height = resources.getDimensionPixelSize(i);
        }
        LinearLayout linearLayout = this.mShelfTextArea;
        if (linearLayout != null) {
            linearLayout.getLayoutParams().height = linearLayout.getContext().getResources().getDimensionPixelSize(R.dimen.sec_notification_shelf_height);
        }
        SecShelfNotificationIconContainer secShelfNotificationIconContainer = this.mNotificationIconContainer;
        if (secShelfNotificationIconContainer != null) {
            ViewGroup.LayoutParams layoutParams2 = secShelfNotificationIconContainer.getLayoutParams();
            if (layoutParams2 != null) {
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) layoutParams2;
                Context context = this.context;
                layoutParams3.height = context.getResources().getDimensionPixelSize(R.dimen.sec_notification_shelf_height);
                layoutParams3.width = context.getResources().getDimensionPixelSize(R.dimen.sec_notification_shelf_width);
                layoutParams3.gravity = 17;
                secShelfNotificationIconContainer.setLayoutParams(layoutParams3);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        }
    }

    public final void updateShelfTextAreaVisibility() {
        int i;
        int i2 = 0;
        boolean z = true;
        if (this.statusBarState != 1) {
            z = false;
        }
        LinearLayout linearLayout = this.mShelfTextArea;
        if (linearLayout != null) {
            if (z) {
                i = 8;
            } else {
                i = 0;
            }
            linearLayout.setVisibility(i);
        }
        SecShelfNotificationIconContainer secShelfNotificationIconContainer = this.mNotificationIconContainer;
        if (secShelfNotificationIconContainer != null) {
            if (!z) {
                i2 = 8;
            }
            secShelfNotificationIconContainer.setVisibility(i2);
        }
    }

    public final void updateTextColor() {
        TextView textView = this.mClearAllButton;
        Context context = this.context;
        if (textView != null) {
            textView.setTextColor(context.getColor(R.color.notification_shelf_clear_text_color));
        }
        SwitchableDoubleShadowTextView switchableDoubleShadowTextView = this.mNotiSettingText;
        if (switchableDoubleShadowTextView != null) {
            switchableDoubleShadowTextView.setTextColor(context.getColor(R.color.notification_shelf_setting_text_color));
        }
    }
}
