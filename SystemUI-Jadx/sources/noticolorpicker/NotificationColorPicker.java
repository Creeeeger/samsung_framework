package noticolorpicker;

import android.app.admin.DevicePolicyManager;
import android.app.admin.DevicePolicyResourcesManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.VectorDrawable;
import android.os.UserHandle;
import android.os.UserManager;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import android.util.Pools;
import android.view.NotificationHeaderView;
import android.view.View;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.Chronometer;
import android.widget.DateTimeView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.android.internal.util.ContrastColorUtil;
import com.android.internal.widget.CachingIconView;
import com.android.internal.widget.CallLayout;
import com.android.internal.widget.ConversationLayout;
import com.android.internal.widget.IMessagingLayout;
import com.android.internal.widget.MessagingGroup;
import com.android.internal.widget.MessagingLayout;
import com.android.internal.widget.NotificationActionListLayout;
import com.android.internal.widget.NotificationExpandButton;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.R;
import com.android.systemui.statusbar.notification.ImageTransformState;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.HybridConversationNotificationView;
import com.android.systemui.statusbar.notification.row.HybridNotificationView;
import com.android.systemui.statusbar.notification.row.NotificationContentView;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationBigTextTemplateViewWrapper;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationMessagingTemplateViewWrapper;
import com.android.systemui.statusbar.notification.row.wrapper.NotificationViewWrapper;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import com.android.systemui.statusbar.policy.SmartReplyView;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.knox.ex.peripheral.PeripheralBarcodeConstants;
import com.samsung.android.rune.CoreRune;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class NotificationColorPicker {
    public final Context mContext;
    public int mCustomedAlpha;

    public NotificationColorPicker(Context context) {
        this.mContext = context;
    }

    public static CharSequence getSpanned(TextView textView) {
        Object tag = textView.getTag(R.id.spannded_notification_text);
        if (tag == null) {
            return null;
        }
        return (CharSequence) tag;
    }

    public static boolean isCustom(ExpandableNotificationRow expandableNotificationRow) {
        if (expandableNotificationRow == null) {
            return false;
        }
        if (!expandableNotificationRow.mIsCustomNotification && !expandableNotificationRow.mIsCustomBigNotification && !expandableNotificationRow.mIsCustomHeadsUpNotification && !expandableNotificationRow.mIsCustomPublicNotification) {
            return false;
        }
        return true;
    }

    public static boolean isNeedToUpdated(ExpandableNotificationRow expandableNotificationRow) {
        StatusBarNotification statusBarNotification;
        NotificationEntry notificationEntry = expandableNotificationRow.mEntry;
        if (notificationEntry != null && (statusBarNotification = notificationEntry.mSbn) != null) {
            boolean isColorized = statusBarNotification.getNotification().isColorized();
            boolean isCustom = isCustom(expandableNotificationRow);
            boolean z = expandableNotificationRow.mIsSummaryWithChildren;
            if ((!isColorized && !isCustom) || z) {
                return true;
            }
        }
        return false;
    }

    public static boolean isUseAppIcon(View view) {
        CachingIconView cachingIconView;
        if (view != null) {
            CachingIconView findViewById = view.findViewById(android.R.id.icon);
            if ((findViewById instanceof CachingIconView) && (cachingIconView = findViewById) != null && cachingIconView.getTag(R.id.use_app_icon) != null) {
                return ((Boolean) cachingIconView.getTag(R.id.use_app_icon)).booleanValue();
            }
        }
        return false;
    }

    public final int getAppPrimaryColor(ExpandableNotificationRow expandableNotificationRow) {
        boolean z;
        boolean z2;
        int color;
        int resolveHeaderAppIconColor = resolveHeaderAppIconColor(expandableNotificationRow);
        SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        boolean z3 = NotiRune.NOTI_STYLE_ICON_BACKGROUND_COLOR_THEME;
        Context context = this.mContext;
        if (z3) {
            settingsHelper.getClass();
            if (CoreRune.MW_FREEFORM_MINIMIZE_CONTAINER && settingsHelper.mItemLists.get("wallpapertheme_state").getIntValue() == 1) {
                z = true;
            } else {
                z = false;
            }
            if (z && (expandableNotificationRow.mEntry.mSbn.getNotification().color == 0 || settingsHelper.isApplyWallpaperThemeToNotif())) {
                if (settingsHelper.mItemLists.get("wallpapertheme_color_isgray").getIntValue() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    color = context.getColor(R.color.qs_tile_icon_on_dim_tint_color);
                } else {
                    color = context.getColor(R.color.open_theme_noti_header_color);
                }
                resolveHeaderAppIconColor = color;
            }
        }
        if (DeviceState.isOpenTheme(context)) {
            resolveHeaderAppIconColor = context.getColor(R.color.open_theme_noti_header_color);
        }
        if (context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
            resolveHeaderAppIconColor = context.getResources().getColor(R.color.qp_notification_primary_color);
        }
        if (resolveHeaderAppIconColor == 0 || resolveHeaderAppIconColor == 1) {
            return ContrastColorUtil.resolveDefaultColor(context, -1, false);
        }
        return resolveHeaderAppIconColor;
    }

    public final int getGutsTextColor() {
        Context context = this.mContext;
        int color = context.getResources().getColor(R.color.notification_guts_common_text_color);
        if (DeviceState.isOpenTheme(context)) {
            color = getTextColor(0, false, true);
        }
        if (context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
            return context.getResources().getColor(R.color.sec_qs_header_tint_color, null);
        }
        return color;
    }

    public final int getNotificationBgColor$1() {
        int notificationDefaultBgColor = getNotificationDefaultBgColor();
        this.mCustomedAlpha = Color.alpha(notificationDefaultBgColor);
        int argb = Color.argb(255, Color.red(notificationDefaultBgColor), Color.green(notificationDefaultBgColor), Color.blue(notificationDefaultBgColor));
        Context context = this.mContext;
        if (DeviceState.isOpenTheme(context)) {
            int color = context.getResources().getColor(R.color.open_theme_notification_bg_color, null);
            this.mCustomedAlpha = Color.alpha(color);
            argb = Color.argb(255, Color.red(color), Color.green(color), Color.blue(color));
        }
        if (context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
            int color2 = context.getResources().getColor(R.color.qp_notification_background_color, null);
            this.mCustomedAlpha = Color.alpha(color2);
            return Color.argb(255, Color.red(color2), Color.green(color2), Color.blue(color2));
        }
        return argb;
    }

    public final int getNotificationDefaultBgColor() {
        return this.mContext.getResources().getColor(R.color.notification_material_background_color, null);
    }

    public final int getTextColor(int i, boolean z, boolean z2) {
        int resolvePrimaryColor;
        int resolveSecondaryColor;
        int color;
        Context context = this.mContext;
        if (!z2) {
            return context.getResources().getColor(R.color.notification_no_background_header_text_color);
        }
        boolean isNeedToInvertinNightMode = isNeedToInvertinNightMode(z);
        if (z && !isNeedToInvert()) {
            z = false;
        }
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return ContrastColorUtil.resolveDefaultColor(context, 0, isNeedToInvertinNightMode);
                }
                if (!z && !isNeedToInvertinNightMode) {
                    color = context.getColor(17171164);
                } else {
                    color = context.getColor(17171163);
                }
                if (DeviceState.isOpenTheme(context)) {
                    color = context.getResources().getColor(R.color.open_theme_notification_content_text_color, null);
                }
                if (context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
                    return context.getResources().getColor(R.color.qp_notification_content_color);
                }
                return color;
            }
            if (z) {
                resolveSecondaryColor = context.getColor(17171160);
            } else {
                resolveSecondaryColor = ContrastColorUtil.resolveSecondaryColor(context, 0, isNeedToInvertinNightMode);
            }
            if (DeviceState.isOpenTheme(context)) {
                resolveSecondaryColor = context.getResources().getColor(R.color.open_theme_notification_content_text_color, null);
            }
            if (context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
                return context.getResources().getColor(R.color.qp_notification_content_color);
            }
            return resolveSecondaryColor;
        }
        if (z) {
            resolvePrimaryColor = context.getColor(17171156);
        } else {
            resolvePrimaryColor = ContrastColorUtil.resolvePrimaryColor(context, 0, isNeedToInvertinNightMode);
        }
        if (DeviceState.isOpenTheme(context)) {
            resolvePrimaryColor = context.getResources().getColor(R.color.open_theme_notification_title_text_color, null);
        }
        if (context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
            return context.getResources().getColor(R.color.qp_notification_title_color);
        }
        return resolvePrimaryColor;
    }

    public final boolean isGrayScaleIcon(ExpandableNotificationRow expandableNotificationRow) {
        return NotificationUtils.isGrayscale(expandableNotificationRow.mEntry.mIcons.mStatusBarIcon, ContrastColorUtil.getInstance(this.mContext));
    }

    public final boolean isNeedToInvert() {
        boolean z;
        int lockNoticardOpacity = ((SettingsHelper) Dependency.get(SettingsHelper.class)).getLockNoticardOpacity();
        Context context = this.mContext;
        if (!context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on) && !DeviceState.isOpenTheme(context)) {
            z = false;
        } else {
            z = true;
        }
        if (z || !ContrastColorUtil.shouldInvertTextColor(lockNoticardOpacity * 0.01f, ((SettingsHelper) Dependency.get(SettingsHelper.class)).isWhiteKeyguardWallpaper()) || ((SettingsHelper) Dependency.get(SettingsHelper.class)).getActiveThemePackage() != null) {
            return false;
        }
        return true;
    }

    public final boolean isNeedToInvertinNightMode(boolean z) {
        boolean z2;
        Context context = this.mContext;
        boolean z3 = true;
        if ((context.getResources().getConfiguration().uiMode & 48) == 32) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on) && !DeviceState.isOpenTheme(context)) {
            z3 = false;
        }
        if (!z3 && z && z2 && ((SettingsHelper) Dependency.get(SettingsHelper.class)).isWhiteKeyguardWallpaper() && ((SettingsHelper) Dependency.get(SettingsHelper.class)).getLockNoticardOpacity() * 0.01f < 0.25f) {
            return false;
        }
        return z2;
    }

    public final boolean isNightModeOn() {
        if ((this.mContext.getResources().getConfiguration().uiMode & 48) == 32) {
            return true;
        }
        return false;
    }

    public final int resolveContrastColor(int i, boolean z, ExpandableNotificationRow expandableNotificationRow) {
        int i2;
        int resolveContrastColor;
        if (expandableNotificationRow.mIsLowPriority) {
            i2 = 0;
        } else {
            i2 = expandableNotificationRow.mEntry.mSbn.getNotification().color;
        }
        Context context = this.mContext;
        if (i2 == 0) {
            resolveContrastColor = ContrastColorUtil.resolveDefaultColor(context, 0, z);
        } else {
            resolveContrastColor = ContrastColorUtil.resolveContrastColor(context, i2, i, z);
        }
        if (Color.alpha(resolveContrastColor) < 255) {
            resolveContrastColor = ContrastColorUtil.compositeColors(resolveContrastColor, i);
        }
        if (z) {
            return ContrastColorUtil.resolveContrastColor(context, resolveContrastColor, context.getColor(R.color.notification_app_icon_color), !z);
        }
        return resolveContrastColor;
    }

    public final int resolveHeaderAppIconColor(ExpandableNotificationRow expandableNotificationRow) {
        boolean z;
        boolean z2 = expandableNotificationRow.mIsLowPriority;
        if (expandableNotificationRow.mEntry.mSbn.getNotification().isColorized() && expandableNotificationRow.mBgTint != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z && !z2) {
            return getTextColor(0, expandableNotificationRow.mDimmed, true);
        }
        return resolveContrastColor(getNotificationDefaultBgColor(), isNightModeOn(), expandableNotificationRow);
    }

    public final void setNonGrayScaleIconBackground(ImageView imageView, boolean z) {
        Context context = this.mContext;
        int color = context.getColor(R.color.notification_non_grayscale_border_color);
        int color2 = context.getColor(R.color.notification_non_grayscale_fill_color);
        if (z) {
            int alpha = (Color.alpha(color) * 3) / 10;
            color2 = Color.argb((Color.alpha(color2) * 3) / 10, Color.red(color2), Color.green(color2), Color.blue(color2));
            color = Color.argb(alpha, Color.red(color), Color.green(color), Color.blue(color));
        }
        if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isShowNotificationAppIconEnabled()) {
            Drawable drawable = context.getDrawable(R.drawable.squircle);
            drawable.setColorFilter(color2, PorterDuff.Mode.SRC_IN);
            Drawable drawable2 = context.getDrawable(R.drawable.squircle_tray_stroke);
            drawable2.setColorFilter(color, PorterDuff.Mode.SRC_IN);
            imageView.setBackground(new LayerDrawable(new Drawable[]{drawable, drawable2}));
            return;
        }
        if (z) {
            imageView.setImageDrawable(context.getDrawable(R.drawable.notification_icon_circle));
            GradientDrawable gradientDrawable = (GradientDrawable) imageView.getDrawable().mutate();
            gradientDrawable.setColor(color2);
            gradientDrawable.setStroke(context.getResources().getDimensionPixelSize(R.dimen.notification_icon_border_width), color);
            return;
        }
        imageView.setBackground(context.getDrawable(R.drawable.notification_icon_circle));
        GradientDrawable gradientDrawable2 = (GradientDrawable) imageView.getBackground().mutate();
        gradientDrawable2.setColor(color2);
        gradientDrawable2.setStroke(context.getResources().getDimensionPixelSize(R.dimen.notification_icon_border_width), color);
    }

    public final void setPrimaryColor(TextView textView, boolean z) {
        if (textView != null) {
            updateSpanned(textView, z);
            textView.setTextColor(getTextColor(0, z, true));
        }
    }

    public final void updateAllTextViewColors(ExpandableNotificationRow expandableNotificationRow, boolean z) {
        int i;
        int i2;
        char c;
        int i3;
        int i4;
        int i5;
        View view;
        View view2;
        HybridNotificationView hybridNotificationView;
        View view3;
        View view4;
        if (expandableNotificationRow == null) {
            return;
        }
        boolean isGrayScaleIcon = isGrayScaleIcon(expandableNotificationRow);
        int i6 = 0;
        if (!isNeedToUpdated(expandableNotificationRow)) {
            int childCount = expandableNotificationRow.getChildCount();
            while (i6 < childCount) {
                View childAt = expandableNotificationRow.getChildAt(i6);
                if (childAt instanceof NotificationContentView) {
                    NotificationContentView notificationContentView = (NotificationContentView) childAt;
                    HybridNotificationView hybridNotificationView2 = notificationContentView.mSingleLineView;
                    if (hybridNotificationView2 != null) {
                        updateSingleLine(hybridNotificationView2, z);
                    }
                    View view5 = notificationContentView.mContractedChild;
                    int resolveHeaderAppIconColor = resolveHeaderAppIconColor(expandableNotificationRow);
                    if (view5 != null) {
                        if (isUseAppIcon(view5)) {
                            updateSmallIconForCustom(view5, resolveHeaderAppIconColor, isGrayScaleIcon);
                        } else if (expandableNotificationRow.mIsLowPriority || !expandableNotificationRow.mEntry.mSbn.getNotification().isColorized() || (expandableNotificationRow.mEntry.mSbn.getNotification().isColorized() && (view5 instanceof CallLayout))) {
                            updateSmallIconForCustom(view5, resolveHeaderAppIconColor, isGrayScaleIcon);
                        }
                    }
                    View view6 = notificationContentView.mExpandedChild;
                    if (view6 != null) {
                        if (isUseAppIcon(view6)) {
                            updateSmallIconForCustom(view6, resolveHeaderAppIconColor, isGrayScaleIcon);
                        } else if (!expandableNotificationRow.mEntry.mSbn.getNotification().isColorized() || (expandableNotificationRow.mEntry.mSbn.getNotification().isColorized() && (view6 instanceof CallLayout))) {
                            updateSmallIconForCustom(view6, resolveHeaderAppIconColor, isGrayScaleIcon);
                        }
                    }
                    View view7 = notificationContentView.mHeadsUpChild;
                    if (view7 != null) {
                        if (isUseAppIcon(view7)) {
                            updateSmallIconForCustom(view7, resolveHeaderAppIconColor, isGrayScaleIcon);
                        } else if (!expandableNotificationRow.mEntry.mSbn.getNotification().isColorized() || (expandableNotificationRow.mEntry.mSbn.getNotification().isColorized() && (view7 instanceof CallLayout))) {
                            updateSmallIconForCustom(view7, resolveHeaderAppIconColor, isGrayScaleIcon);
                        }
                    }
                    if (notificationContentView.getId() == R.id.expandedPublic && (view4 = notificationContentView.mContractedChild) != null) {
                        if (expandableNotificationRow.mEntry.mSbn.getNotification().isColorized()) {
                            resolveHeaderAppIconColor = resolveContrastColor(getNotificationDefaultBgColor(), isNightModeOn(), expandableNotificationRow);
                        }
                        updateSmallIconForCustom(view4, resolveHeaderAppIconColor, isGrayScaleIcon);
                    }
                }
                i6++;
            }
            return;
        }
        int appPrimaryColor = getAppPrimaryColor(expandableNotificationRow);
        NotificationChildrenContainer notificationChildrenContainer = expandableNotificationRow.mChildrenContainer;
        char c2 = 835;
        int i7 = 1;
        if (notificationChildrenContainer != null) {
            NotificationHeaderView notificationHeaderView = notificationChildrenContainer.mNotificationHeader;
            if (notificationHeaderView != null) {
                updateHeader(notificationHeaderView, expandableNotificationRow, true);
            }
            NotificationHeaderView notificationHeaderView2 = notificationChildrenContainer.mNotificationHeaderExpanded;
            if (notificationHeaderView2 != null) {
                updateHeader(notificationHeaderView2, expandableNotificationRow, false);
            }
            NotificationHeaderView notificationHeaderView3 = notificationChildrenContainer.mNotificationHeaderLowPriority;
            if (notificationHeaderView3 != null) {
                updateHeader(notificationHeaderView3, expandableNotificationRow, true);
                setPrimaryColor((TextView) notificationChildrenContainer.mNotificationHeaderLowPriority.findViewById(android.R.id.line), z);
                setPrimaryColor((TextView) notificationChildrenContainer.mNotificationHeaderLowPriority.findViewById(android.R.id.bounds), z);
            }
        }
        int childCount2 = expandableNotificationRow.getChildCount();
        int i8 = 0;
        while (i8 < childCount2) {
            View childAt2 = expandableNotificationRow.getChildAt(i8);
            if (childAt2 instanceof NotificationContentView) {
                NotificationContentView notificationContentView2 = (NotificationContentView) childAt2;
                View view8 = notificationContentView2.mContractedChild;
                HybridNotificationView hybridNotificationView3 = notificationContentView2.mSingleLineView;
                View view9 = notificationContentView2.mExpandedChild;
                View view10 = notificationContentView2.mHeadsUpChild;
                NotificationViewWrapper visibleWrapper = notificationContentView2.getVisibleWrapper(i6);
                NotificationViewWrapper visibleWrapper2 = notificationContentView2.getVisibleWrapper(i7);
                NotificationViewWrapper visibleWrapper3 = notificationContentView2.getVisibleWrapper(2);
                if (!(visibleWrapper instanceof NotificationBigTextTemplateViewWrapper) && !(visibleWrapper instanceof NotificationMessagingTemplateViewWrapper)) {
                    i5 = 0;
                } else {
                    i5 = i7;
                }
                if (i5 != 0) {
                    view = view10;
                    view2 = view9;
                    hybridNotificationView = hybridNotificationView3;
                    view3 = view8;
                    i4 = i8;
                    i = childCount2;
                    updateBig(view8, appPrimaryColor, isGrayScaleIcon, visibleWrapper, z, expandableNotificationRow);
                } else {
                    view = view10;
                    view2 = view9;
                    hybridNotificationView = hybridNotificationView3;
                    view3 = view8;
                    i4 = i8;
                    i = childCount2;
                    updateBase(view3, appPrimaryColor, isGrayScaleIcon, z, expandableNotificationRow);
                }
                updateBig(view2, appPrimaryColor, isGrayScaleIcon, visibleWrapper2, z, expandableNotificationRow);
                updateBig(view, appPrimaryColor, isGrayScaleIcon, visibleWrapper3, z, expandableNotificationRow);
                updateSingleLine(hybridNotificationView, z);
                View view11 = view3;
                if (view11 != null) {
                    TextView textView = (TextView) view11.findViewById(android.R.id.bounds);
                    i2 = 0;
                    i3 = 1;
                    if (textView != null) {
                        textView.setTextColor(getTextColor(0, z, true));
                    }
                    c = 835;
                    TextView textView2 = (TextView) view11.findViewById(android.R.id.line);
                    if (textView2 != null) {
                        updateSpanned(textView2, z);
                        textView2.setTextColor(getTextColor(0, z, true));
                    }
                } else {
                    c = 835;
                    i2 = 0;
                    i3 = 1;
                }
            } else {
                i = childCount2;
                i2 = i6;
                c = c2;
                i3 = i7;
                i4 = i8;
            }
            i8 = i4 + 1;
            c2 = c;
            i6 = i2;
            i7 = i3;
            childCount2 = i;
        }
    }

    public final void updateBase(View view, final int i, final boolean z, boolean z2, ExpandableNotificationRow expandableNotificationRow) {
        if (view == null) {
            return;
        }
        View findViewById = view.findViewById(R.id.smart_reply_view);
        if (findViewById instanceof SmartReplyView) {
            ((SmartReplyView) findViewById).updateButtonColorOnUiModeChanged();
        }
        final int textColor = getTextColor(0, z2, true);
        final int textColor2 = getTextColor(1, z2, true);
        if (view instanceof IMessagingLayout) {
            ConversationLayout conversationLayout = (IMessagingLayout) view;
            conversationLayout.getMessagingGroups().stream().filter(new NotificationColorPicker$$ExternalSyntheticLambda0()).forEach(new Consumer() { // from class: noticolorpicker.NotificationColorPicker$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    int i2 = textColor;
                    int i3 = textColor2;
                    boolean z3 = z;
                    int i4 = i;
                    MessagingGroup messagingGroup = (MessagingGroup) obj;
                    messagingGroup.setTextColors(i2, i3);
                    if (z3) {
                        messagingGroup.setLayoutColor(i4);
                    }
                }
            });
            if (conversationLayout instanceof ConversationLayout) {
                conversationLayout.setSenderTextColor(textColor);
            }
        }
        Context context = this.mContext;
        int color = context.getColor(R.color.notification_material_background_color);
        resolveContrastColor(color, isNightModeOn(), expandableNotificationRow);
        if (view instanceof ConversationLayout) {
            ConversationLayout conversationLayout2 = (ConversationLayout) view;
            conversationLayout2.setLayoutColor(color);
            conversationLayout2.setNotificationBackgroundColor(i);
            ImageView imageView = (ImageView) conversationLayout2.findViewById(android.R.id.icon);
            if (imageView != null) {
                if (isUseAppIcon(imageView)) {
                    conversationLayout2.findViewById(android.R.id.expandChallengeHandle).setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
                    layoutParams.setMargins(0, 0, 0, 0);
                    imageView.setLayoutParams(layoutParams);
                } else {
                    conversationLayout2.findViewById(android.R.id.expandChallengeHandle).setVisibility(0);
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) imageView.getLayoutParams();
                    int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.notification_shelf_tooltip_bottom);
                    layoutParams2.setMargins(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
                    imageView.setLayoutParams(layoutParams2);
                    imageView.setColorFilter(context.getColor(R.color.notification_app_icon_color), PorterDuff.Mode.SRC_IN);
                }
            }
            ImageView imageView2 = (ImageView) conversationLayout2.findViewById(android.R.id.expand_activities_button);
            if (imageView2 != null && imageView2.getVisibility() == 0) {
                int color2 = context.getColor(android.R.color.search_url_text);
                if (isUseAppIcon(conversationLayout2)) {
                    imageView2.setImageDrawable((VectorDrawable) context.getDrawable(R.drawable.squircle_tray_stroke_small));
                    imageView2.setColorFilter(color2);
                } else {
                    imageView2.setColorFilter((ColorFilter) null);
                    imageView2.setImageDrawable(context.getDrawable(android.R.drawable.dialog_full_holo_light));
                    ((GradientDrawable) imageView2.getDrawable().mutate()).setStroke(context.getResources().getDimensionPixelSize(R.dimen.importance_ring_stroke_width), color2);
                }
            }
            ViewParent parent = conversationLayout2.getParent();
            if (parent != null && (parent instanceof NotificationContentView)) {
                NotificationContentView notificationContentView = (NotificationContentView) parent;
                for (int i2 = 0; i2 < notificationContentView.getChildCount(); i2++) {
                    if (notificationContentView.getChildAt(i2) instanceof HybridConversationNotificationView) {
                        HybridConversationNotificationView hybridConversationNotificationView = (HybridConversationNotificationView) notificationContentView.getChildAt(i2);
                        ((ImageView) hybridConversationNotificationView.findViewById(android.R.id.exclude)).setImageIcon(conversationLayout2.getConversationIcon());
                        TextView textView = (TextView) hybridConversationNotificationView.findViewById(R.id.conversation_notification_sender);
                        if (textView != null) {
                            textView.setTextColor(textColor2);
                        }
                    }
                }
            }
        } else if (view instanceof MessagingLayout) {
            ((MessagingLayout) view).setLayoutColor(color);
        }
        int resolveContrastColor = resolveContrastColor(context.getColor(R.color.notification_material_background_color), isNightModeOn(), expandableNotificationRow);
        if (view instanceof CallLayout) {
            CallLayout callLayout = (CallLayout) view;
            callLayout.setLayoutColor(resolveContrastColor);
            if (z) {
                callLayout.setNotificationBackgroundColor(i);
            }
        }
        updateMediaActions(view, z2);
        View findViewById2 = view.findViewById(android.R.id.progress);
        if (findViewById2 instanceof ProgressBar) {
            ProgressBar progressBar = (ProgressBar) findViewById2;
            ColorStateList valueOf = ColorStateList.valueOf(context.getColor(R.color.notification_progress_tint));
            ColorStateList valueOf2 = ColorStateList.valueOf(context.getColor(R.color.notification_progress_background_tint));
            if (DeviceState.isOpenTheme(context) || context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
                valueOf = ColorStateList.valueOf(getTextColor(0, z2, true));
                valueOf2 = ColorStateList.valueOf(getTextColor(2, z2, true));
            }
            progressBar.setProgressBackgroundTintList(valueOf2);
            progressBar.setProgressTintList(valueOf);
            progressBar.setIndeterminateTintList(valueOf);
        }
        updateHeader(view, expandableNotificationRow, true);
        TextView textView2 = (TextView) view.findViewById(android.R.id.title);
        if (textView2 != null) {
            updateSpanned(textView2, z2);
            textView2.setTextColor(getTextColor(0, z2, true));
        }
        TextView textView3 = (TextView) view.findViewById(16909857);
        if (textView3 != null) {
            updateSpanned(textView3, z2);
            textView3.setTextColor(getTextColor(1, z2, true));
        }
    }

    public final void updateBig(View view, int i, boolean z, NotificationViewWrapper notificationViewWrapper, boolean z2, ExpandableNotificationRow expandableNotificationRow) {
        TextView textView;
        boolean z3;
        int textColor;
        if (view == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) view.findViewById(android.R.id.alwaysUse);
        if (frameLayout != null) {
            NotificationActionListLayout notificationActionListLayout = (LinearLayout) frameLayout.findViewById(android.R.id.alwaysScroll);
            Context context = this.mContext;
            if (notificationActionListLayout != null) {
                Drawable drawable = context.getDrawable(android.R.drawable.pointer_wait_24);
                if (DeviceState.isOpenTheme(context) || context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
                    int textColor2 = getTextColor(1, z2, true);
                    drawable.setColorFilter(Color.argb(63, Color.red(textColor2), Color.green(textColor2), Color.blue(textColor2)), PorterDuff.Mode.SRC_IN);
                }
                notificationActionListLayout.setDividerDrawable(drawable);
                int childCount = notificationActionListLayout.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    Button button = (Button) notificationActionListLayout.getChildAt(i2);
                    try {
                        z3 = notificationActionListLayout.isEmphasizedMode();
                    } catch (Exception e) {
                        Log.e("NotificationColorPicker", "Failed to check emphasized mode.");
                        e.printStackTrace();
                        z3 = false;
                    }
                    if (z3) {
                        textColor = -1;
                    } else {
                        textColor = getTextColor(0, z2, true);
                    }
                    button.setTextColor(textColor);
                    if (button.getBackground() instanceof RippleDrawable) {
                        ((RippleDrawable) button.getBackground()).setColor(ColorStateList.valueOf(context.getColor(17171149)));
                    }
                }
            }
            ImageView imageView = (ImageView) frameLayout.findViewById(android.R.id.clip_vertical);
            imageView.setImageTintList(ColorStateList.valueOf(getTextColor(1, z2, true)));
            imageView.setBackground(context.getDrawable(android.R.drawable.pointer_wait_26));
            ImageView imageView2 = (ImageView) frameLayout.findViewById(16909780);
            imageView2.setImageTintList(ColorStateList.valueOf(getTextColor(1, z2, true)));
            imageView2.setBackground(context.getDrawable(android.R.drawable.pointer_wait_26));
        }
        updateMediaActions(view, z2);
        View findViewById = view.findViewById(R.id.smart_reply_view);
        if (findViewById instanceof SmartReplyView) {
            ((SmartReplyView) findViewById).updateButtonColorOnUiModeChanged();
        }
        if ((notificationViewWrapper instanceof NotificationBigTextTemplateViewWrapper) && (textView = (TextView) view.findViewById(android.R.id.chronometer)) != null) {
            updateSpanned(textView, z2);
            textView.setTextColor(getTextColor(1, z2, true));
        }
        for (int i3 = 0; i3 < 7; i3++) {
            TextView textView2 = (TextView) view.findViewById(NotificationColorSet.INBOX_ROWS[i3]);
            if (textView2 != null) {
                updateSpanned(textView2, z2);
                textView2.setTextColor(getTextColor(1, z2, true));
            }
        }
        updateBase(view, i, z, z2, expandableNotificationRow);
    }

    public final void updateHeader(View view, final ExpandableNotificationRow expandableNotificationRow, boolean z) {
        boolean z2;
        Drawable drawable;
        String str;
        Drawable drawable2;
        if (view != null && expandableNotificationRow != null) {
            int appPrimaryColor = getAppPrimaryColor(expandableNotificationRow);
            boolean isGrayScaleIcon = isGrayScaleIcon(expandableNotificationRow);
            boolean z3 = expandableNotificationRow.mDimmed;
            ImageView imageView = (ImageView) view.findViewById(android.R.id.icon);
            Context context = this.mContext;
            if (imageView != null) {
                z2 = isUseAppIcon(imageView);
                if (z2) {
                    if (imageView.getBackground() != null) {
                        imageView.setColorFilter((ColorFilter) null);
                        imageView.setBackground(null);
                    }
                } else if (isGrayScaleIcon) {
                    int color = context.getColor(R.color.notification_app_icon_color);
                    if (context.getResources().getBoolean(R.bool.theme_designer_quick_panel_turned_on)) {
                        imageView.setColorFilter(Color.argb(255, Color.red(color), Color.green(color), Color.blue(color)), PorterDuff.Mode.SRC_IN);
                    } else {
                        imageView.setColorFilter(color, PorterDuff.Mode.SRC_IN);
                    }
                    if (imageView.getBackground() != null) {
                        if (!((SettingsHelper) Dependency.get(SettingsHelper.class)).isShowNotificationAppIconEnabled()) {
                            imageView.setBackground(context.getDrawable(R.drawable.notification_icon_circle));
                        }
                        imageView.getBackground().setColorFilter(appPrimaryColor, PorterDuff.Mode.SRC_IN);
                    }
                } else if (imageView.getBackground() != null) {
                    setNonGrayScaleIconBackground(imageView, false);
                }
            } else {
                z2 = false;
            }
            ImageView imageView2 = (ImageView) view.findViewById(android.R.id.landscape);
            if (imageView2 != null) {
                if (z2) {
                    drawable = null;
                    imageView2.setColorFilter((ColorFilter) null);
                    Drawable newDrawable = imageView.getDrawable().getConstantState().newDrawable();
                    newDrawable.mutate().setAlpha(76);
                    imageView2.setImageDrawable(newDrawable);
                } else {
                    drawable = null;
                    if (isGrayScaleIcon) {
                        if (!((SettingsHelper) Dependency.get(SettingsHelper.class)).isShowNotificationAppIconEnabled()) {
                            imageView2.setImageDrawable(context.getDrawable(R.drawable.notification_icon_circle));
                        }
                        imageView2.setColorFilter(Color.argb((Color.alpha(appPrimaryColor) * 3) / 10, Color.red(appPrimaryColor), Color.green(appPrimaryColor), Color.blue(appPrimaryColor)), PorterDuff.Mode.SRC_IN);
                    } else {
                        setNonGrayScaleIconBackground(imageView2, true);
                    }
                }
            } else {
                drawable = null;
            }
            ImageView imageView3 = (ImageView) view.findViewById(android.R.id.translucent);
            if (imageView3 != null) {
                float f = -20;
                imageView3.setColorFilter(new ColorMatrixColorFilter(new float[]{1.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 1.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 1.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 1.0f, f}));
            }
            NotificationExpandButton findViewById = view.findViewById(android.R.id.gone);
            if (findViewById != null && z) {
                int textColor = getTextColor(2, z3, z);
                findViewById.setDefaultTextColor(Color.argb(178, Color.red(textColor), Color.green(textColor), Color.blue(textColor)));
                findViewById.setHighlightTextColor(getTextColor(1, z3, z));
            }
            TextView textView = (TextView) view.findViewById(android.R.id.bounds);
            if (textView != null) {
                updateSpanned(textView, z3);
                textView.setTextColor(getTextColor(2, z3, z));
            }
            TextView textView2 = (TextView) view.findViewById(android.R.id.listContainer);
            if (textView2 != null) {
                textView2.setTextColor(getTextColor(2, z3, z));
            }
            TextView textView3 = (TextView) view.findViewById(android.R.id.linear);
            if (textView3 != null) {
                updateSpanned(textView3, z3);
                textView3.setTextColor(getTextColor(2, z3, z));
            }
            TextView textView4 = (TextView) view.findViewById(android.R.id.line1);
            if (textView4 != null) {
                textView4.setTextColor(getTextColor(2, z3, z));
            }
            TextView textView5 = (TextView) view.findViewById(android.R.id.line);
            if (textView5 != null) {
                updateSpanned(textView5, z3);
                textView5.setTextColor(getTextColor(2, z3, z));
            }
            TextView textView6 = (TextView) view.findViewById(16909895);
            if (textView6 != null) {
                textView6.setTextColor(getTextColor(2, z3, z));
            }
            DateTimeView findViewById2 = view.findViewById(16909891);
            if (findViewById2 != null) {
                findViewById2.setTextColor(getTextColor(2, z3, z));
            }
            View findViewById3 = view.findViewById(android.R.id.costsMoney);
            if (findViewById3 instanceof Chronometer) {
                Chronometer chronometer = (Chronometer) findViewById3;
                if (findViewById2 != null) {
                    chronometer.setTextColor(getTextColor(1, z3, z));
                }
            }
            TextView textView7 = (TextView) view.findViewById(android.R.id.expand_button_container);
            if (textView7 != null) {
                updateSpanned(textView7, z3);
                textView7.setTextColor(getTextColor(0, z3, z));
            }
            TextView textView8 = (TextView) view.findViewById(android.R.id.bottom_to_top);
            if (textView8 != null) {
                textView8.setTextColor(getTextColor(1, z3, z));
            }
            TextView textView9 = (TextView) view.findViewById(16909986);
            if (textView9 != null) {
                textView9.setTextColor(getTextColor(1, z3, z));
            }
            TextView textView10 = (TextView) view.findViewById(16909988);
            if (textView10 != null) {
                updateSpanned(textView10, z3);
                textView10.setTextColor(getTextColor(1, z3, z));
            }
            ImageView imageView4 = (ImageView) view.findViewById(16909987);
            if (imageView4 != null) {
                imageView4.setColorFilter(getTextColor(1, z3, z), PorterDuff.Mode.SRC_IN);
            }
            ImageView imageView5 = (ImageView) view.findViewById(android.R.id.tag_top_override);
            if (imageView5 != null) {
                if (expandableNotificationRow.mEntry.mSbn.getUser().getIdentifier() == 0) {
                    drawable2 = drawable;
                } else {
                    DevicePolicyResourcesManager resources = ((DevicePolicyManager) context.getSystemService(DevicePolicyManager.class)).getResources();
                    if (((UserManager) expandableNotificationRow.mEntry.mSbn.getPackageContext(context).getSystemService(UserManager.class)).isManagedProfile()) {
                        str = "WORK_PROFILE_ICON";
                    } else {
                        str = PeripheralBarcodeConstants.Symbology.UNDEFINED;
                    }
                    drawable2 = resources.getDrawable(str, "SOLID_COLORED", "NOTIFICATION", new Supplier() { // from class: noticolorpicker.NotificationColorPicker$$ExternalSyntheticLambda2
                        @Override // java.util.function.Supplier
                        public final Object get() {
                            return NotificationColorPicker.this.mContext.getPackageManager().getUserBadgeForDensityNoBackground(new UserHandle(expandableNotificationRow.mEntry.mSbn.getUser().getIdentifier()), 0);
                        }
                    });
                }
                imageView5.setImageDrawable(drawable2);
            }
            ImageView imageView6 = (ImageView) view.findViewById(android.R.id.src_in);
            if (imageView6 != null) {
                imageView6.setColorFilter(getTextColor(1, z3, z), PorterDuff.Mode.SRC_IN);
            }
            ImageView imageView7 = (ImageView) view.findViewById(android.R.id.auto);
            if (imageView7 != null) {
                imageView7.setColorFilter(getTextColor(1, z3, z), PorterDuff.Mode.SRC_IN);
            }
            ImageButton imageButton = (ImageButton) view.findViewById(android.R.id.header_text_divider);
            if (imageButton != null) {
                imageButton.setColorFilter(getTextColor(1, z3, z), PorterDuff.Mode.SRC_IN);
            }
        }
    }

    public final void updateIconTag(View view, ExpandableNotificationRow expandableNotificationRow) {
        CachingIconView cachingIconView;
        boolean z;
        boolean z2;
        Drawable semGetApplicationIconForIconTray;
        Context context = this.mContext;
        if (view != null && expandableNotificationRow != null && (cachingIconView = (CachingIconView) view.findViewById(android.R.id.icon)) != null) {
            Pools.SimplePool simplePool = ImageTransformState.sInstancePool;
            cachingIconView.setTag(R.id.image_icon_tag, expandableNotificationRow.mEntry.mSbn.getNotification().getSmallIcon());
            if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isShowNotificationAppIconEnabled()) {
                try {
                    PackageManager packageManager = context.getPackageManager();
                    String packageName = expandableNotificationRow.mEntry.mSbn.getPackageName();
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 4202624);
                    if (!packageName.equals("android") && !packageName.equals("com.android.systemui") && applicationInfo.icon != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
                        settingsHelper.getClass();
                        if (CoreRune.MW_FREEFORM_MINIMIZE_CONTAINER && settingsHelper.mItemLists.get("colortheme_app_icon").getIntValue() == 1) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            List<LauncherActivityInfo> activityList = ((LauncherApps) context.getSystemService(LauncherApps.class)).getActivityList(packageName, UserHandle.getUserHandleForUid(applicationInfo.uid));
                            if (!activityList.isEmpty()) {
                                semGetApplicationIconForIconTray = activityList.get(0).semGetBadgedIconForIconTray(context.getResources().getDisplayMetrics().densityDpi);
                            } else {
                                semGetApplicationIconForIconTray = packageManager.semGetApplicationIconForIconTray(applicationInfo, 1);
                            }
                        } else {
                            semGetApplicationIconForIconTray = packageManager.semGetApplicationIconForIconTray(applicationInfo, 1);
                        }
                        cachingIconView.setColorFilter((ColorFilter) null);
                        cachingIconView.setBackground((Drawable) null);
                        cachingIconView.setPadding(0, 0, 0, 0);
                        cachingIconView.setImageDrawable(semGetApplicationIconForIconTray);
                        cachingIconView.setTag(R.id.use_app_icon, Boolean.TRUE);
                        return;
                    }
                    updateSmallIcon(view, expandableNotificationRow, cachingIconView);
                    return;
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                    return;
                }
            }
            updateSmallIcon(view, expandableNotificationRow, cachingIconView);
        }
    }

    public final void updateMediaActions(View view, boolean z) {
        LinearLayout linearLayout;
        if (view != null && (linearLayout = (LinearLayout) view.findViewById(android.R.id.placeholder)) != null) {
            int childCount = linearLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                ImageView imageView = (ImageView) linearLayout.getChildAt(i);
                if (imageView != null) {
                    imageView.setColorFilter(getTextColor(0, z, true), PorterDuff.Mode.SRC_IN);
                }
            }
        }
    }

    public final void updateSingleLine(HybridNotificationView hybridNotificationView, boolean z) {
        if (hybridNotificationView == null) {
            return;
        }
        TextView textView = (TextView) hybridNotificationView.findViewById(R.id.notification_title);
        if (textView != null) {
            updateSpanned(textView, z);
            textView.setTextColor(getTextColor(0, z, true));
        }
        TextView textView2 = (TextView) hybridNotificationView.findViewById(R.id.notification_text);
        if (textView2 != null) {
            updateSpanned(textView2, z);
            textView2.setTextColor(getTextColor(1, z, true));
        }
    }

    public final void updateSmallIcon(View view, ExpandableNotificationRow expandableNotificationRow, CachingIconView cachingIconView) {
        int appPrimaryColor;
        if (!(view instanceof ConversationLayout) && !(view instanceof CallLayout)) {
            int dimensionPixelSize = expandableNotificationRow.getContext().getResources().getDimensionPixelSize(R.dimen.notification_icon_circle_padding);
            cachingIconView.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
            cachingIconView.setImageIcon(expandableNotificationRow.mEntry.mSbn.getNotification().getSmallIcon());
            if (isGrayScaleIcon(expandableNotificationRow)) {
                if (!((SettingsHelper) Dependency.get(SettingsHelper.class)).isShowNotificationAppIconEnabled()) {
                    cachingIconView.setBackground(expandableNotificationRow.getContext().getDrawable(R.drawable.notification_icon_circle));
                }
                if (cachingIconView.getBackground() != null) {
                    if (expandableNotificationRow.mEntry.mSbn.getNotification().isColorized()) {
                        appPrimaryColor = resolveContrastColor(getNotificationDefaultBgColor(), isNightModeOn(), expandableNotificationRow);
                    } else {
                        appPrimaryColor = getAppPrimaryColor(expandableNotificationRow);
                    }
                    cachingIconView.getBackground().setColorFilter(appPrimaryColor, PorterDuff.Mode.SRC_IN);
                }
            } else {
                setNonGrayScaleIconBackground(cachingIconView, false);
            }
        } else {
            cachingIconView.setImageIcon(expandableNotificationRow.mEntry.mSbn.getNotification().getSmallIcon());
        }
        cachingIconView.setTag(R.id.use_app_icon, Boolean.FALSE);
    }

    public final void updateSmallIconForCustom(View view, int i, boolean z) {
        ImageView imageView = (ImageView) view.findViewById(android.R.id.icon);
        if (imageView != null) {
            if (isUseAppIcon(imageView)) {
                if (imageView.getBackground() != null) {
                    imageView.setColorFilter((ColorFilter) null);
                    imageView.setBackground(null);
                    return;
                }
                return;
            }
            if (z) {
                Context context = this.mContext;
                imageView.setColorFilter(context.getColor(R.color.notification_app_icon_color_for_custom), PorterDuff.Mode.SRC_IN);
                if (imageView.getBackground() != null) {
                    if (!((SettingsHelper) Dependency.get(SettingsHelper.class)).isShowNotificationAppIconEnabled()) {
                        imageView.setBackground(context.getDrawable(R.drawable.notification_icon_circle));
                    }
                    imageView.getBackground().setColorFilter(i, PorterDuff.Mode.SRC_IN);
                    return;
                }
                return;
            }
            if (imageView.getBackground() != null) {
                setNonGrayScaleIconBackground(imageView, false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0031, code lost:
    
        if (r1.equals(r2) == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateSpanned(android.widget.TextView r4, boolean r5) {
        /*
            r3 = this;
            java.lang.CharSequence r0 = r4.getText()
            if (r0 == 0) goto Lc
            boolean r1 = r0 instanceof android.text.Spanned
            if (r1 == 0) goto Lc
            r1 = 1
            goto Ld
        Lc:
            r1 = 0
        Ld:
            if (r1 == 0) goto L78
            java.lang.CharSequence r1 = getSpanned(r4)
            if (r1 == 0) goto L33
            java.lang.CharSequence r1 = r4.getText()
            java.lang.String r1 = r1.toString()
            java.lang.CharSequence r2 = getSpanned(r4)
            if (r2 != 0) goto L25
            r2 = 0
            goto L2d
        L25:
            java.lang.CharSequence r2 = getSpanned(r4)
            java.lang.String r2 = r2.toString()
        L2d:
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L3d
        L33:
            r1 = 2131364522(0x7f0a0aaa, float:1.8348883E38)
            java.lang.CharSequence r2 = r4.getText()
            r4.setTag(r1, r2)
        L3d:
            android.content.Context r1 = r3.mContext
            boolean r2 = com.android.systemui.util.DeviceState.isOpenTheme(r1)
            if (r2 != 0) goto L71
            android.content.res.Resources r1 = r1.getResources()
            r2 = 2131034235(0x7f05007b, float:1.7678982E38)
            boolean r1 = r1.getBoolean(r2)
            if (r1 == 0) goto L53
            goto L71
        L53:
            if (r5 == 0) goto L5b
            boolean r1 = r3.isNeedToInvert()
            if (r1 != 0) goto L61
        L5b:
            boolean r3 = r3.isNeedToInvertinNightMode(r5)
            if (r3 == 0) goto L69
        L61:
            java.lang.CharSequence r3 = com.android.internal.util.ContrastColorUtil.clearColorSpans(r0)
            r4.setText(r3)
            goto L78
        L69:
            java.lang.CharSequence r3 = getSpanned(r4)
            r4.setText(r3)
            goto L78
        L71:
            java.lang.CharSequence r3 = com.android.internal.util.ContrastColorUtil.clearColorSpans(r0)
            r4.setText(r3)
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: noticolorpicker.NotificationColorPicker.updateSpanned(android.widget.TextView, boolean):void");
    }
}
