package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import androidx.core.content.LocusIdCompat;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotificationCompat$Builder {
    public final ArrayList mActions;
    public boolean mAllowSystemGeneratedContextualActions;
    public int mBadgeIcon;
    public NotificationCompat$BubbleMetadata mBubbleMetadata;
    public String mCategory;
    public final String mChannelId;
    public int mColor;
    public boolean mColorized;
    public boolean mColorizedSet;
    public CharSequence mContentInfo;
    public PendingIntent mContentIntent;
    public CharSequence mContentText;
    public CharSequence mContentTitle;
    public final Context mContext;
    public Bundle mExtras;
    public PendingIntent mFullScreenIntent;
    public String mGroupKey;
    public boolean mGroupSummary;
    public final ArrayList mInvisibleActions;
    public Bitmap mLargeIcon;
    public boolean mLocalOnly;
    public LocusIdCompat mLocusId;
    public final Notification mNotification;
    public int mNumber;
    public final ArrayList mPeople;
    public final ArrayList mPersonList;
    public int mPriority;
    public int mProgress;
    public boolean mProgressIndeterminate;
    public int mProgressMax;
    public Notification mPublicVersion;
    public CharSequence mSettingsText;
    public String mShortcutId;
    public boolean mShowWhen;
    public final Icon mSmallIcon;
    public String mSortKey;
    public NotificationCompat$Style mStyle;
    public CharSequence mSubText;
    public long mTimeout;
    public boolean mUseChronometer;
    public int mVisibility;

    public NotificationCompat$Builder(Context context, String str) {
        this.mActions = new ArrayList();
        this.mPersonList = new ArrayList();
        this.mInvisibleActions = new ArrayList();
        this.mShowWhen = true;
        this.mLocalOnly = false;
        this.mColor = 0;
        this.mVisibility = 0;
        this.mBadgeIcon = 0;
        Notification notification2 = new Notification();
        this.mNotification = notification2;
        this.mContext = context;
        this.mChannelId = str;
        notification2.when = System.currentTimeMillis();
        notification2.audioStreamType = -1;
        this.mPriority = 0;
        this.mPeople = new ArrayList();
        this.mAllowSystemGeneratedContextualActions = true;
    }

    public static CharSequence limitCharSequenceLength(CharSequence charSequence) {
        if (charSequence == null) {
            return charSequence;
        }
        if (charSequence.length() > 5120) {
            return charSequence.subSequence(0, 5120);
        }
        return charSequence;
    }

    public final void setFlag(int i, boolean z) {
        Notification notification2 = this.mNotification;
        if (z) {
            notification2.flags = i | notification2.flags;
        } else {
            notification2.flags = (~i) & notification2.flags;
        }
    }

    public final void setStyle(NotificationCompat$Style notificationCompat$Style) {
        if (this.mStyle != notificationCompat$Style) {
            this.mStyle = notificationCompat$Style;
            if (notificationCompat$Style != null) {
                notificationCompat$Style.setBuilder(this);
            }
        }
    }

    @Deprecated
    public NotificationCompat$Builder(Context context) {
        this(context, (String) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x05f9  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0620  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x064c A[LOOP:7: B:245:0x0646->B:247:0x064c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0666  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0682  */
    /* JADX WARN: Removed duplicated region for block: B:259:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0139 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x028c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public NotificationCompat$Builder(android.content.Context r45, android.app.Notification r46) {
        /*
            Method dump skipped, instructions count: 1720
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat$Builder.<init>(android.content.Context, android.app.Notification):void");
    }
}
