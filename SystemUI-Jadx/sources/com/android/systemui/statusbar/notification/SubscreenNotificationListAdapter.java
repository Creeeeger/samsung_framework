package com.android.systemui.statusbar.notification;

import android.animation.Animator;
import android.app.ActivityManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.statusbar.LockscreenNotificationInfo;
import com.android.systemui.statusbar.NotificationRemoteInputManager;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.stack.NotificationChildrenContainer;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.sec.ims.im.ImIntent;
import java.util.ArrayList;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenNotificationListAdapter extends SubscreenParentAdapter {
    public static SubscreenNotificationListAdapter sInstance;
    public Animator mFooterAnimator;
    public FooterViewHolder mFooterViewHolder;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CustomViewHolder extends SubscreenParentItemViewHolder {
        public final NotificationRemoteInputManager.AnonymousClass1 RemoteViewInteractionHandler;
        public final TextView mAppName;
        public final FrameLayout mContentView;
        public final View mNormalView;

        public CustomViewHolder(View view) {
            super(view);
            this.mListAdapter = SubscreenNotificationListAdapter.this;
            this.mNotificationInfoManager = SubscreenNotificationListAdapter.this.mNotificationInfoManager;
            this.mAppName = (TextView) view.findViewById(R.id.subscreen_notification_title_text);
            this.mContentView = (FrameLayout) view.findViewById(R.id.custom_remote_views);
            this.mNormalView = view.findViewById(R.id.custom_normal_views);
            this.RemoteViewInteractionHandler = ((NotificationRemoteInputManager) Dependency.get(NotificationRemoteInputManager.class)).mInteractionHandler;
            SubscreenNotificationListAdapter.this.mDeviceModel.setListAdpaterFirstChildTopMargin(this);
            view.setOnClickListener(new View.OnClickListener(SubscreenNotificationListAdapter.this) { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter.CustomViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenNotificationListAdapter.this.mDeviceModel;
                    subscreenDeviceModelParent.getClass();
                    if (subscreenDeviceModelParent instanceof SubscreenDeviceModelB5) {
                        CustomViewHolder customViewHolder = CustomViewHolder.this;
                        SubscreenNotificationListAdapter subscreenNotificationListAdapter = SubscreenNotificationListAdapter.this;
                        subscreenNotificationListAdapter.mDeviceModel.clickAdapterItem(subscreenNotificationListAdapter.mContext, customViewHolder);
                    } else {
                        CustomViewHolder customViewHolder2 = CustomViewHolder.this;
                        SubscreenNotificationListAdapter subscreenNotificationListAdapter2 = SubscreenNotificationListAdapter.this;
                        customViewHolder2.animateClickNotification(subscreenNotificationListAdapter2.mNotificationAnimatorManager, subscreenNotificationListAdapter2.mSubRoomNotification, true);
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
        /* renamed from: com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter$FooterViewHolder$2, reason: invalid class name */
        /* loaded from: classes2.dex */
        public final class AnonymousClass2 implements View.OnClickListener {
            public AnonymousClass2(SubscreenNotificationListAdapter subscreenNotificationListAdapter) {
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Log.d("SubscreenNotificationListAdapter", "FooterViewHolder - mClearAllLayout- clear all");
                FooterViewHolder.this.mClearAllLayout.setEnabled(false);
                FooterViewHolder.this.mClearAllLayout.setAlpha(0.5f);
                SubscreenNotificationListAdapter.this.mNotificationAnimatorManager.performDismissAllAnimations(new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter$FooterViewHolder$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ArrayList arrayList;
                        final SubscreenNotificationInfoManager subscreenNotificationInfoManager = SubscreenNotificationListAdapter.this.mNotificationInfoManager;
                        subscreenNotificationInfoManager.getClass();
                        if (SubscreenNotificationInfoManager.checkRemoveNotification()) {
                            Log.d("SubscreenNotificationInfoManager", "clearAllLockscreenNotificaitonInfo()");
                            ArrayList arrayList2 = new ArrayList();
                            int notificationInfoArraySize = SubscreenNotificationInfoManager.getNotificationInfoArraySize();
                            int i = 0;
                            while (true) {
                                arrayList = SubscreenNotificationInfoManager.mLockscreenNotificationInfoArray;
                                if (i >= notificationInfoArraySize) {
                                    break;
                                }
                                LockscreenNotificationInfo lockscreenNotificationInfo = (LockscreenNotificationInfo) arrayList.get(i);
                                if (SubscreenNotificationInfoManager.canViewBeCleared(lockscreenNotificationInfo.mRow)) {
                                    arrayList2.add(lockscreenNotificationInfo);
                                    SubscreenNotificationInfoManager.setEntryDismissState(lockscreenNotificationInfo.mRow.mEntry);
                                }
                                i++;
                            }
                            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                                arrayList.remove(arrayList2.get(i2));
                            }
                            SubscreenNotificationListAdapter subscreenNotificationListAdapter = subscreenNotificationInfoManager.mNotificationListAdapter;
                            subscreenNotificationListAdapter.notifyDataSetChanged();
                            ArrayList arrayList3 = subscreenNotificationInfoManager.mRecyclerViewItemHolderArray;
                            int size = arrayList3.size();
                            while (true) {
                                size--;
                                if (size >= 0) {
                                    if (SubscreenNotificationInfoManager.canViewBeCleared(((SubscreenParentItemViewHolder) arrayList3.get(size)).mInfo.mRow)) {
                                        arrayList3.remove(size);
                                    }
                                } else {
                                    subscreenNotificationInfoManager.mUiHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationInfoManager$$ExternalSyntheticLambda0
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            SubscreenNotificationInfoManager subscreenNotificationInfoManager2 = SubscreenNotificationInfoManager.this;
                                            subscreenNotificationInfoManager2.getClass();
                                            subscreenNotificationInfoManager2.mNotifCollection.dismissAllNotifications(ActivityManager.getCurrentUser(), false);
                                        }
                                    });
                                    subscreenNotificationListAdapter.mSubRoomNotification.notifyClockSubRoomRequest();
                                    return;
                                }
                            }
                        }
                    }
                });
                SystemUIAnalytics.sendEventCDLog("QPN100", "QPNE0201", ImIntent.Extras.EXTRA_FROM, "all");
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
            SubscreenNotificationListAdapter.this.mFooterViewHolder = this;
            frameLayout.setContentDescription(SubscreenNotificationListAdapter.this.mContext.getResources().getString(R.string.clear_all_notifications_text) + SubscreenNotificationListAdapter.this.mContext.getResources().getString(R.string.accessibility_button));
            frameLayout.setOnFocusChangeListener(new View.OnFocusChangeListener(SubscreenNotificationListAdapter.this) { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter.FooterViewHolder.1
                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view2, boolean z) {
                    if (z) {
                        SubscreenNotificationListAdapter subscreenNotificationListAdapter = SubscreenNotificationListAdapter.this;
                        SubscreenRecyclerView subscreenRecyclerView = subscreenNotificationListAdapter.mSubRoomNotification.mNotificationRecyclerView;
                        subscreenNotificationListAdapter.mNotificationInfoManager.getClass();
                        subscreenRecyclerView.scrollToPosition(SubscreenNotificationInfoManager.getNotificationInfoArraySize());
                    }
                }
            });
            frameLayout.setOnClickListener(new AnonymousClass2(SubscreenNotificationListAdapter.this));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class GroupViewHolder extends SubscreenParentItemViewHolder {
        public final TextView mAppName;
        public final LinearLayout mContentLayout;

        public GroupViewHolder(View view) {
            super(view);
            this.mListAdapter = SubscreenNotificationListAdapter.this;
            this.mNotificationInfoManager = SubscreenNotificationListAdapter.this.mNotificationInfoManager;
            this.mAppName = (TextView) view.findViewById(R.id.group_app_name);
            this.mContentLayout = (LinearLayout) view.findViewById(R.id.group_child_layout);
            this.mNotiGroupCount = (TextView) view.findViewById(R.id.noti_group_count);
            SubscreenNotificationListAdapter.this.mDeviceModel.setListAdpaterFirstChildTopMargin(this);
            view.setOnClickListener(new View.OnClickListener(SubscreenNotificationListAdapter.this) { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter.GroupViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GroupViewHolder groupViewHolder = GroupViewHolder.this;
                    SubscreenNotificationListAdapter subscreenNotificationListAdapter = SubscreenNotificationListAdapter.this;
                    groupViewHolder.animateClickNotification(subscreenNotificationListAdapter.mNotificationAnimatorManager, subscreenNotificationListAdapter.mSubRoomNotification, false);
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HideContenNotificationViewHolder extends SubscreenParentItemViewHolder {
        public final TextView mAppName;

        public HideContenNotificationViewHolder(View view) {
            super(view);
            this.mListAdapter = SubscreenNotificationListAdapter.this;
            this.mNotificationInfoManager = SubscreenNotificationListAdapter.this.mNotificationInfoManager;
            this.mAppName = (TextView) view.findViewById(R.id.hide_content_app_name);
            SubscreenNotificationListAdapter.this.mDeviceModel.setListAdpaterFirstChildTopMargin(this);
            view.setOnClickListener(new View.OnClickListener(SubscreenNotificationListAdapter.this) { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter.HideContenNotificationViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenNotificationListAdapter.this.mDeviceModel;
                    subscreenDeviceModelParent.getClass();
                    if (subscreenDeviceModelParent instanceof SubscreenDeviceModelB5) {
                        HideContenNotificationViewHolder hideContenNotificationViewHolder = HideContenNotificationViewHolder.this;
                        SubscreenNotificationListAdapter subscreenNotificationListAdapter = SubscreenNotificationListAdapter.this;
                        subscreenNotificationListAdapter.mDeviceModel.clickAdapterItem(subscreenNotificationListAdapter.mContext, hideContenNotificationViewHolder);
                    } else {
                        HideContenNotificationViewHolder hideContenNotificationViewHolder2 = HideContenNotificationViewHolder.this;
                        SubscreenNotificationListAdapter subscreenNotificationListAdapter2 = SubscreenNotificationListAdapter.this;
                        hideContenNotificationViewHolder2.animateClickNotification(subscreenNotificationListAdapter2.mNotificationAnimatorManager, subscreenNotificationListAdapter2.mSubRoomNotification, true);
                    }
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NoNotificationViewHolder extends RecyclerView.ViewHolder {
        public NoNotificationViewHolder(SubscreenNotificationListAdapter subscreenNotificationListAdapter, View view) {
            super(view);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class NotificationListItemViewHolder extends SubscreenParentItemViewHolder {
        public NotificationListItemViewHolder(View view) {
            super(view);
            this.mListAdapter = SubscreenNotificationListAdapter.this;
            this.mNotificationInfoManager = SubscreenNotificationListAdapter.this.mNotificationInfoManager;
            SubscreenNotificationListAdapter.this.mDeviceModel.setListAdpaterFirstChildTopMargin(this);
            view.setOnClickListener(new View.OnClickListener(SubscreenNotificationListAdapter.this) { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter.NotificationListItemViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    SubscreenDeviceModelParent subscreenDeviceModelParent = SubscreenNotificationListAdapter.this.mDeviceModel;
                    subscreenDeviceModelParent.getClass();
                    if (subscreenDeviceModelParent instanceof SubscreenDeviceModelB5) {
                        NotificationListItemViewHolder notificationListItemViewHolder = NotificationListItemViewHolder.this;
                        SubscreenNotificationListAdapter subscreenNotificationListAdapter = SubscreenNotificationListAdapter.this;
                        subscreenNotificationListAdapter.mDeviceModel.clickAdapterItem(subscreenNotificationListAdapter.mContext, notificationListItemViewHolder);
                    } else {
                        NotificationListItemViewHolder notificationListItemViewHolder2 = NotificationListItemViewHolder.this;
                        SubscreenNotificationListAdapter subscreenNotificationListAdapter2 = SubscreenNotificationListAdapter.this;
                        notificationListItemViewHolder2.animateClickNotification(subscreenNotificationListAdapter2.mNotificationAnimatorManager, subscreenNotificationListAdapter2.mSubRoomNotification, false);
                    }
                }
            });
        }
    }

    private SubscreenNotificationListAdapter() {
    }

    public static SubscreenNotificationListAdapter getInstance() {
        if (sInstance == null) {
            sInstance = new SubscreenNotificationListAdapter();
        }
        return sInstance;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        this.mNotificationInfoManager.getClass();
        return SubscreenNotificationInfoManager.getNotificationInfoArraySize() + 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0040 A[RETURN] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getItemViewType(int r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter.getItemViewType(int):int");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        String title;
        if (viewHolder instanceof NotificationListItemViewHolder) {
            NotificationListItemViewHolder notificationListItemViewHolder = (NotificationListItemViewHolder) viewHolder;
            this.mNotificationInfoManager.getClass();
            ExpandableNotificationRow expandableNotificationRow = ((LockscreenNotificationInfo) SubscreenNotificationInfoManager.mLockscreenNotificationInfoArray.get(i)).mRow;
            boolean z = expandableNotificationRow.mIsSummaryWithChildren;
            SubscreenNotificationListAdapter subscreenNotificationListAdapter = SubscreenNotificationListAdapter.this;
            if (z) {
                subscreenNotificationListAdapter.getClass();
                NotificationChildrenContainer notificationChildrenContainer = expandableNotificationRow.mChildrenContainer;
                if (notificationChildrenContainer != null && ((ArrayList) notificationChildrenContainer.mAttachedChildren).size() == 1) {
                    expandableNotificationRow = (ExpandableNotificationRow) ((ArrayList) expandableNotificationRow.mChildrenContainer.mAttachedChildren).get(0);
                }
            }
            notificationListItemViewHolder.mInfo = subscreenNotificationListAdapter.mNotificationInfoManager.createItemsData(expandableNotificationRow);
            notificationListItemViewHolder.updateTitleAndContent(subscreenNotificationListAdapter.mContext);
            SubscreenDeviceModelParent subscreenDeviceModelParent = subscreenNotificationListAdapter.mDeviceModel;
            SubscreenNotificationInfo subscreenNotificationInfo = notificationListItemViewHolder.mInfo;
            View view = notificationListItemViewHolder.itemView;
            subscreenDeviceModelParent.setClock(subscreenNotificationInfo, view);
            notificationListItemViewHolder.setUnreadMessageCount(subscreenNotificationListAdapter.mContext);
            notificationListItemViewHolder.setIconView(notificationListItemViewHolder.mListAdapter, true);
            subscreenNotificationListAdapter.mDeviceModel.setRightIcon(subscreenNotificationListAdapter.mContext, notificationListItemViewHolder.mInfo, view);
            subscreenNotificationListAdapter.mDeviceModel.setListItemTextLayout(subscreenNotificationListAdapter.mContext, view);
            SubscreenDeviceModelParent subscreenDeviceModelParent2 = subscreenNotificationListAdapter.mDeviceModel;
            SubscreenNotificationInfo subscreenNotificationInfo2 = notificationListItemViewHolder.mInfo;
            subscreenDeviceModelParent2.getClass();
            SubscreenDeviceModelParent.updateKnoxIcon(notificationListItemViewHolder.mSecureIcon, subscreenNotificationInfo2);
            SubscreenDeviceModelParent subscreenDeviceModelParent3 = subscreenNotificationListAdapter.mDeviceModel;
            SubscreenNotificationInfo subscreenNotificationInfo3 = notificationListItemViewHolder.mInfo;
            subscreenDeviceModelParent3.getClass();
            SubscreenDeviceModelParent.updateTwoPhoneIcon(notificationListItemViewHolder.mTwoPhoneIcon, subscreenNotificationInfo3);
            notificationListItemViewHolder.mNotificationInfoManager.addRecyclerViewItemView(notificationListItemViewHolder);
            notificationListItemViewHolder.initTranslationX();
            return;
        }
        if (viewHolder instanceof FooterViewHolder) {
            FooterViewHolder footerViewHolder = (FooterViewHolder) viewHolder;
            SubscreenNotificationListAdapter subscreenNotificationListAdapter2 = SubscreenNotificationListAdapter.this;
            subscreenNotificationListAdapter2.mNotificationInfoManager.getClass();
            int notificationInfoArraySize = SubscreenNotificationInfoManager.getNotificationInfoArraySize();
            FrameLayout frameLayout = footerViewHolder.mClearAllLayout;
            if (notificationInfoArraySize != 0) {
                subscreenNotificationListAdapter2.mNotificationInfoManager.getClass();
                if (SubscreenNotificationInfoManager.checkRemoveNotification()) {
                    frameLayout.setEnabled(true);
                    frameLayout.setAlpha(1.0f);
                    frameLayout.setVisibility(0);
                    return;
                }
            }
            frameLayout.setVisibility(8);
            return;
        }
        if (viewHolder instanceof HideContenNotificationViewHolder) {
            HideContenNotificationViewHolder hideContenNotificationViewHolder = (HideContenNotificationViewHolder) viewHolder;
            this.mNotificationInfoManager.getClass();
            LockscreenNotificationInfo lockscreenNotificationInfo = (LockscreenNotificationInfo) SubscreenNotificationInfoManager.mLockscreenNotificationInfoArray.get(i);
            SubscreenNotificationListAdapter subscreenNotificationListAdapter3 = SubscreenNotificationListAdapter.this;
            SubscreenNotificationInfo createItemsData = subscreenNotificationListAdapter3.mNotificationInfoManager.createItemsData(lockscreenNotificationInfo.mRow);
            hideContenNotificationViewHolder.mInfo = createItemsData;
            hideContenNotificationViewHolder.mAppName.setText(createItemsData.mAppName);
            hideContenNotificationViewHolder.setIconView(hideContenNotificationViewHolder.mListAdapter, false);
            subscreenNotificationListAdapter3.mDeviceModel.setClock(hideContenNotificationViewHolder.mInfo, hideContenNotificationViewHolder.itemView);
            SubscreenDeviceModelParent subscreenDeviceModelParent4 = subscreenNotificationListAdapter3.mDeviceModel;
            SubscreenNotificationInfo subscreenNotificationInfo4 = hideContenNotificationViewHolder.mInfo;
            subscreenDeviceModelParent4.getClass();
            SubscreenDeviceModelParent.updateKnoxIcon(hideContenNotificationViewHolder.mSecureIcon, subscreenNotificationInfo4);
            SubscreenDeviceModelParent subscreenDeviceModelParent5 = subscreenNotificationListAdapter3.mDeviceModel;
            SubscreenNotificationInfo subscreenNotificationInfo5 = hideContenNotificationViewHolder.mInfo;
            subscreenDeviceModelParent5.getClass();
            SubscreenDeviceModelParent.updateTwoPhoneIcon(hideContenNotificationViewHolder.mTwoPhoneIcon, subscreenNotificationInfo5);
            hideContenNotificationViewHolder.mNotificationInfoManager.addRecyclerViewItemView(hideContenNotificationViewHolder);
            hideContenNotificationViewHolder.initTranslationX();
            return;
        }
        if (viewHolder instanceof CustomViewHolder) {
            CustomViewHolder customViewHolder = (CustomViewHolder) viewHolder;
            this.mNotificationInfoManager.getClass();
            LockscreenNotificationInfo lockscreenNotificationInfo2 = (LockscreenNotificationInfo) SubscreenNotificationInfoManager.mLockscreenNotificationInfoArray.get(i);
            SubscreenNotificationListAdapter subscreenNotificationListAdapter4 = SubscreenNotificationListAdapter.this;
            SubscreenNotificationInfo createItemsData2 = subscreenNotificationListAdapter4.mNotificationInfoManager.createItemsData(lockscreenNotificationInfo2.mRow);
            customViewHolder.mInfo = createItemsData2;
            customViewHolder.setIconView(customViewHolder.mListAdapter, false);
            boolean isShowingRemoteView = subscreenNotificationListAdapter4.mDeviceModel.isShowingRemoteView(customViewHolder.mInfo.mPkg);
            View view2 = customViewHolder.mNormalView;
            FrameLayout frameLayout2 = customViewHolder.mContentView;
            if (isShowingRemoteView) {
                frameLayout2.setVisibility(0);
                view2.setVisibility(8);
                frameLayout2.removeAllViews();
                frameLayout2.addView(customViewHolder.mInfo.mContentView.apply(subscreenNotificationListAdapter4.mContext, frameLayout2, customViewHolder.RemoteViewInteractionHandler));
            } else {
                frameLayout2.setVisibility(8);
                view2.setVisibility(0);
                String title2 = createItemsData2.getTitle();
                if (title2 == null || title2.trim().isEmpty()) {
                    title = createItemsData2.mAppName;
                } else {
                    title = createItemsData2.getTitle();
                }
                customViewHolder.mAppName.setText(title);
                SubscreenDeviceModelParent subscreenDeviceModelParent6 = subscreenNotificationListAdapter4.mDeviceModel;
                SubscreenNotificationInfo subscreenNotificationInfo6 = customViewHolder.mInfo;
                View view3 = customViewHolder.itemView;
                subscreenDeviceModelParent6.setClock(subscreenNotificationInfo6, view3);
                SubscreenDeviceModelParent subscreenDeviceModelParent7 = subscreenNotificationListAdapter4.mDeviceModel;
                SubscreenNotificationInfo subscreenNotificationInfo7 = customViewHolder.mInfo;
                subscreenDeviceModelParent7.getClass();
                SubscreenDeviceModelParent.updateKnoxIcon(customViewHolder.mSecureIcon, subscreenNotificationInfo7);
                SubscreenDeviceModelParent subscreenDeviceModelParent8 = subscreenNotificationListAdapter4.mDeviceModel;
                SubscreenNotificationInfo subscreenNotificationInfo8 = customViewHolder.mInfo;
                subscreenDeviceModelParent8.getClass();
                SubscreenDeviceModelParent.updateTwoPhoneIcon(customViewHolder.mTwoPhoneIcon, subscreenNotificationInfo8);
                subscreenNotificationListAdapter4.mDeviceModel.setListItemTextLayout(subscreenNotificationListAdapter4.mContext, view3);
            }
            customViewHolder.mNotificationInfoManager.addRecyclerViewItemView(customViewHolder);
            customViewHolder.initTranslationX();
            return;
        }
        if (viewHolder instanceof GroupViewHolder) {
            GroupViewHolder groupViewHolder = (GroupViewHolder) viewHolder;
            this.mNotificationInfoManager.getClass();
            LockscreenNotificationInfo lockscreenNotificationInfo3 = (LockscreenNotificationInfo) SubscreenNotificationInfoManager.mLockscreenNotificationInfoArray.get(i);
            SubscreenNotificationListAdapter subscreenNotificationListAdapter5 = SubscreenNotificationListAdapter.this;
            groupViewHolder.mInfo = subscreenNotificationListAdapter5.mNotificationInfoManager.createItemsData(lockscreenNotificationInfo3.mRow);
            groupViewHolder.setIconView(groupViewHolder.mListAdapter, false);
            SubscreenDeviceModelParent subscreenDeviceModelParent9 = subscreenNotificationListAdapter5.mDeviceModel;
            NotificationEntry notificationEntry = groupViewHolder.mInfo.mRow.mEntry;
            View view4 = groupViewHolder.itemView;
            subscreenDeviceModelParent9.updateShadowIconColor(view4, notificationEntry);
            subscreenNotificationListAdapter5.mDeviceModel.setClock(groupViewHolder.mInfo, view4);
            TextView textView = groupViewHolder.mAppName;
            if (textView != null) {
                textView.setText(groupViewHolder.mInfo.mAppName);
            }
            groupViewHolder.mNotiGroupCount.setText(Integer.toString(groupViewHolder.mInfo.mChildCount));
            LinearLayout linearLayout = groupViewHolder.mContentLayout;
            if (linearLayout.getChildCount() > 0) {
                linearLayout.removeAllViews();
            }
            int i2 = groupViewHolder.mInfo.mChildCount;
            ListPopupWindow$$ExternalSyntheticOutline0.m("addGroupItems - child Count : ", i2, "SubscreenNotificationListAdapter");
            ExpandableNotificationRow expandableNotificationRow2 = groupViewHolder.mInfo.mRow;
            if (expandableNotificationRow2.mIsSummaryWithChildren && i2 > 1) {
                NotificationChildrenContainer notificationChildrenContainer2 = expandableNotificationRow2.mChildrenContainer;
                for (int i3 = 0; i3 < 2; i3++) {
                    ExpandableNotificationRow expandableNotificationRow3 = (ExpandableNotificationRow) ((ArrayList) notificationChildrenContainer2.mAttachedChildren).get(i3);
                    SubscreenNotificationInfo createItemsData3 = subscreenNotificationListAdapter5.mNotificationInfoManager.createItemsData(expandableNotificationRow3);
                    View inflate = LayoutInflater.from(subscreenNotificationListAdapter5.mContext).inflate(subscreenNotificationListAdapter5.mDeviceModel.getListAdapterGroupItemResource(), (ViewGroup) linearLayout, false);
                    TextView textView2 = (TextView) inflate.findViewById(R.id.group_item_title);
                    TextView textView3 = (TextView) inflate.findViewById(R.id.group_item_content);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    if (expandableNotificationRow3.needsRedaction() && subscreenNotificationListAdapter5.mDeviceModel.isNotShwonNotificationState(expandableNotificationRow3.mEntry)) {
                        textView2.setLayoutParams(layoutParams);
                        textView2.setText(createItemsData3.getContentHiddenText(createItemsData3));
                        textView3.setVisibility(8);
                    } else {
                        if (createItemsData3.getTitle() == null) {
                            textView2.setVisibility(8);
                        } else {
                            textView2.setVisibility(0);
                            textView2.setText(createItemsData3.getTitle());
                        }
                        String str = createItemsData3.mContent;
                        if (str == null) {
                            textView2.setLayoutParams(layoutParams);
                            textView3.setVisibility(8);
                        } else {
                            textView3.setText(str);
                            textView3.setVisibility(0);
                        }
                    }
                    linearLayout.addView(inflate);
                }
            }
            if (textView != null) {
                Resources resources = subscreenNotificationListAdapter5.mContext.getResources();
                int i4 = groupViewHolder.mInfo.mChildCount;
                view4.setContentDescription(textView.getText().toString() + resources.getQuantityString(R.plurals.plural_notification_count, i4, Integer.valueOf(i4)).toString());
            }
            SubscreenDeviceModelParent subscreenDeviceModelParent10 = subscreenNotificationListAdapter5.mDeviceModel;
            SubscreenNotificationInfo subscreenNotificationInfo9 = groupViewHolder.mInfo;
            subscreenDeviceModelParent10.getClass();
            SubscreenDeviceModelParent.updateKnoxIcon(groupViewHolder.mSecureIcon, subscreenNotificationInfo9);
            SubscreenDeviceModelParent subscreenDeviceModelParent11 = subscreenNotificationListAdapter5.mDeviceModel;
            SubscreenNotificationInfo subscreenNotificationInfo10 = groupViewHolder.mInfo;
            subscreenDeviceModelParent11.getClass();
            SubscreenDeviceModelParent.updateTwoPhoneIcon(groupViewHolder.mTwoPhoneIcon, subscreenNotificationInfo10);
            groupViewHolder.mNotificationInfoManager.addRecyclerViewItemView(groupViewHolder);
            groupViewHolder.initTranslationX();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(RecyclerView recyclerView, int i) {
        View listAdapterLayout = this.mDeviceModel.getListAdapterLayout(recyclerView, i, this.mContext);
        if (i == 0) {
            return new NotificationListItemViewHolder(listAdapterLayout);
        }
        if (i == 1) {
            return new FooterViewHolder(listAdapterLayout);
        }
        if (i == 3) {
            return new NoNotificationViewHolder(this, listAdapterLayout);
        }
        if (i == 2) {
            return new CustomViewHolder(listAdapterLayout);
        }
        if (i == 4) {
            return new HideContenNotificationViewHolder(listAdapterLayout);
        }
        if (i == 5) {
            return new GroupViewHolder(listAdapterLayout);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        if (list.isEmpty()) {
            onBindViewHolder(viewHolder, i);
            return;
        }
        for (Object obj : list) {
            if ((obj instanceof String) && ((String) obj).equals("click")) {
                boolean z = viewHolder instanceof HideContenNotificationViewHolder;
            }
        }
    }
}
