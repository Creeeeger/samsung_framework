package com.android.wm.shell.bubbles;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.content.Context;
import android.content.Intent;
import android.content.LocusId;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.AsyncTask;
import android.os.Parcelable;
import android.os.UserHandle;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.logging.InstanceId;
import com.android.keyguard.KeyguardClockSwitchController$$ExternalSyntheticOutline0;
import com.android.wm.shell.bubbles.BubbleViewInfoTask;
import com.android.wm.shell.bubbles.Bubbles;
import com.android.wm.shell.bubbles.bar.BubbleBarExpandedView;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import java.io.PrintWriter;
import java.util.Objects;
import java.util.concurrent.Executor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class Bubble implements BubbleViewProvider {
    public final Intent mAppIntent;
    public String mAppName;
    public int mAppUid;
    public Bitmap mBadgeBitmap;
    public BubbleBarExpandedView mBubbleBarExpandedView;
    public Bitmap mBubbleBitmap;
    public final Bubbles.BubbleMetadataFlagListener mBubbleMetadataFlagListener;
    public String mChannelId;
    public PendingIntent mDeleteIntent;
    public int mDesiredHeight;
    public int mDesiredHeightResId;
    public int mDotColor;
    public Path mDotPath;
    public BubbleExpandedView mExpandedView;
    public int mFlags;
    public FlyoutMessage mFlyoutMessage;
    public final String mGroupKey;
    public Icon mIcon;
    public BadgedImageView mIconView;
    public boolean mInflateSynchronously;
    public BubbleViewInfoTask mInflationTask;
    public InstanceId mInstanceId;
    public PendingIntent mIntent;
    public boolean mIntentActive;
    public final Bubble$$ExternalSyntheticLambda0 mIntentCancelListener;
    public final boolean mIsAppBubble;
    public boolean mIsBubble;
    public boolean mIsDismissable;
    public boolean mIsImportantConversation;
    public boolean mIsTextChanged;
    public final String mKey;
    public long mLastAccessed;
    public long mLastUpdated;
    public final LocusId mLocusId;
    public final Executor mMainExecutor;
    public String mMetadataShortcutId;
    public int mNotificationId;
    public String mPackageName;
    public boolean mPendingIntentCanceled;
    public ShortcutInfo mShortcutInfo;
    public boolean mShouldSuppressNotificationDot;
    public boolean mShouldSuppressNotificationList;
    public boolean mShouldSuppressPeek;
    public boolean mShowBubbleUpdateDot;
    public boolean mSuppressFlyout;
    public final int mTaskId;
    public String mTitle;
    public UserHandle mUser;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FlyoutMessage {
        public boolean isGroupChat;
        public CharSequence message;
        public Drawable senderAvatar;
        public Icon senderIcon;
        public CharSequence senderName;
    }

    public Bubble(String str, ShortcutInfo shortcutInfo, int i, int i2, String str2, int i3, String str3, boolean z, Executor executor, Bubbles.BubbleMetadataFlagListener bubbleMetadataFlagListener) {
        this.mShowBubbleUpdateDot = true;
        this.mAppUid = -1;
        Objects.requireNonNull(str);
        Objects.requireNonNull(shortcutInfo);
        this.mMetadataShortcutId = shortcutInfo.getId();
        this.mShortcutInfo = shortcutInfo;
        this.mKey = str;
        this.mGroupKey = null;
        this.mLocusId = str3 != null ? new LocusId(str3) : null;
        this.mIsDismissable = z;
        this.mFlags = 0;
        this.mUser = shortcutInfo.getUserHandle();
        this.mPackageName = shortcutInfo.getPackage();
        this.mIcon = shortcutInfo.getIcon();
        this.mDesiredHeight = i;
        this.mDesiredHeightResId = i2;
        this.mTitle = str2;
        this.mShowBubbleUpdateDot = false;
        this.mMainExecutor = executor;
        this.mTaskId = i3;
        this.mBubbleMetadataFlagListener = bubbleMetadataFlagListener;
        this.mIsAppBubble = false;
    }

    public static Bubble createAppBubble(Intent intent, UserHandle userHandle, Icon icon, ShellExecutor shellExecutor) {
        return new Bubble(intent, userHandle, icon, true, getAppBubbleKeyForApp(intent.getPackage(), userHandle), shellExecutor);
    }

    public static String getAppBubbleKeyForApp(String str, UserHandle userHandle) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(userHandle);
        return "key_app_bubble:" + userHandle.getIdentifier() + ":" + str;
    }

    public final void cleanupExpandedView() {
        BubbleExpandedView bubbleExpandedView = this.mExpandedView;
        if (bubbleExpandedView != null) {
            bubbleExpandedView.cleanUpExpandedState();
            this.mExpandedView = null;
        }
        BubbleBarExpandedView bubbleBarExpandedView = this.mBubbleBarExpandedView;
        PendingIntent pendingIntent = this.mIntent;
        if (pendingIntent != null) {
            pendingIntent.unregisterCancelListener(this.mIntentCancelListener);
        }
        this.mIntentActive = false;
    }

    public final void dump(PrintWriter printWriter) {
        boolean z;
        String valueOf;
        printWriter.print("key: ");
        printWriter.println(this.mKey);
        printWriter.print("  showInShade:   ");
        printWriter.println(showInShade());
        printWriter.print("  showDot:       ");
        printWriter.println(showDot());
        printWriter.print("  showFlyout:    ");
        printWriter.println(showFlyout());
        printWriter.print("  lastActivity:  ");
        printWriter.println(getLastActivity());
        printWriter.print("  desiredHeight: ");
        int i = this.mDesiredHeightResId;
        boolean z2 = false;
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            valueOf = String.valueOf(i);
        } else {
            valueOf = String.valueOf(this.mDesiredHeight);
        }
        printWriter.println(valueOf);
        printWriter.print("  suppressNotif: ");
        printWriter.println(isEnabled(2));
        printWriter.print("  autoExpand:    ");
        printWriter.println(isEnabled(1));
        printWriter.print("  isDismissable: ");
        printWriter.println(this.mIsDismissable);
        StringBuilder sb = new StringBuilder("  bubbleMetadataFlagListener null: ");
        if (this.mBubbleMetadataFlagListener == null) {
            z2 = true;
        }
        KeyguardClockSwitchController$$ExternalSyntheticOutline0.m(sb, z2, printWriter);
        BubbleExpandedView bubbleExpandedView = this.mExpandedView;
        if (bubbleExpandedView != null) {
            printWriter.print("BubbleExpandedView");
            printWriter.print("  taskId:               ");
            printWriter.println(bubbleExpandedView.mTaskId);
            printWriter.print("  stackView:            ");
            printWriter.println(bubbleExpandedView.mStackView);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Bubble)) {
            return false;
        }
        return Objects.equals(this.mKey, ((Bubble) obj).mKey);
    }

    @Override // com.android.wm.shell.bubbles.BubbleViewProvider
    public final Bitmap getAppBadge() {
        return this.mBadgeBitmap;
    }

    @Override // com.android.wm.shell.bubbles.BubbleViewProvider
    public final Bitmap getBubbleIcon() {
        return this.mBubbleBitmap;
    }

    @Override // com.android.wm.shell.bubbles.BubbleViewProvider
    public final int getDotColor() {
        return this.mDotColor;
    }

    @Override // com.android.wm.shell.bubbles.BubbleViewProvider
    public final Path getDotPath() {
        return this.mDotPath;
    }

    @Override // com.android.wm.shell.bubbles.BubbleViewProvider
    public final BubbleExpandedView getExpandedView() {
        return this.mExpandedView;
    }

    @Override // com.android.wm.shell.bubbles.BubbleViewProvider
    public final BadgedImageView getIconView$1() {
        return this.mIconView;
    }

    @Override // com.android.wm.shell.bubbles.BubbleViewProvider
    public final String getKey() {
        return this.mKey;
    }

    public final long getLastActivity() {
        if (this.mIsAppBubble) {
            return Long.MAX_VALUE;
        }
        return Math.max(this.mLastUpdated, this.mLastAccessed);
    }

    @Override // com.android.wm.shell.bubbles.BubbleViewProvider
    public final int getTaskId() {
        if (this.mBubbleBarExpandedView != null) {
            return -1;
        }
        BubbleExpandedView bubbleExpandedView = this.mExpandedView;
        if (bubbleExpandedView != null) {
            return bubbleExpandedView.mTaskId;
        }
        return this.mTaskId;
    }

    public final boolean hasMetadataShortcutId() {
        String str = this.mMetadataShortcutId;
        if (str != null && !str.isEmpty()) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.mKey);
    }

    public final void inflate(BubbleViewInfoTask.Callback callback, Context context, BubbleController bubbleController, BubbleStackView bubbleStackView, BubbleIconFactory bubbleIconFactory, BubbleBadgeIconFactory bubbleBadgeIconFactory, boolean z) {
        boolean z2;
        BubbleViewInfoTask bubbleViewInfoTask = this.mInflationTask;
        if (bubbleViewInfoTask != null && bubbleViewInfoTask.getStatus() != AsyncTask.Status.FINISHED) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            this.mInflationTask.cancel(true);
        }
        BubbleViewInfoTask bubbleViewInfoTask2 = new BubbleViewInfoTask(this, context, bubbleController, bubbleStackView, null, bubbleIconFactory, bubbleBadgeIconFactory, z, callback, this.mMainExecutor);
        this.mInflationTask = bubbleViewInfoTask2;
        if (this.mInflateSynchronously) {
            BubbleViewInfoTask.BubbleViewInfo doInBackground = bubbleViewInfoTask2.doInBackground();
            if (!bubbleViewInfoTask2.isCancelled() && doInBackground != null) {
                bubbleViewInfoTask2.mMainExecutor.execute(new BubbleViewInfoTask$$ExternalSyntheticLambda0(bubbleViewInfoTask2, doInBackground));
                return;
            }
            return;
        }
        bubbleViewInfoTask2.execute(new Void[0]);
    }

    public final boolean isEnabled(int i) {
        if ((this.mFlags & i) != 0) {
            return true;
        }
        return false;
    }

    public final void setEntry(BubbleEntry bubbleEntry) {
        String charSequence;
        String channelId;
        CharSequence charSequence2;
        Icon icon;
        Objects.requireNonNull(bubbleEntry);
        boolean showDot = showDot();
        StatusBarNotification statusBarNotification = bubbleEntry.mSbn;
        this.mLastUpdated = statusBarNotification.getPostTime();
        this.mIsBubble = statusBarNotification.getNotification().isBubbleNotification();
        this.mPackageName = statusBarNotification.getPackageName();
        this.mUser = statusBarNotification.getUser();
        CharSequence charSequence3 = statusBarNotification.getNotification().extras.getCharSequence("android.title");
        if (charSequence3 == null) {
            charSequence = null;
        } else {
            charSequence = charSequence3.toString();
        }
        this.mTitle = charSequence;
        NotificationListenerService.Ranking ranking = bubbleEntry.mRanking;
        if (ranking != null && ranking.getChannel() != null) {
            channelId = ranking.getChannel().getId();
        } else {
            channelId = statusBarNotification.getNotification().getChannelId();
        }
        this.mChannelId = channelId;
        this.mNotificationId = statusBarNotification.getId();
        this.mAppUid = statusBarNotification.getUid();
        this.mInstanceId = statusBarNotification.getInstanceId();
        Notification notification2 = statusBarNotification.getNotification();
        Class notificationStyle = notification2.getNotificationStyle();
        FlyoutMessage flyoutMessage = new FlyoutMessage();
        flyoutMessage.isGroupChat = notification2.extras.getBoolean("android.isGroupConversation");
        try {
            if (Notification.BigTextStyle.class.equals(notificationStyle)) {
                CharSequence charSequence4 = notification2.extras.getCharSequence("android.bigText");
                if (TextUtils.isEmpty(charSequence4)) {
                    charSequence4 = notification2.extras.getCharSequence("android.text");
                }
                flyoutMessage.message = charSequence4;
            } else if (Notification.MessagingStyle.class.equals(notificationStyle)) {
                Notification.MessagingStyle.Message findLatestIncomingMessage = Notification.MessagingStyle.findLatestIncomingMessage(Notification.MessagingStyle.Message.getMessagesFromBundleArray((Parcelable[]) notification2.extras.get("android.messages")));
                if (findLatestIncomingMessage != null) {
                    flyoutMessage.message = findLatestIncomingMessage.getText();
                    Person senderPerson = findLatestIncomingMessage.getSenderPerson();
                    if (senderPerson != null) {
                        charSequence2 = senderPerson.getName();
                    } else {
                        charSequence2 = null;
                    }
                    flyoutMessage.senderName = charSequence2;
                    flyoutMessage.senderAvatar = null;
                    if (senderPerson != null) {
                        icon = senderPerson.getIcon();
                    } else {
                        icon = null;
                    }
                    flyoutMessage.senderIcon = icon;
                }
            } else if (Notification.InboxStyle.class.equals(notificationStyle)) {
                CharSequence[] charSequenceArray = notification2.extras.getCharSequenceArray("android.textLines");
                if (charSequenceArray != null && charSequenceArray.length > 0) {
                    flyoutMessage.message = charSequenceArray[charSequenceArray.length - 1];
                }
            } else if (!Notification.MediaStyle.class.equals(notificationStyle)) {
                flyoutMessage.message = notification2.extras.getCharSequence("android.text");
            }
        } catch (ArrayIndexOutOfBoundsException | ClassCastException | NullPointerException e) {
            e.printStackTrace();
        }
        this.mFlyoutMessage = flyoutMessage;
        if (ranking != null) {
            this.mShortcutInfo = ranking.getConversationShortcutInfo();
            this.mIsTextChanged = ranking.isTextChanged();
            if (ranking.getChannel() != null) {
                this.mIsImportantConversation = ranking.getChannel().isImportantConversation();
            }
        }
        if (bubbleEntry.getBubbleMetadata() != null) {
            this.mMetadataShortcutId = bubbleEntry.getBubbleMetadata().getShortcutId();
            this.mFlags = bubbleEntry.getBubbleMetadata().getFlags();
            this.mDesiredHeight = bubbleEntry.getBubbleMetadata().getDesiredHeight();
            this.mDesiredHeightResId = bubbleEntry.getBubbleMetadata().getDesiredHeightResId();
            this.mIcon = bubbleEntry.getBubbleMetadata().getIcon();
            boolean z = this.mIntentActive;
            Bubble$$ExternalSyntheticLambda0 bubble$$ExternalSyntheticLambda0 = this.mIntentCancelListener;
            if (z && this.mIntent != null) {
                if (bubbleEntry.getBubbleMetadata().getIntent() == null) {
                    this.mIntent.unregisterCancelListener(bubble$$ExternalSyntheticLambda0);
                    this.mIntentActive = false;
                    this.mIntent = null;
                }
            } else {
                PendingIntent pendingIntent = this.mIntent;
                if (pendingIntent != null) {
                    pendingIntent.unregisterCancelListener(bubble$$ExternalSyntheticLambda0);
                }
                PendingIntent intent = bubbleEntry.getBubbleMetadata().getIntent();
                this.mIntent = intent;
                if (intent != null) {
                    intent.registerCancelListener(bubble$$ExternalSyntheticLambda0);
                }
            }
            this.mDeleteIntent = bubbleEntry.getBubbleMetadata().getDeleteIntent();
        }
        this.mIsDismissable = bubbleEntry.mIsDismissable;
        this.mShouldSuppressNotificationDot = bubbleEntry.mShouldSuppressNotificationDot;
        this.mShouldSuppressNotificationList = bubbleEntry.mShouldSuppressNotificationList;
        this.mShouldSuppressPeek = bubbleEntry.mShouldSuppressPeek;
        if (showDot != showDot()) {
            setShowDot(showDot());
        }
    }

    public void setInflateSynchronously(boolean z) {
        this.mInflateSynchronously = z;
    }

    public void setShouldAutoExpand(boolean z) {
        Bubbles.BubbleMetadataFlagListener bubbleMetadataFlagListener;
        boolean isEnabled = isEnabled(1);
        if (z) {
            this.mFlags = 1 | this.mFlags;
        } else {
            this.mFlags &= -2;
        }
        if (isEnabled != z && (bubbleMetadataFlagListener = this.mBubbleMetadataFlagListener) != null) {
            ((BubbleController$$ExternalSyntheticLambda5) bubbleMetadataFlagListener).onBubbleMetadataFlagChanged(this);
        }
    }

    public final void setShowDot(boolean z) {
        this.mShowBubbleUpdateDot = z;
        BadgedImageView badgedImageView = this.mIconView;
        if (badgedImageView != null) {
            badgedImageView.updateDotVisibility(true);
        }
    }

    public final void setSuppressBubble(boolean z) {
        boolean z2;
        Bubbles.BubbleMetadataFlagListener bubbleMetadataFlagListener;
        int i = this.mFlags;
        boolean z3 = true;
        if ((i & 4) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            Log.e("Bubble", "calling setSuppressBubble on " + this.mKey + " when bubble not suppressable");
            return;
        }
        if ((i & 8) == 0) {
            z3 = false;
        }
        if (z) {
            this.mFlags = i | 8;
        } else {
            this.mFlags = i & (-9);
        }
        if (z3 != z && (bubbleMetadataFlagListener = this.mBubbleMetadataFlagListener) != null) {
            ((BubbleController$$ExternalSyntheticLambda5) bubbleMetadataFlagListener).onBubbleMetadataFlagChanged(this);
        }
    }

    public void setSuppressNotification(boolean z) {
        Bubbles.BubbleMetadataFlagListener bubbleMetadataFlagListener;
        boolean showInShade = showInShade();
        if (z) {
            this.mFlags |= 2;
        } else {
            this.mFlags &= -3;
        }
        if (showInShade() != showInShade && (bubbleMetadataFlagListener = this.mBubbleMetadataFlagListener) != null) {
            ((BubbleController$$ExternalSyntheticLambda5) bubbleMetadataFlagListener).onBubbleMetadataFlagChanged(this);
        }
    }

    @Override // com.android.wm.shell.bubbles.BubbleViewProvider
    public final void setTaskViewVisibility() {
        BubbleExpandedView bubbleExpandedView = this.mExpandedView;
        if (bubbleExpandedView != null) {
            bubbleExpandedView.setContentVisibility(false);
        }
    }

    public void setTextChangedForTest(boolean z) {
        this.mIsTextChanged = z;
    }

    @Override // com.android.wm.shell.bubbles.BubbleViewProvider
    public final boolean showDot() {
        if (this.mShowBubbleUpdateDot && !this.mShouldSuppressNotificationDot && !isEnabled(2)) {
            return true;
        }
        return false;
    }

    public boolean showFlyout() {
        if (!this.mSuppressFlyout && !this.mShouldSuppressPeek && !isEnabled(2) && !this.mShouldSuppressNotificationList) {
            return true;
        }
        return false;
    }

    public final boolean showInShade() {
        if (isEnabled(2) && this.mIsDismissable) {
            return false;
        }
        return true;
    }

    public final String toString() {
        return "Bubble{" + this.mKey + '}';
    }

    private Bubble(Intent intent, UserHandle userHandle, Icon icon, boolean z, String str, Executor executor) {
        this.mAppUid = -1;
        this.mGroupKey = null;
        this.mLocusId = null;
        this.mFlags = 0;
        this.mUser = userHandle;
        this.mIcon = icon;
        this.mIsAppBubble = z;
        this.mKey = str;
        this.mShowBubbleUpdateDot = false;
        this.mMainExecutor = executor;
        this.mTaskId = -1;
        this.mAppIntent = intent;
        this.mDesiredHeight = Integer.MAX_VALUE;
        this.mPackageName = intent.getPackage();
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [com.android.wm.shell.bubbles.Bubble$$ExternalSyntheticLambda0] */
    public Bubble(BubbleEntry bubbleEntry, Bubbles.BubbleMetadataFlagListener bubbleMetadataFlagListener, final Bubbles.PendingIntentCanceledListener pendingIntentCanceledListener, final Executor executor) {
        this.mShowBubbleUpdateDot = true;
        this.mAppUid = -1;
        this.mIsAppBubble = false;
        this.mKey = bubbleEntry.getKey();
        StatusBarNotification statusBarNotification = bubbleEntry.mSbn;
        this.mGroupKey = statusBarNotification.getGroupKey();
        this.mLocusId = statusBarNotification.getNotification().getLocusId();
        this.mBubbleMetadataFlagListener = bubbleMetadataFlagListener;
        this.mIntentCancelListener = new PendingIntent.CancelListener() { // from class: com.android.wm.shell.bubbles.Bubble$$ExternalSyntheticLambda0
            public final void onCanceled(PendingIntent pendingIntent) {
                final Bubble bubble = Bubble.this;
                Executor executor2 = executor;
                final Bubbles.PendingIntentCanceledListener pendingIntentCanceledListener2 = pendingIntentCanceledListener;
                PendingIntent pendingIntent2 = bubble.mIntent;
                if (pendingIntent2 != null) {
                    pendingIntent2.unregisterCancelListener(bubble.mIntentCancelListener);
                }
                executor2.execute(new Runnable() { // from class: com.android.wm.shell.bubbles.Bubble$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Bubble bubble2 = Bubble.this;
                        Bubbles.PendingIntentCanceledListener pendingIntentCanceledListener3 = pendingIntentCanceledListener2;
                        bubble2.getClass();
                        BubbleController bubbleController = ((BubbleController$$ExternalSyntheticLambda5) pendingIntentCanceledListener3).f$0;
                        bubbleController.getClass();
                        if (bubble2.mIntent != null) {
                            if (!bubble2.mIntentActive && !bubbleController.mBubbleData.hasBubbleInStackWithKey(bubble2.mKey)) {
                                ((HandlerExecutor) bubbleController.mMainExecutor).execute(new BubbleController$$ExternalSyntheticLambda15(0, bubbleController, bubble2));
                            } else {
                                bubble2.mPendingIntentCanceled = true;
                            }
                        }
                    }
                });
            }
        };
        this.mMainExecutor = executor;
        this.mTaskId = -1;
        setEntry(bubbleEntry);
    }
}
