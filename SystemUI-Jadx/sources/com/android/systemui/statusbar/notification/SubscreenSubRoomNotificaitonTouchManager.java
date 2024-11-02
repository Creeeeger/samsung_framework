package com.android.systemui.statusbar.notification;

import android.content.Context;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.util.Log;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.Dependency;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SystemUIAnalytics;
import com.sec.ims.im.ImIntent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenSubRoomNotificaitonTouchManager {
    public final VibrationEffect effect;
    public Context mContext;
    public float mItemTouchDownX;
    public final ItemTouchHelper mItemTouchHelper;
    public int mLayoutDirection;
    public final SubscreenNotificationInfoManager mNotificationInfoManager;
    public final AnonymousClass2 mOnItemTouchListener;
    public final AnonymousClass1 mSimpleItemTouchCallBack;
    public final Vibrator mVibrator;
    public float mSwipeThreshold = 0.3f;
    public float mSwipeEscapeVelocity = 5.0f;
    public boolean mItemViewSwipeEnabled = true;

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.ItemTouchHelper$Callback, com.android.systemui.statusbar.notification.SubscreenSubRoomNotificaitonTouchManager$1] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.statusbar.notification.SubscreenSubRoomNotificaitonTouchManager$2] */
    public SubscreenSubRoomNotificaitonTouchManager(Context context, SubscreenNotificationInfoManager subscreenNotificationInfoManager, Vibrator vibrator) {
        this.mItemTouchHelper = null;
        ?? r0 = new ItemTouchHelper.SimpleCallback(0, 8) { // from class: com.android.systemui.statusbar.notification.SubscreenSubRoomNotificaitonTouchManager.1
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final float getSwipeEscapeVelocity(float f) {
                return f * SubscreenSubRoomNotificaitonTouchManager.this.mSwipeEscapeVelocity;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final float getSwipeThreshold() {
                return SubscreenSubRoomNotificaitonTouchManager.this.mSwipeThreshold;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final boolean isItemViewSwipeEnabled() {
                return SubscreenSubRoomNotificaitonTouchManager.this.mItemViewSwipeEnabled;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final boolean onMove(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                return false;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final void onSwiped(RecyclerView.ViewHolder viewHolder) {
                RecyclerView.Adapter subscreenNotificationListAdapter;
                String str;
                Log.d("SubscreenSubRoomNotificaitonTouchManager", "notification onSwiped : " + viewHolder);
                SubscreenSubRoomNotificaitonTouchManager subscreenSubRoomNotificaitonTouchManager = SubscreenSubRoomNotificaitonTouchManager.this;
                boolean z = subscreenSubRoomNotificaitonTouchManager.mNotificationInfoManager.mIsShownGroup;
                if (z) {
                    if (SubscreenNotificationGroupAdapter.sInstance == null) {
                        SubscreenNotificationGroupAdapter.sInstance = new SubscreenNotificationGroupAdapter();
                    }
                    subscreenNotificationListAdapter = SubscreenNotificationGroupAdapter.sInstance;
                } else {
                    subscreenNotificationListAdapter = SubscreenNotificationListAdapter.getInstance();
                }
                if (!(viewHolder instanceof SubscreenParentItemViewHolder)) {
                    subscreenNotificationListAdapter.notifyDataSetChanged();
                    return;
                }
                SubscreenParentItemViewHolder subscreenParentItemViewHolder = (SubscreenParentItemViewHolder) viewHolder;
                SubscreenNotificationInfoManager subscreenNotificationInfoManager2 = subscreenParentItemViewHolder.mNotificationInfoManager;
                ExpandableNotificationRow expandableNotificationRow = subscreenParentItemViewHolder.mInfo.mRow;
                subscreenNotificationInfoManager2.getClass();
                if (expandableNotificationRow.canViewBeDismissed$1()) {
                    Log.e("SubscreenSubRoomNotificaitonTouchManager", "removeItem mSwipeNotificationType : " + subscreenParentItemViewHolder.mInfo.mKey);
                    SubscreenNotificationInfoManager subscreenNotificationInfoManager3 = subscreenSubRoomNotificaitonTouchManager.mNotificationInfoManager;
                    boolean z2 = subscreenNotificationInfoManager3.mIsShownGroup;
                    subscreenParentItemViewHolder.mInfo.getClass();
                    subscreenNotificationInfoManager3.removeNotification(subscreenParentItemViewHolder.mInfo.mRow.mEntry);
                    if (z2 && subscreenNotificationInfoManager3.getGroupDataArraySize() <= 1) {
                        ((SubscreenNotificationController) Dependency.get(SubscreenNotificationController.class)).mDeviceModel.hideGroupNotification();
                    }
                    if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isHapticFeedbackEnabled()) {
                        subscreenSubRoomNotificaitonTouchManager.mVibrator.vibrate(subscreenSubRoomNotificaitonTouchManager.effect);
                    }
                    Log.d("SubscreenSubRoomNotificaitonTouchManager", "notification removed with onSwiped");
                    if (z) {
                        str = "QPN101";
                    } else {
                        str = "QPN100";
                    }
                    SystemUIAnalytics.sendEventCDLog(str, "QPNE0202", ImIntent.Extras.EXTRA_FROM, "swipe");
                    return;
                }
                subscreenNotificationListAdapter.notifyDataSetChanged();
            }
        };
        this.mSimpleItemTouchCallBack = r0;
        this.mOnItemTouchListener = new RecyclerView.OnItemTouchListener() { // from class: com.android.systemui.statusbar.notification.SubscreenSubRoomNotificaitonTouchManager.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public final boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
                float f;
                float f2;
                recyclerView.getParent().requestDisallowInterceptTouchEvent(false);
                int actionMasked = motionEvent.getActionMasked();
                SubscreenSubRoomNotificaitonTouchManager subscreenSubRoomNotificaitonTouchManager = SubscreenSubRoomNotificaitonTouchManager.this;
                if (actionMasked != 0) {
                    if (actionMasked == 2) {
                        if (subscreenSubRoomNotificaitonTouchManager.mLayoutDirection == 1) {
                            if (subscreenSubRoomNotificaitonTouchManager.mItemTouchDownX < motionEvent.getX()) {
                                recyclerView.getParent().requestDisallowInterceptTouchEvent(false);
                                return false;
                            }
                        } else if (subscreenSubRoomNotificaitonTouchManager.mItemTouchDownX > motionEvent.getX()) {
                            recyclerView.getParent().requestDisallowInterceptTouchEvent(false);
                            return false;
                        }
                    }
                } else {
                    subscreenSubRoomNotificaitonTouchManager.mItemTouchDownX = motionEvent.getX();
                }
                View findChildViewUnder = recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
                if (findChildViewUnder != null) {
                    RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(findChildViewUnder);
                    if (childViewHolder instanceof SubscreenParentDetailItemViewHolder) {
                        recyclerView.getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    if (childViewHolder instanceof SubscreenParentItemViewHolder) {
                        SubscreenParentItemViewHolder subscreenParentItemViewHolder = (SubscreenParentItemViewHolder) childViewHolder;
                        SubscreenNotificationInfoManager subscreenNotificationInfoManager2 = subscreenParentItemViewHolder.mNotificationInfoManager;
                        ExpandableNotificationRow expandableNotificationRow = subscreenParentItemViewHolder.mInfo.mRow;
                        subscreenNotificationInfoManager2.getClass();
                        if (expandableNotificationRow.canViewBeDismissed$1()) {
                            f = 0.3f;
                        } else {
                            f = 1.0f;
                        }
                        subscreenSubRoomNotificaitonTouchManager.mSwipeThreshold = f;
                        SubscreenNotificationInfoManager subscreenNotificationInfoManager3 = subscreenParentItemViewHolder.mNotificationInfoManager;
                        ExpandableNotificationRow expandableNotificationRow2 = subscreenParentItemViewHolder.mInfo.mRow;
                        subscreenNotificationInfoManager3.getClass();
                        if (expandableNotificationRow2.canViewBeDismissed$1()) {
                            f2 = 5.0f;
                        } else {
                            f2 = 1000.0f;
                        }
                        subscreenSubRoomNotificaitonTouchManager.mSwipeEscapeVelocity = f2;
                        recyclerView.getParent().requestDisallowInterceptTouchEvent(true);
                        subscreenSubRoomNotificaitonTouchManager.mItemViewSwipeEnabled = true;
                    } else {
                        subscreenSubRoomNotificaitonTouchManager.mItemViewSwipeEnabled = false;
                    }
                }
                return false;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public final void onRequestDisallowInterceptTouchEvent(boolean z) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
            public final void onTouchEvent(MotionEvent motionEvent) {
            }
        };
        this.mNotificationInfoManager = subscreenNotificationInfoManager;
        this.mContext = context;
        this.mItemTouchHelper = new ItemTouchHelper(r0);
        this.mVibrator = vibrator;
        this.effect = VibrationEffect.semCreateWaveform(HapticFeedbackConstants.semGetVibrationIndex(41), -1, VibrationEffect.SemMagnitudeType.TYPE_TOUCH);
    }
}
