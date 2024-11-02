package com.android.systemui.statusbar.notification;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.os.UserManager;
import android.util.Log;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.punchhole.VIDirector$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.bixby2.controller.NotificationController;
import com.android.systemui.log.LogBuffer;
import com.android.systemui.settings.UserContextProvider;
import com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter;
import com.android.systemui.statusbar.notification.collection.inflation.BindEventManager;
import com.android.systemui.statusbar.notification.collection.notifcollection.CommonNotifCollection;
import com.android.systemui.statusbar.notification.collection.render.NotificationVisibilityProvider;
import com.android.systemui.statusbar.notification.interruption.NotificationInterruptStateProvider;
import com.android.systemui.subscreen.SubScreenManager;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import dagger.Lazy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenDeviceModelB4 extends SubscreenDeviceModelCommon {
    public final int DISPLAY_HEIGHT;

    public SubscreenDeviceModelB4(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, SettingsHelper settingsHelper, UserContextProvider userContextProvider, SubscreenNotificationController subscreenNotificationController, Lazy lazy, CommonNotifCollection commonNotifCollection, LogBuffer logBuffer, NotificationInterruptStateProvider notificationInterruptStateProvider, Lazy lazy2, Lazy lazy3, NotificationVisibilityProvider notificationVisibilityProvider, BindEventManager bindEventManager, NotificationController notificationController, UserManager userManager, ConversationNotificationManager conversationNotificationManager) {
        super(context, keyguardUpdateMonitor, settingsHelper, userContextProvider, subscreenNotificationController, lazy, commonNotifCollection, logBuffer, notificationInterruptStateProvider, lazy2, lazy3, notificationVisibilityProvider, bindEventManager, notificationController, userManager, conversationNotificationManager);
        this.DISPLAY_HEIGHT = 260;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void bindImageBitmap(ImageView imageView, Bitmap bitmap) {
        int i;
        ImageView.ScaleType scaleType;
        if (bitmap != null) {
            float width = bitmap.getWidth();
            float height = bitmap.getHeight();
            float dimensionPixelSize = getMDisplayContext().getResources().getDimensionPixelSize(R.dimen.subscreen_noti_detail_content_image_size);
            StringBuilder m = VIDirector$$ExternalSyntheticOutline0.m("bindImageBitmap bitmapWidth : ", width, " bitmapHeight : ", height, " viewWidth : ");
            m.append(dimensionPixelSize);
            Log.d("S.S.N.", m.toString());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams.gravity = 3;
            if (width > (320 * dimensionPixelSize) / 464) {
                i = (int) dimensionPixelSize;
            } else {
                i = (int) width;
            }
            layoutParams.width = i;
            layoutParams.height = -2;
            imageView.setLayoutParams(layoutParams);
            imageView.setMaxHeight((int) dimensionPixelSize);
            if (height > width * 2) {
                scaleType = ImageView.ScaleType.CENTER_CROP;
            } else {
                scaleType = ImageView.ScaleType.FIT_CENTER;
            }
            imageView.setScaleType(scaleType);
            imageView.setVisibility(0);
            imageView.setImageBitmap(bitmap);
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getDetailAdapterContentViewResource() {
        return R.layout.subscreen_notification_detail_adapter_content_layout_item;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final View getDetailAdapterLayout(RecyclerView recyclerView, int i, Context context) {
        int i2;
        if (i != 0) {
            if (i != 1) {
                i2 = -1;
            } else {
                i2 = R.layout.subscreen_notification_detail_adapter_text_item;
            }
        } else {
            i2 = R.layout.subscreen_notification_detail_adapter_item;
        }
        return LayoutInflater.from(context).inflate(i2, (ViewGroup) recyclerView, false);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getDetailAdapterReplyWordResource() {
        return R.layout.subscreen_notification_detail_adapter_content_layout_item_reply_word;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final ImageView.ScaleType getDetailContentImageScaleType() {
        return ImageView.ScaleType.CENTER_CROP;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getDispalyHeight() {
        return this.DISPLAY_HEIGHT;
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
                    i2 = R.layout.subscreen_notification_adapter_header;
                }
            } else {
                i2 = R.layout.subscreen_notification_adapter_clear_all_footer;
            }
        } else {
            i2 = R.layout.subscreen_notification_group_adapter_item;
        }
        return LayoutInflater.from(context).inflate(i2, (ViewGroup) recyclerView, false);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getListAdapterGroupItemResource() {
        return R.layout.subscreen_notification_list_adapter_group_summary_layout_item;
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
                                i2 = R.layout.subscreen_notification_list_adapter_group_summary_layout;
                            }
                        } else {
                            i2 = R.layout.subscreen_notification_list_adapter_hide_content;
                        }
                    } else {
                        i2 = R.layout.subscreen_notification_adapter_no_notification;
                    }
                } else {
                    i2 = R.layout.subscreen_notification_list_adapter_custom_view;
                }
            } else {
                i2 = R.layout.subscreen_notification_adapter_clear_all_footer;
            }
        } else {
            i2 = R.layout.subscreen_notification_list_adapter_item;
        }
        return LayoutInflater.from(context).inflate(i2, (ViewGroup) recyclerView, false);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final Animator getPopUpViewDismissAnimator(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, 0.0f, -71.0f);
        ofFloat.setDuration(200L);
        ofFloat.addListener(this.topPopupAnimationListener);
        return ofFloat;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final Animator getPopUpViewShowAnimator(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, -71.0f, 0.0f);
        ofFloat.setDuration(200L);
        return ofFloat;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final View getReplyButtonView() {
        return LayoutInflater.from(((SubScreenManager) this.mSubScreenManagerLazy.get()).mActivity).inflate(R.layout.subscreen_notification_detail_adapter_content_layout_item_reply_button, (ViewGroup) null);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getSelectedReplyBGColor() {
        return R.color.subscreen_notification_reply_word_select_color;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int getSubscreenNotificationTipResource() {
        return R.layout.subscreen_notification_tip;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000b, code lost:
    
        if (r0.mCallbackClicked == true) goto L10;
     */
    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void hideDetailNotificationIfCallback() {
        /*
            r2 = this;
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r0 = r2.mSubRoomNotification
            if (r0 == 0) goto Le
            com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter r0 = r0.mNotificationDetailAdapter
            if (r0 == 0) goto Le
            boolean r0 = r0.mCallbackClicked
            r1 = 1
            if (r0 != r1) goto Le
            goto Lf
        Le:
            r1 = 0
        Lf:
            if (r1 == 0) goto L1f
            r2.hideDetailNotification()
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r2 = r2.mSubRoomNotification
            if (r2 == 0) goto L1f
            com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter r2 = r2.mNotificationDetailAdapter
            if (r2 == 0) goto L1f
            r2.cleanAdapter()
        L1f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB4.hideDetailNotificationIfCallback():void");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon, com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void initDetailAdapterItemViewHolder(Context context, final SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter, final SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder) {
        super.initDetailAdapterItemViewHolder(context, subscreenNotificationDetailAdapter, itemViewHolder);
        itemViewHolder.mReplyButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (SubscreenNotificationDetailAdapter.ItemViewHolder.this.mInfo.mRemoteinput) {
                    Log.e("SubscreenNotificationDetailAdapter", "Click ReplyButton");
                    SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter2 = subscreenNotificationDetailAdapter;
                    subscreenNotificationDetailAdapter2.mReplyclicked = true;
                    SubscreenParentDetailItemViewHolder subscreenParentDetailItemViewHolder = SubscreenNotificationDetailAdapter.ItemViewHolder.this;
                    subscreenParentDetailItemViewHolder.startWaitState(subscreenNotificationDetailAdapter2, subscreenParentDetailItemViewHolder);
                    SystemUIAnalytics.sendEventCDLog("QPN102", "QPNE0203", "app", SubscreenNotificationDetailAdapter.ItemViewHolder.this.mInfo.mPkg);
                }
            }
        });
        itemViewHolder.mReplyVoiceButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubscreenNotificationDetailAdapter.this.mSvoiceEmojiClicked = true;
                if (itemViewHolder.mInfo.mRemoteinput) {
                    Log.d("SubscreenNotificationDetailAdapter", "Click ReplyVoiceButton");
                    SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter2 = SubscreenNotificationDetailAdapter.this;
                    SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder2 = itemViewHolder;
                    subscreenNotificationDetailAdapter2.mSelectHolder = itemViewHolder2;
                    subscreenNotificationDetailAdapter2.mSubRoomNotification.startReplyActivity(1, itemViewHolder2.mInfo);
                }
                SystemUIAnalytics.sendEventLog("QPN102", "QPNE0205");
            }
        });
        itemViewHolder.mReplyEmojiButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.systemui.statusbar.notification.SubscreenDeviceModelB4$initDetailAdapterItemViewHolder$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubscreenNotificationDetailAdapter.this.mSvoiceEmojiClicked = true;
                if (itemViewHolder.mInfo.mRemoteinput) {
                    Log.d("SubscreenNotificationDetailAdapter", "Click ReplyEmojiButton");
                    SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter2 = SubscreenNotificationDetailAdapter.this;
                    SubscreenNotificationDetailAdapter.ItemViewHolder itemViewHolder2 = itemViewHolder;
                    subscreenNotificationDetailAdapter2.mSelectHolder = itemViewHolder2;
                    subscreenNotificationDetailAdapter2.mSubRoomNotification.startReplyActivity(2, itemViewHolder2.mInfo);
                }
                SystemUIAnalytics.sendEventLog("QPN102", "QPNE0206");
            }
        });
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final boolean isRunOnCoverAvailable() {
        KeyguardUpdateMonitor keyguardUpdateMonitor = (KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class);
        if (keyguardUpdateMonitor.isSecure() && !keyguardUpdateMonitor.isFingerprintOptionEnabled() && !keyguardUpdateMonitor.isFaceOptionEnabled()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0073, code lost:
    
        if (r0 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0086, code lost:
    
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0087, code lost:
    
        if (r3 != 1) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x008a, code lost:
    
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x008b, code lost:
    
        if (r13 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x008d, code lost:
    
        r14.mReplyVoiceButton.setVisibility(8);
     */
    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon, com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onBindDetailAdapterItemViewHolder(com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter r13, com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter.ItemViewHolder r14) {
        /*
            r12 = this;
            super.onBindDetailAdapterItemViewHolder(r13, r14)
            com.android.systemui.statusbar.notification.SubscreenNotificationInfo r0 = r14.mInfo
            boolean r0 = r0.mRemoteinput
            r1 = 8
            android.widget.LinearLayout r2 = r14.mReplylayout
            android.widget.LinearLayout r3 = r14.mReplyVoiceEmojiLayout
            android.widget.TextView r4 = r14.mReplyButton
            if (r0 == 0) goto La9
            int r0 = r13.mItemPostionInGroup
            if (r0 > r1) goto La9
            boolean r0 = r12.isRunOnCoverAvailable()
            r5 = 0
            if (r0 == 0) goto L99
            r4.setVisibility(r1)
            r3.setVisibility(r5)
            com.android.systemui.statusbar.notification.SubscreenSubRoomNotification r13 = r13.mSubRoomNotification
            r13.getClass()
            java.lang.String r13 = "voice_input_type"
            java.lang.String[] r10 = new java.lang.String[]{r13}
            r0 = 0
            android.content.Context r3 = com.android.systemui.statusbar.notification.SubscreenSubRoomNotification.mContext     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            android.content.ContentResolver r6 = r3.getContentResolver()     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            java.lang.String r3 = "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"
            android.net.Uri r7 = android.net.Uri.parse(r3)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            r8 = 0
            r9 = 0
            r11 = 0
            android.database.Cursor r0 = r6.query(r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L76 java.lang.Exception -> L78
            r3 = r5
            if (r0 == 0) goto L73
        L45:
            boolean r4 = r0.moveToNext()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L76
            if (r4 == 0) goto L73
            java.lang.String r4 = "NAME"
            int r4 = r0.getColumnIndex(r4)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L76
            r6 = -1
            if (r4 == r6) goto L45
            java.lang.String r4 = r0.getString(r4)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L76
            if (r4 == 0) goto L45
            boolean r6 = r4.isEmpty()     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L76
            if (r6 != 0) goto L45
            boolean r4 = r4.equals(r13)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L76
            if (r4 == 0) goto L45
            java.lang.String r4 = "VALUE"
            int r4 = r0.getColumnIndex(r4)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L76
            int r3 = r0.getInt(r4)     // Catch: java.lang.Exception -> L71 java.lang.Throwable -> L76
            goto L45
        L71:
            r13 = move-exception
            goto L7a
        L73:
            if (r0 == 0) goto L86
            goto L83
        L76:
            r12 = move-exception
            goto L93
        L78:
            r13 = move-exception
            r3 = r5
        L7a:
            java.lang.String r4 = "SubscreenSubRoomNotification"
            java.lang.String r6 = "Error while get voice_input_type value "
            android.util.Log.e(r4, r6, r13)     // Catch: java.lang.Throwable -> L76
            if (r0 == 0) goto L86
        L83:
            r0.close()
        L86:
            r13 = 1
            if (r3 != r13) goto L8a
            goto L8b
        L8a:
            r13 = r5
        L8b:
            if (r13 != 0) goto L9f
            android.widget.ImageView r13 = r14.mReplyVoiceButton
            r13.setVisibility(r1)
            goto L9f
        L93:
            if (r0 == 0) goto L98
            r0.close()
        L98:
            throw r12
        L99:
            r4.setVisibility(r5)
            r3.setVisibility(r1)
        L9f:
            r14.inflateReplyWord()
            r2.setVisibility(r5)
            r12.setEditButton(r14)
            goto Lb5
        La9:
            r4.setVisibility(r1)
            r3.setVisibility(r1)
            r2.setVisibility(r1)
            r12.setEditButton(r14)
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenDeviceModelB4.onBindDetailAdapterItemViewHolder(com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter, com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter$ItemViewHolder):void");
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon
    public final void setMarqueeItem(TextView textView) {
        SubscreenNotificationTemplate subscreenNotificationTemplate = this.popupViewNotiTemplate;
        if (subscreenNotificationTemplate != null) {
            subscreenNotificationTemplate.mMarqueeText = textView;
        }
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelCommon
    public final void setPopupViewLayout(Context context, boolean z, FrameLayout frameLayout) {
        View inflate;
        if (z) {
            inflate = LayoutInflater.from(context).inflate(R.layout.subscreen_notification_detail_popup_top, frameLayout);
        } else {
            inflate = LayoutInflater.from(context).inflate(R.layout.subscreen_notification_detail_popup_full, frameLayout);
        }
        this.mPopUpViewLayout = inflate;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final void setReplyWordTextStyle(TextView textView, Typeface typeface) {
        textView.setTypeface(typeface);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final PopupWindow showReplyButtonViewPopupWindow(View view, View view2) {
        PopupWindow popupWindow = new PopupWindow(view, -1, -2);
        popupWindow.setOutsideTouchable(true);
        popupWindow.showAtLocation(view, 0, 0, (view2.getHeight() / 2) + ((this.DISPLAY_HEIGHT + 0) / 2) + 0);
        return popupWindow;
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int smallIconPadding(boolean z, boolean z2, boolean z3) {
        int i;
        Resources resources = getMDisplayContext().getResources();
        if (z) {
            i = R.dimen.subscreen_noti_header_icon_circle_padding;
        } else if (z2) {
            i = R.dimen.subscreen_noti_full_popup_icon_circle_padding;
        } else {
            i = R.dimen.subscreen_noti_icon_circle_padding;
        }
        return resources.getDimensionPixelSize(i);
    }

    @Override // com.android.systemui.statusbar.notification.SubscreenDeviceModelParent
    public final int squircleRadius(boolean z, boolean z2) {
        int i;
        Resources resources = getMDisplayContext().getResources();
        if (z) {
            i = R.dimen.subscreen_noti_header_small_icon_bg_radius;
        } else if (z2) {
            i = R.dimen.subscreen_noti_popup_small_icon_bg_radius;
        } else {
            i = R.dimen.subscreen_noti_list_small_icon_bg_radius;
        }
        return resources.getDimensionPixelSize(i);
    }
}
