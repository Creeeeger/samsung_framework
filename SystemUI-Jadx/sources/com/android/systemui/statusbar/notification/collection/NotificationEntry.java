package com.android.systemui.statusbar.notification.collection;

import android.app.Notification;
import android.app.NotificationChannel;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.view.ContentInfo;
import com.android.internal.widget.LocalImageResolver;
import com.android.systemui.statusbar.InflationTask;
import com.android.systemui.statusbar.notification.icon.IconPack;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRowController;
import com.android.systemui.statusbar.notification.row.NotificationContentView;
import com.android.systemui.statusbar.notification.row.NotificationInlineImageResolver;
import com.android.systemui.util.ListenerSet;
import com.android.systemui.util.wakelock.WakeLock;
import com.samsung.android.desktopsystemui.sharedlib.keyguard.KeyguardConstants;
import com.sec.ims.IMSParameter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationEntry extends ListEntry {
    public EditedSuggestionInfo editedSuggestionInfo;
    public boolean hasSentReply;
    public CharSequence headsUpStatusBarText;
    public CharSequence headsUpStatusBarTextPublic;
    public long initializationTime;
    public boolean interruption;
    public long lastFullScreenIntentLaunchTime;
    public long lastRemoteInputSent;
    public boolean mBlockable;
    public Notification.BubbleMetadata mBubbleMetadata;
    public int mBucket;
    public int mCachedContrastColor;
    public int mCachedContrastColorIsFor;
    public int mCancellationReason;
    public final List mDismissInterceptors;
    public DismissState mDismissState;
    public boolean mExpandAnimationRunning;
    public long mFullscreenPopUpStartTime;
    public GroupEntry mGroupEntry;
    public IconPack mIcons;
    public WakeLock mInflationWakeLock;
    public boolean mIsAlerting;
    public boolean mIsDemoted;
    public boolean mIsGhost;
    public boolean mIsHeadsUpByBriefExpanding;
    public boolean mIsMarkedForUserTriggeredMovement;
    public final String mKey;
    public final List mLifetimeExtenders;
    public final ListenerSet mOnSensitivityChangedListeners;
    public boolean mPulseSupressed;
    public NotificationListenerService.Ranking mRanking;
    public boolean mRemoteEditImeAnimatingAway;
    public boolean mRemoteEditImeVisible;
    public ExpandableNotificationRowController mRowController;
    public InflationTask mRunningTask;
    public StatusBarNotification mSbn;
    public boolean mSensitive;
    public boolean mUserPublic;
    public ContentInfo remoteInputAttachment;
    public String remoteInputMimeType;
    public CharSequence remoteInputText;
    public CharSequence remoteInputTextWhenReset;
    public Uri remoteInputUri;
    public ExpandableNotificationRow row;
    public int targetSdk;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum DismissState {
        NOT_DISMISSED,
        DISMISSED,
        PARENT_DISMISSED
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class EditedSuggestionInfo {
        public final int index;
        public final CharSequence originalText;

        public EditedSuggestionInfo(CharSequence charSequence, int i) {
            this.originalText = charSequence;
            this.index = i;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface OnSensitivityChangedListener {
        void onSensitivityChanged(NotificationEntry notificationEntry);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public NotificationEntry(android.service.notification.StatusBarNotification r3, android.service.notification.NotificationListenerService.Ranking r4, long r5) {
        /*
            r2 = this;
            java.util.Objects.requireNonNull(r3)
            r0 = r3
            android.service.notification.StatusBarNotification r0 = (android.service.notification.StatusBarNotification) r0
            java.lang.String r0 = r3.getKey()
            java.util.Objects.requireNonNull(r0)
            r2.<init>(r0, r5)
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            r2.mLifetimeExtenders = r5
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            r2.mDismissInterceptors = r5
            r5 = -1
            r2.mCancellationReason = r5
            com.android.systemui.statusbar.notification.collection.NotificationEntry$DismissState r5 = com.android.systemui.statusbar.notification.collection.NotificationEntry.DismissState.NOT_DISMISSED
            r2.mDismissState = r5
            r5 = 0
            com.android.systemui.statusbar.notification.icon.IconPack r6 = com.android.systemui.statusbar.notification.icon.IconPack.buildEmptyPack(r5)
            r2.mIcons = r6
            r0 = -2000(0xfffffffffffff830, double:NaN)
            r2.lastFullScreenIntentLaunchTime = r0
            r6 = 1
            r2.mCachedContrastColor = r6
            r2.mCachedContrastColorIsFor = r6
            r2.mRunningTask = r5
            r2.lastRemoteInputSent = r0
            android.util.ArraySet r5 = new android.util.ArraySet
            r0 = 3
            r5.<init>(r0)
            r0 = -1
            r2.initializationTime = r0
            r2.mSensitive = r6
            com.android.systemui.util.ListenerSet r5 = new com.android.systemui.util.ListenerSet
            r5.<init>()
            r2.mOnSensitivityChangedListeners = r5
            r5 = 8
            r2.mBucket = r5
            r5 = 0
            r2.mIsDemoted = r5
            r2.mIsHeadsUpByBriefExpanding = r5
            r5 = 0
            r2.mFullscreenPopUpStartTime = r5
            java.util.Objects.requireNonNull(r4)
            java.lang.String r5 = r3.getKey()
            r2.mKey = r5
            r2.setSbn(r3)
            r2.setRanking(r4)
            android.os.SystemClock.elapsedRealtime()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.collection.NotificationEntry.<init>(android.service.notification.StatusBarNotification, android.service.notification.NotificationListenerService$Ranking, long):void");
    }

    public final boolean abortTask() {
        InflationTask inflationTask = this.mRunningTask;
        if (inflationTask != null) {
            inflationTask.abort();
            this.mRunningTask = null;
            return true;
        }
        return false;
    }

    public final boolean canBubble() {
        return this.mRanking.canBubble();
    }

    public final List getAttachedNotifChildren() {
        List attachedChildren;
        ExpandableNotificationRow expandableNotificationRow = this.row;
        if (expandableNotificationRow == null || (attachedChildren = expandableNotificationRow.getAttachedChildren()) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = attachedChildren.iterator();
        while (it.hasNext()) {
            arrayList.add(((ExpandableNotificationRow) it.next()).mEntry);
        }
        return arrayList;
    }

    public final NotificationChannel getChannel() {
        return this.mRanking.getChannel();
    }

    public final int getImportance() {
        return this.mRanking.getImportance();
    }

    @Override // com.android.systemui.statusbar.notification.collection.ListEntry
    public final String getKey() {
        return this.mKey;
    }

    public InflationTask getRunningTask() {
        return this.mRunningTask;
    }

    public final boolean hasFinishedInitialization() {
        if (this.initializationTime != -1 && SystemClock.elapsedRealtime() > this.initializationTime + 400) {
            return true;
        }
        return false;
    }

    public final boolean isAmbient() {
        return this.mRanking.isAmbient();
    }

    public final boolean isBubble() {
        if ((this.mSbn.getNotification().flags & 4096) != 0) {
            return true;
        }
        return false;
    }

    public final boolean isCanceled() {
        if (this.mCancellationReason != -1) {
            return true;
        }
        return false;
    }

    public final boolean isChildInGroup() {
        ExpandableNotificationRow expandableNotificationRow = this.row;
        if (expandableNotificationRow != null && expandableNotificationRow.isChildInGroup()) {
            return true;
        }
        return false;
    }

    public final boolean isClearable() {
        boolean canViewBeDismissed$1;
        if (!this.mSbn.isClearable()) {
            return false;
        }
        ExpandableNotificationRow expandableNotificationRow = this.row;
        if (expandableNotificationRow == null) {
            canViewBeDismissed$1 = true;
        } else {
            canViewBeDismissed$1 = expandableNotificationRow.canViewBeDismissed$1();
        }
        if (!canViewBeDismissed$1) {
            return false;
        }
        List attachedNotifChildren = getAttachedNotifChildren();
        if (attachedNotifChildren != null) {
            ArrayList arrayList = (ArrayList) attachedNotifChildren;
            if (arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (!((NotificationEntry) arrayList.get(i)).mSbn.isClearable()) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public boolean isDemoted() {
        return this.mIsDemoted;
    }

    public boolean isExemptFromDndVisualSuppression() {
        boolean z;
        Notification notification2 = this.mSbn.getNotification();
        if (!Objects.equals(notification2.category, "call") && !Objects.equals(notification2.category, KeyguardConstants.UpdateType.BouncerTextKey.MSG) && !Objects.equals(notification2.category, "alarm") && !Objects.equals(notification2.category, IMSParameter.CALL.EVENT) && !Objects.equals(notification2.category, "reminder")) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            return false;
        }
        if (!this.mSbn.getNotification().isFgsOrUij() && !this.mSbn.getNotification().isMediaNotification() && this.mBlockable) {
            return false;
        }
        return true;
    }

    public final boolean isRowPinned() {
        ExpandableNotificationRow expandableNotificationRow = this.row;
        if (expandableNotificationRow != null && expandableNotificationRow.mIsPinned) {
            return true;
        }
        return false;
    }

    public final boolean isStickyAndNotDemoted() {
        boolean z;
        if ((this.mSbn.getNotification().flags & 16384) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z && !this.mIsDemoted) {
            this.mIsDemoted = true;
        }
        if (!z || this.mIsDemoted) {
            return false;
        }
        return true;
    }

    public final boolean legacyIsDismissableRecursive() {
        if (this.mSbn.isOngoing()) {
            return false;
        }
        List attachedNotifChildren = getAttachedNotifChildren();
        if (attachedNotifChildren != null) {
            ArrayList arrayList = (ArrayList) attachedNotifChildren;
            if (arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (((NotificationEntry) arrayList.get(i)).mSbn.isOngoing()) {
                        return false;
                    }
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public final boolean rowExists() {
        if (this.row != null) {
            return true;
        }
        return false;
    }

    public final void setDismissState(DismissState dismissState) {
        Objects.requireNonNull(dismissState);
        this.mDismissState = dismissState;
    }

    public final void setHeadsUp(boolean z) {
        ExpandableNotificationRow expandableNotificationRow = this.row;
        if (expandableNotificationRow != null) {
            boolean isAboveShelf = expandableNotificationRow.isAboveShelf();
            int intrinsicHeight = expandableNotificationRow.getIntrinsicHeight();
            expandableNotificationRow.mIsHeadsUp = z;
            NotificationContentView notificationContentView = expandableNotificationRow.mPrivateLayout;
            notificationContentView.mIsHeadsUp = z;
            notificationContentView.selectLayout(false, true);
            notificationContentView.updateExpandButtonsDuringLayout(notificationContentView.mExpandable, false);
            if (expandableNotificationRow.mIsSummaryWithChildren) {
                expandableNotificationRow.mChildrenContainer.updateGroupOverflow();
            }
            if (intrinsicHeight != expandableNotificationRow.getIntrinsicHeight()) {
                expandableNotificationRow.notifyHeightChanged(false);
            }
            if (z) {
                expandableNotificationRow.mMustStayOnScreen = true;
                expandableNotificationRow.setAboveShelf(true);
            } else if (expandableNotificationRow.isAboveShelf() != isAboveShelf) {
                expandableNotificationRow.mAboveShelfChangedListener.onAboveShelfStateChanged(!isAboveShelf);
            }
        }
    }

    public final void setMessageUriToBitmap(Context context) {
        if (Notification.MessagingStyle.class.equals(this.mSbn.getNotification().getNotificationStyle())) {
            for (Notification.MessagingStyle.Message message : Notification.MessagingStyle.Message.getMessagesFromBundleArray(this.mSbn.getNotification().extras.getParcelableArray("android.messages"))) {
                if (message.getDataUri() != null && message.getDataMimeType() != null && message.getDataMimeType().startsWith("image/")) {
                    try {
                        Uri dataUri = message.getDataUri();
                        NotificationInlineImageResolver notificationInlineImageResolver = this.row.mImageResolver;
                        if (notificationInlineImageResolver != null) {
                            notificationInlineImageResolver.loadImage(dataUri);
                        } else {
                            LocalImageResolver.resolveImage(dataUri, context);
                        }
                    } catch (IOException | SecurityException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public final void setRanking(NotificationListenerService.Ranking ranking) {
        Objects.requireNonNull(ranking);
        Objects.requireNonNull(ranking.getKey());
        String key = ranking.getKey();
        String str = this.mKey;
        if (key.equals(str)) {
            this.mRanking = ranking.withAudiblyAlertedInfo(this.mRanking);
            if (getChannel() == null) {
                this.mBlockable = false;
                return;
            } else if (getChannel().isImportanceLockedByCriticalDeviceFunction() && !getChannel().isBlockable()) {
                this.mBlockable = false;
                return;
            } else {
                this.mBlockable = true;
                return;
            }
        }
        throw new IllegalArgumentException("New key " + ranking.getKey() + " doesn't match existing key " + str);
    }

    public final void setSbn(StatusBarNotification statusBarNotification) {
        Objects.requireNonNull(statusBarNotification);
        Objects.requireNonNull(statusBarNotification.getKey());
        String key = statusBarNotification.getKey();
        String str = this.mKey;
        if (key.equals(str)) {
            this.mSbn = statusBarNotification;
            this.mBubbleMetadata = statusBarNotification.getNotification().getBubbleMetadata();
        } else {
            throw new IllegalArgumentException("New key " + statusBarNotification.getKey() + " doesn't match existing key " + str);
        }
    }

    public final boolean shouldSuppressVisualEffect(int i) {
        if (isExemptFromDndVisualSuppression() || (this.mRanking.getSuppressedVisualEffects() & i) == 0) {
            return false;
        }
        return true;
    }

    public void setCreationElapsedRealTime(long j) {
    }

    @Override // com.android.systemui.statusbar.notification.collection.ListEntry
    public final NotificationEntry getRepresentativeEntry() {
        return this;
    }
}
