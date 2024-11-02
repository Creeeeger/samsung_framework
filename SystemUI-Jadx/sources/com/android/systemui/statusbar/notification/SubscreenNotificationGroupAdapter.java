package com.android.systemui.statusbar.notification;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.statusbar.NotificationRemoteInputManager;
import com.android.systemui.statusbar.notification.collection.NotifCollection;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.util.Assert;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.sec.ims.im.ImIntent;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenNotificationGroupAdapter extends SubscreenParentAdapter {
    public static SubscreenNotificationGroupAdapter sInstance;
    public int mPositionControlCnt;
    public SubscreenNotificationInfo mSummaryInfo;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CustomViewHolder extends SubscreenParentItemViewHolder {
        public final NotificationRemoteInputManager.AnonymousClass1 RemoteViewInteractionHandler;
        public final FrameLayout mContentView;

        public CustomViewHolder(View view) {
            super(view);
            this.mNotificationInfoManager = SubscreenNotificationGroupAdapter.this.mNotificationInfoManager;
            this.mContentView = (FrameLayout) view.findViewById(R.id.custom_remote_views);
            this.RemoteViewInteractionHandler = ((NotificationRemoteInputManager) Dependency.get(NotificationRemoteInputManager.class)).mInteractionHandler;
            view.setOnClickListener(new View.OnClickListener(SubscreenNotificationGroupAdapter.this) { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationGroupAdapter.CustomViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenNotificationGroupAdapter.this.mDeviceModel;
                    subscreenDeviceModelParent.getClass();
                    if (subscreenDeviceModelParent instanceof SubscreenDeviceModelB5) {
                        CustomViewHolder customViewHolder = CustomViewHolder.this;
                        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter = SubscreenNotificationGroupAdapter.this;
                        subscreenNotificationGroupAdapter.mDeviceModel.clickAdapterItem(subscreenNotificationGroupAdapter.mContext, customViewHolder);
                    } else {
                        CustomViewHolder customViewHolder2 = CustomViewHolder.this;
                        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter2 = SubscreenNotificationGroupAdapter.this;
                        customViewHolder2.animateClickNotification(subscreenNotificationGroupAdapter2.mNotificationAnimatorManager, subscreenNotificationGroupAdapter2.mSubRoomNotification, true);
                    }
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FooterViewHolder extends RecyclerView.ViewHolder {
        public final FrameLayout mClearAllLayout;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* renamed from: com.android.systemui.statusbar.notification.SubscreenNotificationGroupAdapter$FooterViewHolder$2, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass2 implements View.OnClickListener {
            public AnonymousClass2(SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter) {
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FooterViewHolder.this.mClearAllLayout.setEnabled(false);
                FooterViewHolder.this.mClearAllLayout.setAlpha(0.5f);
                SubscreenNotificationGroupAdapter.this.mNotificationAnimatorManager.performDismissAllAnimations(new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationGroupAdapter$FooterViewHolder$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter = SubscreenNotificationGroupAdapter.this;
                        SubscreenNotificationInfoManager subscreenNotificationInfoManager = subscreenNotificationGroupAdapter.mNotificationInfoManager;
                        SubscreenNotificationInfo subscreenNotificationInfo = subscreenNotificationGroupAdapter.mSummaryInfo;
                        subscreenNotificationInfoManager.getClass();
                        NotifCollection notifCollection = subscreenNotificationInfoManager.mNotifCollection;
                        notifCollection.getClass();
                        Assert.isMainThread();
                        ArrayList arrayList = new ArrayList(notifCollection.mReadOnlyNotificationSet);
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            NotificationEntry notificationEntry = (NotificationEntry) arrayList.get(i);
                            if (!notificationEntry.getChannel().isImportantConversation() && subscreenNotificationInfo.mSbn.getGroupKey().equals(notificationEntry.mSbn.getGroupKey()) && SubscreenNotificationInfoManager.canViewBeCleared(notificationEntry.row)) {
                                subscreenNotificationInfoManager.removeNotification(notificationEntry);
                            }
                        }
                        subscreenNotificationInfoManager.clearAllRecyclerViewItem();
                        subscreenNotificationInfoManager.mGroupDataArray.clear();
                        if (subscreenNotificationInfoManager.mIsShownGroup) {
                            subscreenNotificationInfoManager.mNotificationGroupAdapter.mDeviceModel.hideGroupNotification();
                        }
                    }
                });
                SystemUIAnalytics.sendEventCDLog("QPN101", "QPNE0201", ImIntent.Extras.EXTRA_FROM, "group");
            }
        }

        public FooterViewHolder(View view) {
            super(view);
            int i;
            FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.subcreen_item_clear_all_layout);
            this.mClearAllLayout = frameLayout;
            ((TextView) view.findViewById(R.id.subcreen_item_clear_all)).semSetButtonShapeEnabled(true);
            Drawable background = frameLayout.getBackground();
            if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isShowButtonBackground()) {
                i = 0;
            } else {
                i = 255;
            }
            background.setAlpha(i);
            view.setContentDescription(SubscreenNotificationGroupAdapter.this.mContext.getResources().getString(R.string.clear_all_notifications_text) + SubscreenNotificationGroupAdapter.this.mContext.getResources().getString(R.string.accessibility_button));
            frameLayout.setOnFocusChangeListener(new View.OnFocusChangeListener(SubscreenNotificationGroupAdapter.this) { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationGroupAdapter.FooterViewHolder.1
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z) {
                    if (z) {
                        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter = SubscreenNotificationGroupAdapter.this;
                        SubscreenRecyclerView subscreenRecyclerView = subscreenNotificationGroupAdapter.mSubRoomNotification.mNotificationRecyclerView;
                        subscreenNotificationGroupAdapter.mNotificationInfoManager.getClass();
                        subscreenRecyclerView.scrollToPosition(SubscreenNotificationInfoManager.getNotificationInfoArraySize());
                    }
                }
            });
            frameLayout.setOnClickListener(new AnonymousClass2(SubscreenNotificationGroupAdapter.this));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HeaderViewHolder extends RecyclerView.ViewHolder {
        public TextView mAppName;
        public ImageView mBackButton;
        public ImageView mIcon;
        public ImageView mSecureIcon;
        public ImageView mTwoPhoneIcon;

        public HeaderViewHolder(View view) {
            super(view);
            SubscreenNotificationGroupAdapter.this.mDeviceModel.initGroupAdapterHeaderViewHolder(SubscreenNotificationGroupAdapter.this.mContext, view, SubscreenNotificationGroupAdapter.this, this);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HideContenNotificationViewHolder extends SubscreenParentItemViewHolder {
        public final TextView mAppName;

        public HideContenNotificationViewHolder(View view) {
            super(view);
            this.mNotificationInfoManager = SubscreenNotificationGroupAdapter.this.mNotificationInfoManager;
            this.mAppName = (TextView) view.findViewById(R.id.hide_content_app_name);
            view.setOnClickListener(new View.OnClickListener(SubscreenNotificationGroupAdapter.this) { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationGroupAdapter.HideContenNotificationViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenNotificationGroupAdapter.this.mDeviceModel;
                    subscreenDeviceModelParent.getClass();
                    if (subscreenDeviceModelParent instanceof SubscreenDeviceModelB5) {
                        HideContenNotificationViewHolder hideContenNotificationViewHolder = HideContenNotificationViewHolder.this;
                        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter = SubscreenNotificationGroupAdapter.this;
                        subscreenNotificationGroupAdapter.mDeviceModel.clickAdapterItem(subscreenNotificationGroupAdapter.mContext, hideContenNotificationViewHolder);
                    } else {
                        HideContenNotificationViewHolder hideContenNotificationViewHolder2 = HideContenNotificationViewHolder.this;
                        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter2 = SubscreenNotificationGroupAdapter.this;
                        hideContenNotificationViewHolder2.animateClickNotification(subscreenNotificationGroupAdapter2.mNotificationAnimatorManager, subscreenNotificationGroupAdapter2.mSubRoomNotification, true);
                    }
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotificationGroupItemViewHolder extends SubscreenParentItemViewHolder {
        public NotificationGroupItemViewHolder(View view) {
            super(view);
            this.mNotificationInfoManager = SubscreenNotificationGroupAdapter.this.mNotificationInfoManager;
            view.setOnClickListener(new View.OnClickListener(SubscreenNotificationGroupAdapter.this) { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationGroupAdapter.NotificationGroupItemViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenNotificationGroupAdapter.this.mDeviceModel;
                    subscreenDeviceModelParent.getClass();
                    if (subscreenDeviceModelParent instanceof SubscreenDeviceModelB5) {
                        NotificationGroupItemViewHolder notificationGroupItemViewHolder = NotificationGroupItemViewHolder.this;
                        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter = SubscreenNotificationGroupAdapter.this;
                        subscreenNotificationGroupAdapter.mDeviceModel.clickAdapterItem(subscreenNotificationGroupAdapter.mContext, notificationGroupItemViewHolder);
                    } else {
                        NotificationGroupItemViewHolder notificationGroupItemViewHolder2 = NotificationGroupItemViewHolder.this;
                        SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter2 = SubscreenNotificationGroupAdapter.this;
                        notificationGroupItemViewHolder2.animateClickNotification(subscreenNotificationGroupAdapter2.mNotificationAnimatorManager, subscreenNotificationGroupAdapter2.mSubRoomNotification, false);
                    }
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        int i;
        SubscreenDeviceModelParent subscreenDeviceModelParent = this.mDeviceModel;
        subscreenDeviceModelParent.getClass();
        if (subscreenDeviceModelParent instanceof SubscreenDeviceModelB5) {
            i = 1;
        } else {
            i = 2;
        }
        return this.mNotificationInfoManager.getGroupDataArraySize() + i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        SubscreenDeviceModelParent subscreenDeviceModelParent = this.mDeviceModel;
        subscreenDeviceModelParent.getClass();
        this.mPositionControlCnt = !(subscreenDeviceModelParent instanceof SubscreenDeviceModelB5) ? 1 : 0;
        if (i == this.mNotificationInfoManager.getGroupDataArraySize() + this.mPositionControlCnt) {
            return 1;
        }
        if (i == 0) {
            SubscreenDeviceModelParent subscreenDeviceModelParent2 = this.mDeviceModel;
            subscreenDeviceModelParent2.getClass();
            if (!(subscreenDeviceModelParent2 instanceof SubscreenDeviceModelB5)) {
                return 2;
            }
        }
        if (((SubscreenNotificationInfo) this.mNotificationInfoManager.mGroupDataArray.get(i - this.mPositionControlCnt)).mRow.needsRedaction() && this.mDeviceModel.isNotShwonNotificationState(((SubscreenNotificationInfo) this.mNotificationInfoManager.mGroupDataArray.get(i - this.mPositionControlCnt)).mRow.mEntry)) {
            return 4;
        }
        if (((SubscreenNotificationInfo) this.mNotificationInfoManager.mGroupDataArray.get(i - this.mPositionControlCnt)).mRow.mEntry.mSbn.getNotification().contentView != null && this.mDeviceModel.isShowingRemoteView(((SubscreenNotificationInfo) this.mNotificationInfoManager.mGroupDataArray.get(i - this.mPositionControlCnt)).mRow.mEntry.mSbn.getPackageName())) {
            return 5;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        if (viewHolder instanceof NotificationGroupItemViewHolder) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("Group postion Item: ", i, "SubscreenNotificationGroupAdapter");
            NotificationGroupItemViewHolder notificationGroupItemViewHolder = (NotificationGroupItemViewHolder) viewHolder;
            notificationGroupItemViewHolder.mInfo = (SubscreenNotificationInfo) this.mNotificationInfoManager.mGroupDataArray.get(i - this.mPositionControlCnt);
            SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter = SubscreenNotificationGroupAdapter.this;
            notificationGroupItemViewHolder.updateTitleAndContent(subscreenNotificationGroupAdapter.mContext);
            SubscreenDeviceModelParent subscreenDeviceModelParent = subscreenNotificationGroupAdapter.mDeviceModel;
            SubscreenNotificationInfo subscreenNotificationInfo = notificationGroupItemViewHolder.mInfo;
            View view = notificationGroupItemViewHolder.itemView;
            subscreenDeviceModelParent.setClock(subscreenNotificationInfo, view);
            notificationGroupItemViewHolder.setUnreadMessageCount(subscreenNotificationGroupAdapter.mContext);
            subscreenNotificationGroupAdapter.mDeviceModel.setGroupAdapterIcon(subscreenNotificationGroupAdapter.mContext, subscreenNotificationGroupAdapter, notificationGroupItemViewHolder);
            subscreenNotificationGroupAdapter.mDeviceModel.setListItemTextLayout(subscreenNotificationGroupAdapter.mContext, view);
            notificationGroupItemViewHolder.mNotificationInfoManager.addRecyclerViewItemView(notificationGroupItemViewHolder);
            notificationGroupItemViewHolder.initTranslationX();
            return;
        }
        if (viewHolder instanceof HeaderViewHolder) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("Group postion header: ", i, "SubscreenNotificationGroupAdapter");
            HeaderViewHolder headerViewHolder = (HeaderViewHolder) viewHolder;
            ImageView imageView = headerViewHolder.mIcon;
            SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter2 = SubscreenNotificationGroupAdapter.this;
            if (imageView != null) {
                imageView.clearColorFilter();
                headerViewHolder.mIcon.setBackground(null);
                headerViewHolder.mIcon.setImageDrawable(null);
                headerViewHolder.mIcon.setPadding(0, 0, 0, 0);
                SubscreenNotificationInfo subscreenNotificationInfo2 = subscreenNotificationGroupAdapter2.mSummaryInfo;
                if (subscreenNotificationInfo2.mAppIcon != null && !subscreenNotificationInfo2.useSmallIcon()) {
                    headerViewHolder.mIcon.setImageDrawable(subscreenNotificationGroupAdapter2.mSummaryInfo.mAppIcon);
                } else {
                    headerViewHolder.mIcon.setImageDrawable(subscreenNotificationGroupAdapter2.mSummaryInfo.mIcon);
                    subscreenNotificationGroupAdapter2.mDeviceModel.updateSmallIconSquircleBg(headerViewHolder.mIcon, true, false);
                    subscreenNotificationGroupAdapter2.mDeviceModel.updateIconColor(headerViewHolder.mIcon, subscreenNotificationGroupAdapter2.mSummaryInfo.mRow.mEntry);
                }
            }
            headerViewHolder.mAppName.setText(subscreenNotificationGroupAdapter2.mSummaryInfo.mAppName);
            SubscreenDeviceModelParent subscreenDeviceModelParent2 = subscreenNotificationGroupAdapter2.mDeviceModel;
            ImageView imageView2 = headerViewHolder.mTwoPhoneIcon;
            SubscreenNotificationInfo subscreenNotificationInfo3 = subscreenNotificationGroupAdapter2.mSummaryInfo;
            subscreenDeviceModelParent2.getClass();
            SubscreenDeviceModelParent.updateTwoPhoneIcon(imageView2, subscreenNotificationInfo3);
            SubscreenDeviceModelParent subscreenDeviceModelParent3 = subscreenNotificationGroupAdapter2.mDeviceModel;
            ImageView imageView3 = headerViewHolder.mSecureIcon;
            SubscreenNotificationInfo subscreenNotificationInfo4 = subscreenNotificationGroupAdapter2.mSummaryInfo;
            subscreenDeviceModelParent3.getClass();
            SubscreenDeviceModelParent.updateKnoxIcon(imageView3, subscreenNotificationInfo4);
            return;
        }
        if (viewHolder instanceof FooterViewHolder) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("Group postion Footer: ", i, "SubscreenNotificationGroupAdapter");
            FooterViewHolder footerViewHolder = (FooterViewHolder) viewHolder;
            SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter3 = SubscreenNotificationGroupAdapter.this;
            SubscreenNotificationInfoManager subscreenNotificationInfoManager = subscreenNotificationGroupAdapter3.mNotificationInfoManager;
            int groupDataArraySize = subscreenNotificationInfoManager.getGroupDataArraySize();
            int i2 = 0;
            while (true) {
                if (i2 < groupDataArraySize) {
                    if (SubscreenNotificationInfoManager.canViewBeCleared(((SubscreenNotificationInfo) subscreenNotificationInfoManager.mGroupDataArray.get(i2)).mRow)) {
                        z = true;
                        break;
                    }
                    i2++;
                } else {
                    z = false;
                    break;
                }
            }
            FrameLayout frameLayout = footerViewHolder.mClearAllLayout;
            if (!z) {
                frameLayout.setVisibility(8);
            } else {
                frameLayout.setEnabled(true);
                frameLayout.setAlpha(1.0f);
                frameLayout.setVisibility(0);
            }
            subscreenNotificationGroupAdapter3.mDeviceModel.setGroupAdapterFooterMargin(subscreenNotificationGroupAdapter3.mContext, footerViewHolder);
            return;
        }
        if (viewHolder instanceof HideContenNotificationViewHolder) {
            HideContenNotificationViewHolder hideContenNotificationViewHolder = (HideContenNotificationViewHolder) viewHolder;
            SubscreenNotificationInfo createItemsData = SubscreenNotificationGroupAdapter.this.mNotificationInfoManager.createItemsData(((SubscreenNotificationInfo) this.mNotificationInfoManager.mGroupDataArray.get(i - this.mPositionControlCnt)).mRow);
            hideContenNotificationViewHolder.mInfo = createItemsData;
            hideContenNotificationViewHolder.mAppName.setText(createItemsData.getContentHiddenText(createItemsData));
            hideContenNotificationViewHolder.mNotificationInfoManager.addRecyclerViewItemView(hideContenNotificationViewHolder);
            hideContenNotificationViewHolder.initTranslationX();
            return;
        }
        if (viewHolder instanceof CustomViewHolder) {
            CustomViewHolder customViewHolder = (CustomViewHolder) viewHolder;
            SubscreenNotificationInfo subscreenNotificationInfo5 = (SubscreenNotificationInfo) this.mNotificationInfoManager.mGroupDataArray.get(i - this.mPositionControlCnt);
            SubscreenNotificationGroupAdapter subscreenNotificationGroupAdapter4 = SubscreenNotificationGroupAdapter.this;
            customViewHolder.mInfo = subscreenNotificationGroupAdapter4.mNotificationInfoManager.createItemsData(subscreenNotificationInfo5.mRow);
            FrameLayout frameLayout2 = customViewHolder.mContentView;
            frameLayout2.removeAllViews();
            frameLayout2.addView(customViewHolder.mInfo.mContentView.apply(subscreenNotificationGroupAdapter4.mContext, frameLayout2, customViewHolder.RemoteViewInteractionHandler));
            customViewHolder.mNotificationInfoManager.addRecyclerViewItemView(customViewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        View groupAdapterLayout = this.mDeviceModel.getGroupAdapterLayout(recyclerView, i, this.mContext);
        if (i == 0) {
            return new NotificationGroupItemViewHolder(groupAdapterLayout);
        }
        if (i == 1) {
            return new FooterViewHolder(groupAdapterLayout);
        }
        if (i == 2) {
            return new HeaderViewHolder(groupAdapterLayout);
        }
        if (i == 4) {
            return new HideContenNotificationViewHolder(groupAdapterLayout);
        }
        if (i == 5) {
            return new CustomViewHolder(groupAdapterLayout);
        }
        return null;
    }
}
