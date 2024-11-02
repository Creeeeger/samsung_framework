package com.android.systemui.statusbar.notification;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.UserHandle;
import android.os.Vibrator;
import android.os.VibratorManager;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.NotiRune;
import com.android.systemui.R;
import com.android.systemui.plugins.subscreen.SubRoom;
import com.android.systemui.statusbar.LockscreenNotificationInfo;
import com.android.systemui.statusbar.LockscreenNotificationManager;
import com.android.systemui.statusbar.notification.SubscreenNotificationDetailAdapter;
import com.android.systemui.statusbar.notification.SubscreenSubRoomNotificaitonTouchManager;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.phone.CentralSurfaces;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.knox.accounts.Account;
import com.samsung.android.sivs.ai.sdkcommon.asr.SpeechRecognitionConst;
import com.sec.ims.presence.ServiceTuple;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenSubRoomNotification implements SubRoom {
    public static Context mContext;
    public static SubscreenSubRoomNotification sInstance;
    public View mMainView;
    public SubscreenSubRoomNotificaitonAnimatorManager mNotificationAnimatorManager;
    public SubscreenNotificationDetailAdapter mNotificationDetailAdapter;
    public SubscreenNotificationGroupAdapter mNotificationGroupAdapter;
    public SubscreenNotificationInfoManager mNotificationInfoManager;
    public SubscreenNotificationListAdapter mNotificationListAdapter;
    public SubscreenRecyclerView mNotificationRecyclerView;
    public SubscreenSubRoomNotificaitonTouchManager mNotificationTouchManager;
    public int mRecyclerViewFirstVisibleItemPosition;
    public String mRecyclerViewItemSelectKey;
    public int mRecyclerViewLastVisibleItemPosition;
    public final AnonymousClass4 mRemoteInputEmojiActionBroadcastReceiver;
    public final AnonymousClass5 mRemoteInputVoiceActionBroadcastReceiver;
    public SubRoom.StateChangeListener mStateChangeListener;
    public SubscreenSubRoomNotificationTip mSubRoomNotificationTipAdapter;
    public LinearLayout mSubscreenMainLayout;
    public Vibrator mVibrator;
    public final ArrayList mUnreadNotificationList = new ArrayList();
    public boolean mIsInNotiRoom = false;
    public boolean mHasUnreadNoti = false;
    public boolean mIsShownDetail = false;
    public boolean mIsShownGroup = false;
    public boolean mIsScrollByMe = false;
    public final AnonymousClass1 mRecyclerViewScrollListener = new AnonymousClass1();
    public final AnonymousClass2 linearLayoutManager = new LinearLayoutManager(mContext, 1, false) { // from class: com.android.systemui.statusbar.notification.SubscreenSubRoomNotification.2
        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
            try {
                super.onLayoutChildren(recycler, state);
            } catch (IndexOutOfBoundsException e) {
                Log.e("SubscreenSubRoomNotification", "RecyclerView's item count : " + state.getItemCount() + " !meet a IndexOutOfBoundsException : " + e);
                StringBuilder sb = new StringBuilder("RecyclerView's list + ");
                sb.append(recycler.mUnmodifiableAttachedScrap);
                Log.e("SubscreenSubRoomNotification", sb.toString());
            }
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void onLayoutCompleted(RecyclerView.State state) {
            boolean z;
            boolean z2;
            boolean z3;
            super.onLayoutCompleted(state);
            SubscreenSubRoomNotification subscreenSubRoomNotification = SubscreenSubRoomNotification.this;
            if (subscreenSubRoomNotification.mIsShownDetail) {
                SubscreenNotificationDetailAdapter.ScrollInfo scrollInfo = subscreenSubRoomNotification.mNotificationDetailAdapter.mScrollInfo;
                int i = scrollInfo.mCompleteItemUpdateReason;
                boolean z4 = true;
                if (i == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    scrollInfo.mCompleteItemUpdateReason = 0;
                    SubscreenSubRoomNotification.getDeviceModel().updateContentScroll();
                    Log.d("SubscreenSubRoomNotification", "onLayoutCompleted - isQuickReply : true");
                    z3 = false;
                } else {
                    if (i == 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        scrollInfo.mCompleteItemUpdateReason = 0;
                        SubscreenSubRoomNotification.getDeviceModel().updateContentScroll();
                        Log.d("SubscreenSubRoomNotification", "onLayoutCompleted - isReceive : true");
                        z3 = true;
                        z4 = false;
                    } else {
                        z3 = false;
                        z4 = false;
                    }
                }
                SubscreenSubRoomNotification.getDeviceModel().moveDetailAdapterContentScroll(getChildAt(0), z4, z3, false);
                if (z3) {
                    Log.d("SubscreenSubRoomNotification", "onLayoutCompleted - ShowAiReply");
                    SubscreenSubRoomNotification.getDeviceModel().showAIReply();
                    return;
                }
                return;
            }
            SubscreenSubRoomNotification.getDeviceModel().updateContentScroll();
        }
    };
    public final AnonymousClass3 mLockscreenNotiCallback = new LockscreenNotificationManager.Callback() { // from class: com.android.systemui.statusbar.notification.SubscreenSubRoomNotification.3
        /* JADX WARN: Code restructure failed: missing block: B:217:0x035c, code lost:
        
            if (r2 != false) goto L159;
         */
        /* JADX WARN: Code restructure failed: missing block: B:607:0x0953, code lost:
        
            if (r1.mIsInNotiRoom == true) goto L539;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:338:0x04f8  */
        /* JADX WARN: Removed duplicated region for block: B:363:0x053d A[LOOP:11: B:361:0x0537->B:363:0x053d, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:367:0x0553  */
        /* JADX WARN: Removed duplicated region for block: B:423:0x0604 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r5v3, types: [com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter$$ExternalSyntheticLambda0] */
        /* JADX WARN: Type inference failed for: r7v15, types: [com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter$$ExternalSyntheticLambda0] */
        @Override // com.android.systemui.statusbar.LockscreenNotificationManager.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onNotificationInfoUpdated(java.util.ArrayList r20) {
            /*
                Method dump skipped, instructions count: 2413
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenSubRoomNotification.AnonymousClass3.onNotificationInfoUpdated(java.util.ArrayList):void");
        }

        @Override // com.android.systemui.statusbar.LockscreenNotificationManager.Callback
        public final void onNotificationTypeChanged(int i) {
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.notification.SubscreenSubRoomNotification$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends RecyclerView.OnScrollListener {
        public AnonymousClass1() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
            int findFirstVisibleItemPosition;
            SubscreenSubRoomNotification subscreenSubRoomNotification = SubscreenSubRoomNotification.this;
            boolean z = false;
            if (subscreenSubRoomNotification.mIsScrollByMe && recyclerView.mScrollState == 0) {
                subscreenSubRoomNotification.mIsScrollByMe = false;
                recyclerView.postDelayed(new Runnable() { // from class: com.android.systemui.statusbar.notification.SubscreenSubRoomNotification$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SubscreenSubRoomNotification.this.getClass();
                        SubscreenSubRoomNotification.getDeviceModel().enableGoToTopButton();
                    }
                }, 300L);
            }
            subscreenSubRoomNotification.mNotificationInfoManager.getClass();
            if (SubscreenNotificationInfoManager.getNotificationInfoArraySize() == 0) {
                z = true;
            }
            int i3 = -1;
            if (z) {
                findFirstVisibleItemPosition = -1;
            } else {
                findFirstVisibleItemPosition = ((LinearLayoutManager) recyclerView.getLayoutManager$1()).findFirstVisibleItemPosition();
            }
            subscreenSubRoomNotification.mRecyclerViewFirstVisibleItemPosition = findFirstVisibleItemPosition;
            if (!z) {
                i3 = ((LinearLayoutManager) recyclerView.getLayoutManager$1()).findLastVisibleItemPosition();
            }
            subscreenSubRoomNotification.mRecyclerViewLastVisibleItemPosition = i3;
            if (subscreenSubRoomNotification.mIsShownDetail) {
                SubscreenSubRoomNotification.getDeviceModel().showAIReply();
            }
        }
    }

    /* renamed from: -$$Nest$mreturnRemoteInput, reason: not valid java name */
    public static void m1414$$Nest$mreturnRemoteInput(SubscreenSubRoomNotification subscreenSubRoomNotification, String str, String str2, String str3) {
        subscreenSubRoomNotification.getClass();
        if (ServiceTuple.BASIC_STATUS_OPEN.equals(str3)) {
            subscreenSubRoomNotification.mNotificationDetailAdapter.getClass();
            ((CentralSurfacesImpl) ((CentralSurfaces) Dependency.get(CentralSurfaces.class))).checkRemoteInputRequest(str, str2);
            subscreenSubRoomNotification.mNotificationDetailAdapter.cleanAdapter();
            return;
        }
        if ("send".equals(str3)) {
            ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).replyNotification(str, str2);
            SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter = subscreenSubRoomNotification.mNotificationDetailAdapter;
            if (subscreenNotificationDetailAdapter.mSelectHolder != null) {
                if (subscreenNotificationDetailAdapter.mSvoiceEmojiClicked) {
                    Log.d("SubscreenNotificationDetailAdapter", " hide notification after svoice/emoji reply");
                    subscreenNotificationDetailAdapter.mSelectHolder.getClass();
                    ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).mDeviceModel.hideDetailNotificationAnimated(300, true);
                    subscreenNotificationDetailAdapter.mSelectNotificationInfo.mRow.mEntry.remoteInputText = "";
                } else {
                    Log.d("SubscreenNotificationDetailAdapter", " remove notification by call back");
                    SubscreenParentDetailItemViewHolder subscreenParentDetailItemViewHolder = subscreenNotificationDetailAdapter.mSelectHolder;
                    subscreenParentDetailItemViewHolder.mAdapter.mNotificationInfoManager.removeNotification(subscreenParentDetailItemViewHolder.mInfo.mRow.mEntry);
                    ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).mDeviceModel.hideDetailNotificationAnimated(300, true);
                }
            } else {
                Log.d("SubscreenNotificationDetailAdapter", " remove notification, but selection holder is null.");
            }
            subscreenSubRoomNotification.mNotificationDetailAdapter.cleanAdapter();
            return;
        }
        if ("permissionCheck".equals(str3)) {
            subscreenSubRoomNotification.mNotificationDetailAdapter.mNeedToUnlock = true;
        } else if ("dismiss".equals(str3)) {
            subscreenSubRoomNotification.mNotificationDetailAdapter.cleanAdapter();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.systemui.statusbar.notification.SubscreenSubRoomNotification$3] */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.content.BroadcastReceiver, com.android.systemui.statusbar.notification.SubscreenSubRoomNotification$5] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.statusbar.notification.SubscreenSubRoomNotification$2] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.systemui.statusbar.notification.SubscreenSubRoomNotification$4, android.content.BroadcastReceiver] */
    private SubscreenSubRoomNotification() {
        ?? r2 = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.notification.SubscreenSubRoomNotification.4
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                Objects.toString(intent);
                if ("com.samsung.android.action.RETURN_REMOTE_INPUT".equals(intent.getAction())) {
                    SubscreenSubRoomNotification.m1414$$Nest$mreturnRemoteInput(SubscreenSubRoomNotification.this, intent.getStringExtra("key"), intent.getStringExtra("return"), intent.getStringExtra("state"));
                }
            }
        };
        this.mRemoteInputEmojiActionBroadcastReceiver = r2;
        ?? r0 = new BroadcastReceiver() { // from class: com.android.systemui.statusbar.notification.SubscreenSubRoomNotification.5
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                Objects.toString(intent);
                if ("com.samsung.android.action.RETURN_REMOTE_INPUT_VOICE".equals(intent.getAction())) {
                    SubscreenSubRoomNotification.m1414$$Nest$mreturnRemoteInput(SubscreenSubRoomNotification.this, intent.getStringExtra("key"), intent.getStringExtra("return"), intent.getStringExtra("state"));
                }
            }
        };
        this.mRemoteInputVoiceActionBroadcastReceiver = r0;
        View inflate = LayoutInflater.from(mContext).inflate(R.layout.subscreen_notification_main, (ViewGroup) null);
        this.mMainView = inflate;
        this.mSubscreenMainLayout = (LinearLayout) inflate.findViewById(R.id.subscreen_main_layout);
        getDeviceModel().initMainHeaderView(this.mSubscreenMainLayout);
        if (SubscreenSubRoomNotificationTip.sInstance == null) {
            SubscreenSubRoomNotificationTip.sInstance = new SubscreenSubRoomNotificationTip();
        }
        this.mSubRoomNotificationTipAdapter = SubscreenSubRoomNotificationTip.sInstance;
        this.mNotificationListAdapter = SubscreenNotificationListAdapter.getInstance();
        this.mNotificationDetailAdapter = SubscreenNotificationDetailAdapter.getInstance();
        if (SubscreenNotificationGroupAdapter.sInstance == null) {
            SubscreenNotificationGroupAdapter.sInstance = new SubscreenNotificationGroupAdapter();
        }
        this.mNotificationGroupAdapter = SubscreenNotificationGroupAdapter.sInstance;
        this.mNotificationInfoManager = new SubscreenNotificationInfoManager(mContext, this.mNotificationListAdapter, this.mNotificationDetailAdapter, this.mNotificationGroupAdapter);
        Vibrator defaultVibrator = ((VibratorManager) mContext.getSystemService("vibrator_manager")).getDefaultVibrator();
        this.mVibrator = defaultVibrator;
        this.mNotificationTouchManager = new SubscreenSubRoomNotificaitonTouchManager(mContext, this.mNotificationInfoManager, defaultVibrator);
        this.mNotificationAnimatorManager = new SubscreenSubRoomNotificaitonAnimatorManager(this.mNotificationInfoManager, this.mVibrator);
        initRecyclerView();
        initAdapter(this.mSubRoomNotificationTipAdapter);
        initAdapter(this.mNotificationDetailAdapter);
        initAdapter(this.mNotificationListAdapter);
        initAdapter(this.mNotificationGroupAdapter);
        mContext.registerReceiverAsUser(r2, UserHandle.ALL, new IntentFilter("com.samsung.android.action.RETURN_REMOTE_INPUT"), "com.samsung.android.permission.RETURN_REMOTE_INPUT", null, 2);
        mContext.registerReceiverAsUser(r0, UserHandle.ALL, new IntentFilter("com.samsung.android.action.RETURN_REMOTE_INPUT_VOICE"), "com.samsung.android.permission.RETURN_REMOTE_INPUT_VOICE", null, 2);
    }

    public static SubscreenDeviceModelParent getDeviceModel() {
        return ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).mDeviceModel;
    }

    public static SubscreenSubRoomNotification getInstance(Context context) {
        if (sInstance == null) {
            mContext = context;
            sInstance = new SubscreenSubRoomNotification();
        }
        return sInstance;
    }

    public final boolean getBixbyNotificationVisible(String str) {
        if (this.mRecyclerViewFirstVisibleItemPosition != -1 && this.mRecyclerViewLastVisibleItemPosition != -1) {
            for (int i = 0; i <= this.mNotificationRecyclerView.getChildCount(); i++) {
                View childAt = this.mNotificationRecyclerView.getChildAt(i);
                if (childAt != null) {
                    RecyclerView.ViewHolder childViewHolder = this.mNotificationRecyclerView.getChildViewHolder(childAt);
                    if (childViewHolder instanceof SubscreenParentItemViewHolder) {
                        if (((SubscreenParentItemViewHolder) childViewHolder).mInfo.mKey.equals(str)) {
                            return true;
                        }
                    } else if ((childViewHolder instanceof SubscreenParentDetailItemViewHolder) && ((SubscreenParentDetailItemViewHolder) childViewHolder).mInfo.mKey.equals(str)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.android.systemui.plugins.subscreen.SubRoom
    public final View getView(Context context) {
        return this.mMainView;
    }

    public final void hideDetailNotification() {
        if (this.mNotificationRecyclerView != null) {
            Log.e("SubscreenSubRoomNotification", "hideDetailNotification mIsShownGroup: " + this.mIsShownGroup);
            this.mIsShownDetail = false;
            if (this.mIsShownGroup) {
                if (this.mNotificationInfoManager.getGroupDataArraySize() <= 1) {
                    hideGroupNotification();
                } else {
                    this.mNotificationRecyclerView.setAdapter(this.mNotificationGroupAdapter);
                    this.mNotificationGroupAdapter.notifyDataSetChanged();
                    getDeviceModel().initMainHeaderViewItems(mContext, this.mNotificationGroupAdapter.mSummaryInfo, false);
                    getDeviceModel().updateMainHeaderViewVisibility(0);
                }
            } else {
                setListAdpater();
                getDeviceModel().updateMainHeaderViewVisibility(8);
            }
            scrollToSelectedPosition();
            this.mNotificationTouchManager.mItemViewSwipeEnabled = true;
            SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter = this.mNotificationDetailAdapter;
            subscreenNotificationDetailAdapter.mScrollInfo.mIsSendedQuickReply = false;
            subscreenNotificationDetailAdapter.dismissReplyButtons(true);
        }
    }

    public final void hideGroupNotification() {
        if (this.mNotificationRecyclerView != null && this.mNotificationGroupAdapter != null) {
            Log.e("SubscreenSubRoomNotification", "hideGroupNotification");
            this.mIsShownGroup = false;
            this.mNotificationInfoManager.clearAllRecyclerViewItem();
            setListAdpater();
            this.mNotificationInfoManager.setShownGroup(this.mIsShownGroup);
            this.mNotificationInfoManager.mGroupDataArray.clear();
            scrollToSelectedPosition();
            getDeviceModel().updateMainHeaderViewVisibility(8);
        }
    }

    public final void initAdapter(SubscreenParentAdapter subscreenParentAdapter) {
        subscreenParentAdapter.getClass();
        subscreenParentAdapter.mDeviceModel = ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).mDeviceModel;
        subscreenParentAdapter.mNotificationRecyclerView = this.mNotificationRecyclerView;
        subscreenParentAdapter.mNotificationInfoManager = this.mNotificationInfoManager;
        subscreenParentAdapter.mNotificationAnimatorManager = this.mNotificationAnimatorManager;
        subscreenParentAdapter.mSubRoomNotification = this;
        subscreenParentAdapter.mContext = mContext;
    }

    public final void initData() {
        Log.e("SubscreenSubRoomNotification", "initData");
        if (NotiRune.NOTI_SUBSCREEN_GHOST_NOTIFICATION && this.mIsShownDetail) {
            ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).hideDetailNotif();
        }
        SubscreenDeviceModelParent deviceModel = getDeviceModel();
        deviceModel.clearMainList();
        deviceModel.mController.notifPipeline.mShadeListBuilder.buildList();
        this.mIsShownGroup = false;
        this.mIsShownDetail = false;
        this.mNotificationInfoManager.setShownGroup(false);
        this.mNotificationInfoManager.clearAllRecyclerViewItem();
        SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter = this.mNotificationDetailAdapter;
        subscreenNotificationDetailAdapter.mScrollInfo.mIsSendedQuickReply = false;
        subscreenNotificationDetailAdapter.mSelectNotificationInfo = null;
        subscreenNotificationDetailAdapter.cleanAdapter();
        SubscreenSubRoomNotificaitonTouchManager subscreenSubRoomNotificaitonTouchManager = this.mNotificationTouchManager;
        int m = MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0.m(subscreenSubRoomNotificaitonTouchManager.mContext);
        subscreenSubRoomNotificaitonTouchManager.mLayoutDirection = m;
        subscreenSubRoomNotificaitonTouchManager.mItemViewSwipeEnabled = true;
        SubscreenSubRoomNotificaitonTouchManager.AnonymousClass1 anonymousClass1 = subscreenSubRoomNotificaitonTouchManager.mSimpleItemTouchCallBack;
        if (m == 1) {
            anonymousClass1.mDefaultSwipeDirs = 4;
        } else {
            anonymousClass1.mDefaultSwipeDirs = 8;
        }
        setListAdpater();
        this.mNotificationRecyclerView.scrollToPosition(0);
        this.mRecyclerViewFirstVisibleItemPosition = -1;
        this.mRecyclerViewLastVisibleItemPosition = -1;
        this.mNotificationDetailAdapter.dismissReplyButtons(true);
        getDeviceModel().updateMainHeaderViewVisibility(8);
        getDeviceModel().updateContentScroll();
        this.mSubscreenMainLayout.setAlpha(1.0f);
        this.mSubscreenMainLayout.setVisibility(0);
    }

    public final void initRecyclerView() {
        SubscreenRecyclerView subscreenRecyclerView = this.mNotificationRecyclerView;
        AnonymousClass1 anonymousClass1 = this.mRecyclerViewScrollListener;
        if (subscreenRecyclerView != null) {
            subscreenRecyclerView.setLayoutManager(null);
            this.mNotificationRecyclerView.setAdapter(null);
            SubscreenRecyclerView subscreenRecyclerView2 = this.mNotificationRecyclerView;
            SubscreenSubRoomNotificaitonTouchManager.AnonymousClass2 anonymousClass2 = this.mNotificationTouchManager.mOnItemTouchListener;
            subscreenRecyclerView2.mOnItemTouchListeners.remove(anonymousClass2);
            if (subscreenRecyclerView2.mInterceptingOnItemTouchListener == anonymousClass2) {
                subscreenRecyclerView2.mInterceptingOnItemTouchListener = null;
            }
            this.mNotificationRecyclerView.removeOnScrollListener(anonymousClass1);
            this.mNotificationRecyclerView = null;
        }
        SubscreenRecyclerView subscreenRecyclerView3 = (SubscreenRecyclerView) this.mMainView.findViewById(R.id.notification_list_recyclerview);
        this.mNotificationRecyclerView = subscreenRecyclerView3;
        subscreenRecyclerView3.setLayoutManager(this.linearLayoutManager);
        this.mNotificationRecyclerView.setNestedScrollingEnabled(false);
        SubscreenRecyclerView subscreenRecyclerView4 = this.mNotificationRecyclerView;
        boolean z = true;
        subscreenRecyclerView4.mHasFixedSize = true;
        RecyclerView.Recycler recycler = subscreenRecyclerView4.mRecycler;
        recycler.mRequestedCacheMax = 7;
        recycler.updateViewCacheSize();
        getDeviceModel().enableGoToTopButton();
        SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        settingsHelper.getClass();
        if (!NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON || settingsHelper.mItemLists.get("cover_screen_show_notification_tip").getIntValue() != 1) {
            z = false;
        }
        if (z) {
            Log.d("SubscreenSubRoomNotification", "initTipData");
            this.mNotificationRecyclerView.setAdapter(this.mSubRoomNotificationTipAdapter);
        } else {
            setListAdpater();
        }
        this.mNotificationRecyclerView.mOnItemTouchListeners.add(this.mNotificationTouchManager.mOnItemTouchListener);
        this.mNotificationRecyclerView.addOnScrollListener(anonymousClass1);
        SubscreenRecyclerView subscreenRecyclerView5 = this.mNotificationRecyclerView;
        RecyclerView.ItemAnimator itemAnimator = subscreenRecyclerView5.mItemAnimator;
        if (itemAnimator instanceof SimpleItemAnimator) {
            ((SimpleItemAnimator) itemAnimator).mSupportsChangeAnimations = false;
        }
        this.mNotificationTouchManager.mItemTouchHelper.attachToRecyclerView(subscreenRecyclerView5);
        getDeviceModel().setItemDecoration(this.mNotificationRecyclerView);
    }

    public final void notifyClockSubRoomRequest() {
        if (this.mStateChangeListener != null) {
            Log.e("SubscreenSubRoomNotification", "notifyClockSubRoomRequest");
            Bundle bundle = new Bundle();
            bundle.putString(SubRoom.EXTRA_FOCUS_REQUIRED, SubRoom.EXTRA_VALUE_CLOCK);
            this.mStateChangeListener.onStateChanged(bundle);
        }
    }

    public final void notifyNotificationSubRoomRequest() {
        if (this.mStateChangeListener != null) {
            Log.e("SubscreenSubRoomNotification", "notifyNotificationSubRoomRequest");
            Bundle bundle = new Bundle();
            bundle.putString(SubRoom.EXTRA_FOCUS_REQUIRED, SubRoom.EXTRA_VALUE_NOTIFICATION);
            this.mStateChangeListener.onStateChanged(bundle);
        }
    }

    @Override // com.android.systemui.plugins.subscreen.SubRoom
    public final void onCloseFinished() {
        Log.e("SubscreenSubRoomNotification", "onCloseFinished");
        boolean z = false;
        this.mIsInNotiRoom = false;
        SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        settingsHelper.getClass();
        if (NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON && settingsHelper.mItemLists.get("cover_screen_show_notification_tip").getIntValue() == 1) {
            z = true;
        }
        if (z) {
            Log.d("SubscreenSubRoomNotification", "initTipData");
            this.mNotificationRecyclerView.setAdapter(this.mSubRoomNotificationTipAdapter);
        } else {
            initData();
        }
        SubscreenNotificationReplyActivity subscreenNotificationReplyActivity = ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).replyActivity;
        if (subscreenNotificationReplyActivity != null) {
            subscreenNotificationReplyActivity.finish();
        }
    }

    @Override // com.android.systemui.plugins.subscreen.SubRoom
    public final void onOpenStarted() {
        Log.e("SubscreenSubRoomNotification", "onOpenStarted");
        if (this.mHasUnreadNoti) {
            SubscreenDeviceModelParent deviceModel = getDeviceModel();
            deviceModel.clearMainList();
            deviceModel.mController.notifPipeline.mShadeListBuilder.buildList();
        }
        this.mIsInNotiRoom = true;
        if (!this.mIsShownDetail) {
            this.mNotificationRecyclerView.scrollToPosition(0);
        }
        this.mNotificationRecyclerView.announceForAccessibility(mContext.getString(R.string.notification_info_package_block_text));
        updateNotificationState(null, 2);
        this.mNotificationListAdapter.notifyDataSetChanged();
    }

    @Override // com.android.systemui.plugins.subscreen.SubRoom
    public final void removeListener() {
        this.mStateChangeListener = null;
    }

    @Override // com.android.systemui.plugins.subscreen.SubRoom
    public final Bundle request(String str, Bundle bundle) {
        if (SubRoom.STATE_UNREAD_NOTIFICATION.equals(str)) {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean(SubRoom.EXTRA_HAS_UNREAD, this.mHasUnreadNoti);
            return bundle2;
        }
        if (SubRoom.STATE_POPUP_DISMISSED.equals(str)) {
            Log.d("SubscreenSubRoomNotification", "request() STATE_POPUP_DISMISSED ");
            this.mNotificationDetailAdapter.cleanAdapter();
        } else if (SubRoom.STATE_BIO_POPUP_CANCELED.equals(str)) {
            Log.d("SubscreenSubRoomNotification", "request() STATE_BIO_POPUP_CANCELED ");
            this.mNotificationDetailAdapter.cleanAdapter();
            getDeviceModel().initKeyguardActioninfo();
        }
        return bundle;
    }

    public final void scrollToSelectedPosition() {
        int i;
        String str;
        this.mIsScrollByMe = true;
        SubscreenNotificationInfoManager subscreenNotificationInfoManager = this.mNotificationInfoManager;
        String str2 = this.mRecyclerViewItemSelectKey;
        boolean z = subscreenNotificationInfoManager.mIsShownGroup;
        ArrayList arrayList = SubscreenNotificationInfoManager.mLockscreenNotificationInfoArray;
        ArrayList arrayList2 = subscreenNotificationInfoManager.mGroupDataArray;
        int i2 = 0;
        if (z) {
            i = arrayList2.size();
        } else if (arrayList != null) {
            i = arrayList.size();
        } else {
            i = 0;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= i) {
                break;
            }
            if (subscreenNotificationInfoManager.mIsShownGroup) {
                str = ((SubscreenNotificationInfo) arrayList2.get(i3)).mKey;
            } else {
                str = ((LockscreenNotificationInfo) arrayList.get(i3)).mKey;
            }
            if (str.equals(str2)) {
                SubscreenDeviceModelParent subscreenDeviceModelParent = subscreenNotificationInfoManager.mSubscreenNotificationController.mDeviceModel;
                subscreenDeviceModelParent.getClass();
                int i4 = 1 ^ (subscreenDeviceModelParent instanceof SubscreenDeviceModelB5 ? 1 : 0);
                if (subscreenNotificationInfoManager.mIsShownGroup) {
                    i3 += i4;
                }
                i2 = i3;
            } else {
                i3++;
            }
        }
        this.mNotificationRecyclerView.scrollToPosition(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001d, code lost:
    
        if (r0.mItemLists.get("cover_screen_show_notification_tip").getIntValue() == 1) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setListAdpater() {
        /*
            r3 = this;
            java.lang.Class<com.android.systemui.util.SettingsHelper> r0 = com.android.systemui.util.SettingsHelper.class
            java.lang.Object r0 = com.android.systemui.Dependency.get(r0)
            com.android.systemui.util.SettingsHelper r0 = (com.android.systemui.util.SettingsHelper) r0
            r0.getClass()
            boolean r1 = com.android.systemui.NotiRune.NOTI_SUBSCREEN_NOTIFICATION_COMMON
            r2 = 0
            if (r1 == 0) goto L20
            com.android.systemui.util.SettingsHelper$ItemMap r0 = r0.mItemLists
            java.lang.String r1 = "cover_screen_show_notification_tip"
            com.android.systemui.util.SettingsHelper$Item r0 = r0.get(r1)
            int r0 = r0.getIntValue()
            r1 = 1
            if (r0 != r1) goto L20
            goto L21
        L20:
            r1 = r2
        L21:
            if (r1 == 0) goto L24
            return
        L24:
            com.android.systemui.statusbar.notification.SubscreenRecyclerView r0 = r3.mNotificationRecyclerView
            com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter r1 = r3.mNotificationListAdapter
            r0.setAdapter(r1)
            android.widget.LinearLayout r0 = r3.mSubscreenMainLayout
            r0.setBackgroundColor(r2)
            com.android.systemui.statusbar.notification.SubscreenNotificationListAdapter r3 = r3.mNotificationListAdapter
            r3.notifyDataSetChanged()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenSubRoomNotification.setListAdpater():void");
    }

    @Override // com.android.systemui.plugins.subscreen.SubRoom
    public final void setListener(SubRoom.StateChangeListener stateChangeListener) {
        this.mStateChangeListener = stateChangeListener;
    }

    public final void showDetailNotification(SubscreenNotificationInfo subscreenNotificationInfo) {
        if (this.mNotificationRecyclerView != null && this.mNotificationDetailAdapter != null) {
            Log.e("SubscreenSubRoomNotification", "showDetailNotification key : " + subscreenNotificationInfo.mKey);
            this.mNotificationDetailAdapter.dismissReplyButtons(false);
            SubscreenNotificationDetailAdapter subscreenNotificationDetailAdapter = this.mNotificationDetailAdapter;
            subscreenNotificationDetailAdapter.mSelectNotificationInfo = subscreenNotificationInfo;
            this.mNotificationRecyclerView.setAdapter(subscreenNotificationDetailAdapter);
            this.mNotificationDetailAdapter.notifyDataSetChanged();
            this.mNotificationTouchManager.mItemViewSwipeEnabled = false;
            this.mIsShownDetail = true;
            this.mRecyclerViewItemSelectKey = subscreenNotificationInfo.mKey;
            getDeviceModel().initSmartReplyStatus();
            getDeviceModel().initMainHeaderViewItems(mContext, subscreenNotificationInfo, false);
            getDeviceModel().updateMainHeaderViewVisibility(0);
            if (subscreenNotificationInfo.mIsMessagingStyle && (!subscreenNotificationInfo.mRow.needsRedaction() || !getDeviceModel().isNotShwonNotificationState(subscreenNotificationInfo.mRow.mEntry))) {
                SubscreenNotificationController subscreenNotificationController = (SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class);
                NotificationEntry notificationEntry = subscreenNotificationInfo.mRow.mEntry;
                subscreenNotificationController.conversationNotificationManager.states.compute(notificationEntry.mKey, ConversationNotificationManager$resetCount$1.INSTANCE);
                ExpandableNotificationRow expandableNotificationRow = notificationEntry.row;
                if (expandableNotificationRow != null) {
                    subscreenNotificationController.conversationNotificationManager.getClass();
                    ConversationNotificationManager.resetBadgeUi(expandableNotificationRow);
                }
            }
            getDeviceModel().setDimOnMainBackground(this.mSubscreenMainLayout);
        }
    }

    public final void startReplyActivity(int i, SubscreenNotificationInfo subscreenNotificationInfo) {
        Display display;
        Display[] displays = ((DisplayManager) mContext.getSystemService("display")).getDisplays("com.samsung.android.hardware.display.category.BUILTIN");
        int length = displays.length;
        int i2 = 0;
        while (true) {
            if (i2 < length) {
                display = displays[i2];
                if (display.getDisplayId() == 1) {
                    break;
                } else {
                    i2++;
                }
            } else {
                display = null;
                break;
            }
        }
        Log.d("SubscreenSubRoomNotification", "display: " + display);
        KeyguardUpdateMonitor keyguardUpdateMonitor = (KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class);
        if (display != null) {
            String str = subscreenNotificationInfo.mKey;
            ActivityOptions makeBasic = ActivityOptions.makeBasic();
            makeBasic.setLaunchDisplayId(display.getDisplayId());
            Intent intent = new Intent();
            if (i == 1) {
                intent.setAction("samsung.honeyboard.honeyvoice.action.RECOGNIZE_SPEECH");
                intent.putExtra(SpeechRecognitionConst.Key.LOCALE, Locale.getDefault().toString());
                intent.putExtra("maxLength", subscreenNotificationInfo.mRemoteInputMaxLength);
                intent.putExtra("isSms", subscreenNotificationInfo.mRemoteInputIsSms);
                intent.putExtra(Account.SIGNATURE, subscreenNotificationInfo.mRemoteInputSignature);
                StringBuilder sb = new StringBuilder("voice started  ml : ");
                sb.append(subscreenNotificationInfo.mRemoteInputMaxLength);
                sb.append(" is : ");
                sb.append(subscreenNotificationInfo.mRemoteInputIsSms);
                sb.append(" s : ");
                ExifInterface$$ExternalSyntheticOutline0.m(sb, subscreenNotificationInfo.mRemoteInputSignature, "SubscreenSubRoomNotification");
            } else if (i == 2) {
                intent = new Intent("com.samsung.android.honeyboard.intent.action.COVER_EMOTICON", Uri.parse("honeyboard://cover-emoticon"));
                Log.d("SubscreenSubRoomNotification", "emoji started ");
            }
            Intent intent2 = intent;
            intent2.setFlags(276824064);
            intent2.putExtra("key", str);
            PendingIntent activityAsUser = PendingIntent.getActivityAsUser(mContext, 0, intent2, 201326592, makeBasic.toBundle(), UserHandle.CURRENT);
            Intent intent3 = new Intent();
            intent3.putExtra("runOnCover", true);
            intent3.putExtra("afterKeyguardGone", true);
            intent3.putExtra("ignoreKeyguardState", true);
            keyguardUpdateMonitor.dispatchStartSubscreenBiometric(intent3);
            SubRoom.StateChangeListener stateChangeListener = this.mStateChangeListener;
            if (stateChangeListener != null) {
                stateChangeListener.requestCoverPopup(activityAsUser, intent3);
            }
        }
    }

    public final void updateNotificationState(NotificationEntry notificationEntry, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        if (notificationEntry != null && ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).shouldFilterOut(notificationEntry)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Log.e("SubscreenSubRoomNotification", "updateNotificationState -  Filter out notification");
            return;
        }
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("updateNotificationState -  action = ", i, " list size = ");
        ArrayList arrayList = this.mUnreadNotificationList;
        m.append(arrayList.size());
        Log.e("SubscreenSubRoomNotification", m.toString());
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    arrayList.clear();
                }
            } else if (notificationEntry != null) {
                arrayList.remove(notificationEntry.mKey);
            }
        } else if (notificationEntry != null) {
            Log.d("SubscreenSubRoomNotification", "updateNotificationState - mIsInNotiRoom = " + this.mIsInNotiRoom + " isOngoing = " + notificationEntry.mSbn.isOngoing() + " importance = " + notificationEntry.getImportance() + " isGroupSummary = " + notificationEntry.mSbn.getNotification().isGroupSummary());
            if (!this.mIsInNotiRoom && !notificationEntry.mSbn.isOngoing()) {
                if (((SettingsHelper) Dependency.get(SettingsHelper.class)).mItemLists.get("lock_screen_show_silent_notifications").getIntValue() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2 ? notificationEntry.getImportance() >= 3 : notificationEntry.getImportance() >= 2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3 && !notificationEntry.mSbn.getNotification().isGroupSummary()) {
                    String str = notificationEntry.mKey;
                    if (!arrayList.contains(str)) {
                        Log.d("SubscreenSubRoomNotification", "updateNotificationState - key is added");
                        arrayList.add(str);
                    }
                }
            }
        }
        boolean z4 = this.mHasUnreadNoti;
        boolean z5 = !arrayList.isEmpty();
        this.mHasUnreadNoti = z5;
        if (z4 != z5 && this.mStateChangeListener != null) {
            Bundle bundle = new Bundle();
            bundle.putBoolean(SubRoom.EXTRA_HAS_UNREAD, z5);
            this.mStateChangeListener.onStateChanged(bundle);
        }
        StringBuilder m2 = RowView$$ExternalSyntheticOutline0.m("updateNotificationState - prevHasUnreadNoti = ", z4, " mHasUnreadNoti = ");
        m2.append(this.mHasUnreadNoti);
        m2.append(" list size = ");
        m2.append(arrayList.size());
        Log.e("SubscreenSubRoomNotification", m2.toString());
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Log.e("SubscreenSubRoomNotification", "updateNotificationState - mUnreadNotificationList = " + ((String) arrayList.get(i2)));
        }
    }
}
