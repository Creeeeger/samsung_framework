package com.android.systemui.statusbar.notification;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.UserManager;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.Property;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.bixby2.controller.NotificationController;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.settings.UserContextProvider;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.collection.inflation.BindEventManager;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.cover.CoverState;
import dagger.Lazy;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenDeviceModelCover extends SubscreenDeviceModelParent {
    public View mClearCoverHeaderLayout;
    public View mPopUpViewLayout;
    public final SubscreenDeviceModelCover$mSettingsListener$1 mSettingsListener;
    public int mTopPopupHeight;
    public final KeyguardUpdateMonitorCallback mUpdateMonitorCallback;

    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.statusbar.notification.SubscreenDeviceModelCover$mSettingsListener$1] */
    public SubscreenDeviceModelCover(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, SettingsHelper settingsHelper, UserContextProvider userContextProvider, SubscreenNotificationController subscreenNotificationController, Lazy lazy, CommonNotifCollection commonNotifCollection, LogBuffer logBuffer, NotificationInterruptStateProvider notificationInterruptStateProvider, Lazy lazy2, Lazy lazy3, NotificationVisibilityProvider notificationVisibilityProvider, BindEventManager bindEventManager, NotificationController notificationController, UserManager userManager, ConversationNotificationManager conversationNotificationManager) {
        super(context, keyguardUpdateMonitor, settingsHelper, userContextProvider, subscreenNotificationController, lazy, commonNotifCollection, logBuffer, notificationInterruptStateProvider, lazy2, lazy3, notificationVisibilityProvider, bindEventManager, notificationController, userManager, conversationNotificationManager);
        this.mUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCover$mUpdateMonitorCallback$1
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onUpdateCoverState(CoverState coverState) {
                if (coverState != null) {
                    int type = coverState.getType();
                    SubscreenDeviceModelCover subscreenDeviceModelCover = SubscreenDeviceModelCover.this;
                    if (type == 17) {
                        subscreenDeviceModelCover.mIsCovered = !coverState.getSwitchState();
                        if (subscreenDeviceModelCover.popupViewShowing) {
                            subscreenDeviceModelCover.dismissImmediately(2);
                        }
                        if (subscreenDeviceModelCover.presentationShowing) {
                            subscreenDeviceModelCover.dismissImmediately(1);
                        }
                    } else {
                        subscreenDeviceModelCover.mIsCovered = false;
                    }
                    if (!subscreenDeviceModelCover.mIsCovered) {
                        subscreenDeviceModelCover.clearMainList();
                        if (subscreenDeviceModelCover.mFullScreenIntentEntries.size() > 0) {
                            subscreenDeviceModelCover.mFullScreenIntentEntries.clear();
                        }
                    }
                    KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m(" onUpdateCoverState - coverType = ", type, " isCovered = ", subscreenDeviceModelCover.mIsCovered, "S.S.N.");
                }
            }
        };
        KeyguardStateController keyguardStateController = (KeyguardStateController) Dependency.get(KeyguardStateController.class);
        this.mKeyguardStateController = keyguardStateController;
        if (keyguardStateController != null) {
            ((KeyguardStateControllerImpl) keyguardStateController).addCallback(new KeyguardStateController.Callback() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCover$initKeyguardStateConroller$1
                @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
                public final void onKeyguardShowingChanged() {
                    SubscreenDeviceModelCover subscreenDeviceModelCover = SubscreenDeviceModelCover.this;
                    if (subscreenDeviceModelCover.mIsCovered) {
                        subscreenDeviceModelCover.getClass();
                        subscreenDeviceModelCover.clearMainList();
                    }
                }
            });
        }
        this.mSettingsListener = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCover$mSettingsListener$1
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                if (Intrinsics.areEqual(uri, Settings.Secure.getUriFor("lock_screen_show_notifications")) || Intrinsics.areEqual(uri, Settings.Secure.getUriFor("turn_on_cover_screen_for_notification")) || Intrinsics.areEqual(uri, Settings.Secure.getUriFor("cover_screen_show_notification"))) {
                    SubscreenDeviceModelCover.this.updateNotiShowBlocked();
                }
            }
        };
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getDetailAdapterContentViewResource() {
        return R.layout.clear_cover_subscreen_notification_detail_adapter_content_layout_item;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final View getDetailAdapterLayout(RecyclerView recyclerView, int i, Context context) {
        int i2;
        if (i != 0) {
            if (i != 1) {
                i2 = -1;
            } else {
                i2 = R.layout.clear_cover_subscreen_notification_detail_adapter_text_item;
            }
        } else {
            i2 = R.layout.clear_cover_subscreen_notification_detail_adapter_item;
        }
        return LayoutInflater.from(context).inflate(i2, (ViewGroup) recyclerView, false);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final View getGroupAdapterLayout(RecyclerView recyclerView, int i, Context context) {
        int i2;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 4) {
                        i2 = -1;
                    } else {
                        i2 = R.layout.subscreen_notification_group_adapter_hide_content;
                    }
                } else {
                    i2 = R.layout.clear_cover_subscreen_notification_adapter_header;
                }
            } else {
                i2 = R.layout.clear_cover_subscreen_notification_adapter_clear_all_footer;
            }
        } else {
            i2 = R.layout.clear_cover_subscreen_notification_group_adapter_item;
        }
        return LayoutInflater.from(context).inflate(i2, (ViewGroup) recyclerView, false);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getListAdapterGroupItemResource() {
        return R.layout.clear_cover_subscreen_notification_list_adapter_group_summary_layout_item;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final View getListAdapterLayout(RecyclerView recyclerView, int i, Context context) {
        int i2;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                i2 = -1;
                            } else {
                                i2 = R.layout.clear_cover_subscreen_notification_list_adapter_group_summary_layout;
                            }
                        } else {
                            i2 = R.layout.clear_cover_subscreen_notification_list_adapter_hide_content;
                        }
                    } else {
                        i2 = R.layout.clear_cover_subscreen_notification_adapter_no_notification;
                    }
                } else {
                    i2 = R.layout.clear_cover_subscreen_notification_list_adapter_custom_view;
                }
            } else {
                i2 = R.layout.clear_cover_subscreen_notification_adapter_clear_all_footer;
            }
        } else {
            i2 = R.layout.clear_cover_subscreen_notification_list_adapter_item;
        }
        return LayoutInflater.from(context).inflate(i2, (ViewGroup) recyclerView, false);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final Animator getPopUpViewDismissAnimator(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, 0.0f, this.mTopPopupHeight * (-1));
        ofFloat.setDuration(400L);
        ofFloat.addListener(this.topPopupAnimationListener);
        return ofFloat;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final Animator getPopUpViewShowAnimator(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, this.mTopPopupHeight * (-1), 0.0f);
        ofFloat.setDuration(400L);
        return ofFloat;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final WindowManager.LayoutParams getTopPopupLp() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -2, 2021, android.R.id.KEYCODE_POUND, -3);
        layoutParams.setTitle("SubscreenNotification");
        layoutParams.gravity = 48;
        layoutParams.layoutInDisplayCutoutMode = 1;
        layoutParams.setFitInsetsTypes(0);
        layoutParams.setTrustedOverlay();
        return layoutParams;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initDisplay() {
        boolean z;
        Context context = this.mContext;
        Display[] displays = ((DisplayManager) context.getSystemService("display")).getDisplays("com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY");
        if (displays.length == 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            Display display = displays[0];
            this.mSubDisplay = display;
            this.mDisplayContext = context.createDisplayContext(display);
        } else {
            this.mDisplayContext = context;
            Log.d("S.S.N.", "Cover - fail to get subDisplay");
        }
        this.mTopPopupHeight = getMDisplayContext().getResources().getDimensionPixelSize(R.dimen.clear_cover_subscreen_noti_top_popup_height);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initMainHeaderView(LinearLayout linearLayout) {
        LinearLayout linearLayout2;
        View findViewById = linearLayout.findViewById(R.id.clear_cover_header_layout);
        this.mClearCoverHeaderLayout = findViewById;
        if (findViewById != null && (linearLayout2 = (LinearLayout) findViewById.findViewById(R.id.back_key)) != null) {
            linearLayout2.setContentDescription(linearLayout2.getContext().getString(R.string.subscreen_back_button_content_description));
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Animator animator;
                    SubscreenDeviceModelCover subscreenDeviceModelCover = SubscreenDeviceModelCover.this;
                    if (subscreenDeviceModelCover.mMainViewAnimator != null) {
                        return;
                    }
                    final SubscreenSubRoomNotification subscreenSubRoomNotification = subscreenDeviceModelCover.mSubRoomNotification;
                    if (subscreenSubRoomNotification != null) {
                        animator = subscreenSubRoomNotification.mNotificationAnimatorManager.alphaAnimatedMainView(subscreenSubRoomNotification.mSubscreenMainLayout, new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1$1$1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SubscreenSubRoomNotification subscreenSubRoomNotification2 = SubscreenSubRoomNotification.this;
                                if (subscreenSubRoomNotification2.mIsShownDetail) {
                                    subscreenSubRoomNotification2.hideDetailNotification();
                                } else {
                                    subscreenSubRoomNotification2.hideGroupNotification();
                                }
                            }
                        }, 300L);
                    } else {
                        animator = null;
                    }
                    subscreenDeviceModelCover.mMainViewAnimator = animator;
                }
            });
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initialize() {
        super.initialize();
        this.mKeyguardUpdateMonitor.registerCallback(this.mUpdateMonitorCallback);
        this.mSettingsHelper.registerCallback(this.mSettingsListener, Settings.Secure.getUriFor("lock_screen_show_notifications"), Settings.Secure.getUriFor("turn_on_cover_screen_for_notification"), Settings.Secure.getUriFor("cover_screen_show_notification"));
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isProper(NotificationEntry notificationEntry, boolean z) {
        if (super.isProper(notificationEntry, z) && this.mIsCovered) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01b6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:117:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0146 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0150 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0183  */
    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void makePopupDetailView(android.content.Context r17, com.android.systemui.statusbar.notification.collection.NotificationEntry r18, boolean r19, android.widget.FrameLayout r20) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelCover.makePopupDetailView(android.content.Context, com.android.systemui.statusbar.notification.collection.NotificationEntry, boolean, android.widget.FrameLayout):void");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void onDisplayReady() {
        boolean z;
        Context context = this.mContext;
        Display[] displays = ((DisplayManager) context.getSystemService("display")).getDisplays("com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY");
        if (displays.length == 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            Display display = displays[0];
            this.mSubDisplay = display;
            this.mDisplayContext = context.createDisplayContext(display);
            this.mWindowManager = (WindowManager) getMDisplayContext().getSystemService("window");
            Log.d("S.S.N.", " CC screen - onDisplayReady");
        }
        SubscreenSubRoomNotification subscreenSubRoomNotification = this.mSubRoomNotification;
        if (subscreenSubRoomNotification != null) {
            Context mDisplayContext = getMDisplayContext();
            if (SubscreenSubRoomNotification.sInstance != null && SubscreenSubRoomNotification.mContext.getResources().getConfiguration().densityDpi != mDisplayContext.getResources().getConfiguration().densityDpi) {
                SubscreenSubRoomNotification.mContext = mDisplayContext;
                subscreenSubRoomNotification.mNotificationInfoManager.mContext = mDisplayContext;
                subscreenSubRoomNotification.mNotificationTouchManager.mContext = mDisplayContext;
                subscreenSubRoomNotification.mMainView = LayoutInflater.from(mDisplayContext).inflate(R.layout.subscreen_notification_main, (ViewGroup) null);
                SubscreenSubRoomNotification.getDeviceModel().initMainHeaderView((LinearLayout) subscreenSubRoomNotification.mMainView.findViewById(R.id.subscreen_main_layout));
                subscreenSubRoomNotification.initRecyclerView();
                subscreenSubRoomNotification.initAdapter(subscreenSubRoomNotification.mNotificationDetailAdapter);
                subscreenSubRoomNotification.initAdapter(subscreenSubRoomNotification.mNotificationListAdapter);
                subscreenSubRoomNotification.initAdapter(subscreenSubRoomNotification.mNotificationGroupAdapter);
            }
        }
    }

    public final CharSequence removeSpannableColor(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            int color = this.mContext.getColor(R.color.subscreen_notification_primary_default);
            SpannableString spannableString = new SpannableString(charSequence);
            ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(color);
            Intrinsics.checkNotNull(charSequence);
            spannableString.setSpan(foregroundColorSpan, 0, charSequence.length(), 33);
            return spannableString;
        }
        return null;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setListAdpaterFirstChildTopMargin(SubscreenParentItemViewHolder subscreenParentItemViewHolder) {
        if (this.mListAdapterItemPosition == 0) {
            View view = subscreenParentItemViewHolder.itemView;
            int dimensionPixelSize = getMDisplayContext().getResources().getDimensionPixelSize(R.dimen.clear_cover_subscreen_noti_list_layout_margin);
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = dimensionPixelSize;
            view.setLayoutParams(layoutParams);
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setListAdpaterPosition(int i) {
        this.mListAdapterItemPosition = i;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int smallIconPadding(boolean z, boolean z2, boolean z3) {
        int i;
        Resources resources = getMDisplayContext().getResources();
        if (z2) {
            i = R.dimen.clear_cover_subscreen_noti_full_popup_icon_circle_padding;
        } else {
            i = R.dimen.clear_cover_subscreen_noti_icon_circle_padding;
        }
        return resources.getDimensionPixelSize(i);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int squircleRadius(boolean z, boolean z2) {
        int i;
        Resources resources = getMDisplayContext().getResources();
        if (z2) {
            i = R.dimen.clear_cover_subscreen_noti_popup_small_icon_bg_radius;
        } else {
            i = R.dimen.clear_cover_subscreen_noti_list_small_icon_bg_radius;
        }
        return resources.getDimensionPixelSize(i);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void updateMainHeaderViewVisibility(int i) {
        View view = this.mClearCoverHeaderLayout;
        if (view != null) {
            view.setVisibility(i);
        }
    }
}
