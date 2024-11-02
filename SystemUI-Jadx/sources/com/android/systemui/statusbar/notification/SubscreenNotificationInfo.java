package com.android.systemui.statusbar.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Person;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;
import android.widget.RemoteViews;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SubscreenNotificationInfo implements Parcelable {
    public Drawable mAppIcon;
    public String mAppName;
    public int mAppPrimaryDefaultColor;
    public String mBigText;
    public String mBigTitle;
    public Bitmap mBitmap;
    public int mChildCount;
    public String mContent;
    public PendingIntent mContentIntent;
    public RemoteViews mContentView;
    public final Context mContext;
    public Icon mConversationIcon;
    public boolean mGroupSummary;
    public boolean mHasSemanticCall;
    public Drawable mIcon;
    public boolean mIsCall;
    public boolean mIsGroupConversation;
    public boolean mIsMessagingStyle;
    public boolean mIsMissedCall;
    public String mKey;
    public Drawable mKnoxBadgeDrawable;
    public Icon mLargeIcon;
    public boolean mNeedsOnePhoneIcon;
    public boolean mNeedsTwoPhoneIcon;
    public String mPkg;
    public PendingIntent mRemoteInputActionIntent;
    public boolean mRemoteInputIsSms;
    public int mRemoteInputMaxLength;
    public String mRemoteInputSignature;
    public boolean mRemoteinput;
    public ExpandableNotificationRow mRow;
    public StatusBarNotification mSbn;
    public PendingIntent mSemanticCallPendingIntent;
    public boolean mShowWhen;
    public String mTitle;
    public int mUnreadMessageCnt;
    public boolean mUseSmallIcon;
    public long mWhen;
    public static final Parcelable.Creator<SubscreenNotificationInfo> CREATOR = new Parcelable.Creator() { // from class: com.android.systemui.statusbar.notification.SubscreenNotificationInfo.1
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new SubscreenNotificationInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new SubscreenNotificationInfo[i];
        }
    };
    public static final Uri CONTENT_URI = Uri.parse("content://com.android.server.notification.provider");
    public final String[] mInBox = {null, null, null, null, null, null, null};
    public final ArrayList mMessageingStyleInfoArray = new ArrayList(25);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class MessagingStyleInfo {
        public String mContentText;
        public boolean mIsChecked;
        public boolean mIsReply;
        public long mPostedTime;
        public String mSender;
        public long mTimeStamp;
        public Drawable mUriImage;
    }

    public SubscreenNotificationInfo(Context context) {
        this.mContext = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.drawable.Drawable queryContentUriInternal(android.content.Context r9, java.lang.String r10) {
        /*
            java.lang.String r0 = "image"
            java.lang.String r1 = "SQLiteException occurs in deleteContentUri because  "
            r2 = 0
            android.content.ContentResolver r3 = r9.getContentResolver()     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L47
            android.net.Uri r4 = com.android.systemui.statusbar.notification.SubscreenNotificationInfo.CONTENT_URI     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L47
            java.lang.String[] r5 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L47
            java.lang.String r6 = "uri_id=?"
            java.lang.String[] r7 = new java.lang.String[]{r10}     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L47
            r8 = 0
            android.database.Cursor r9 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L43 android.database.sqlite.SQLiteException -> L47
            if (r9 == 0) goto L3c
            boolean r10 = r9.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L65
            if (r10 == 0) goto L3c
            int r10 = r9.getColumnIndex(r0)     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L65
            byte[] r10 = r9.getBlob(r10)     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L65
            int r0 = r10.length     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L65
            if (r0 == 0) goto L3c
            int r0 = r10.length     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L65
            r3 = 0
            android.graphics.Bitmap r10 = android.graphics.BitmapFactory.decodeByteArray(r10, r3, r0)     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L65
            android.graphics.drawable.BitmapDrawable r0 = new android.graphics.drawable.BitmapDrawable     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L65
            r0.<init>(r10)     // Catch: android.database.sqlite.SQLiteException -> L3a java.lang.Throwable -> L65
            goto L3d
        L3a:
            r10 = move-exception
            goto L4a
        L3c:
            r0 = r2
        L3d:
            if (r9 == 0) goto L64
            r9.close()
            return r0
        L43:
            r9 = move-exception
            r10 = r9
            r9 = r2
            goto L66
        L47:
            r9 = move-exception
            r10 = r9
            r9 = r2
        L4a:
            java.lang.String r0 = "SubscreenNotificationInfo"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L65
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L65
            java.lang.String r10 = r10.getMessage()     // Catch: java.lang.Throwable -> L65
            r3.append(r10)     // Catch: java.lang.Throwable -> L65
            java.lang.String r10 = r3.toString()     // Catch: java.lang.Throwable -> L65
            android.util.Log.e(r0, r10)     // Catch: java.lang.Throwable -> L65
            if (r9 == 0) goto L64
            r9.close()
        L64:
            return r2
        L65:
            r10 = move-exception
        L66:
            if (r9 == 0) goto L6c
            r9.close()
            return r2
        L6c:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.notification.SubscreenNotificationInfo.queryContentUriInternal(android.content.Context, java.lang.String):android.graphics.drawable.Drawable");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final CharSequence findConversationTitle(StatusBarNotification statusBarNotification) {
        CharSequence charSequence;
        CharSequence charSequence2 = statusBarNotification.getNotification().extras.getCharSequence("android.conversationTitle");
        if (charSequence2 != null && !TextUtils.isEmpty(charSequence2)) {
            return charSequence2;
        }
        Person person = (Person) statusBarNotification.getNotification().extras.getParcelable("android.messagingUser", Person.class);
        if (person != null) {
            charSequence = person.getName();
        } else {
            charSequence = null;
        }
        ArrayList arrayList = (ArrayList) getHistories(200);
        if (arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Bundle bundle = (Bundle) it.next();
                int i = bundle.getInt("type", 0);
                String string = bundle.getString(UniversalCredentialUtil.AGENT_TITLE, "");
                if (i != 1 && charSequence != null && !string.equals(charSequence)) {
                    return string;
                }
            }
        }
        Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(statusBarNotification.getPackageContext(this.mContext), statusBarNotification.getNotification());
        if (recoverBuilder.getStyle() instanceof Notification.MessagingStyle) {
            for (Notification.MessagingStyle.Message message : ((Notification.MessagingStyle) recoverBuilder.getStyle()).getMessages()) {
                if (charSequence != null && !TextUtils.isEmpty(charSequence) && message.getSender() != null && !charSequence.equals(message.getSender())) {
                    return message.getSender();
                }
            }
        }
        Log.d("SubscreenNotificationInfo", "coverscreen can't find conversation title properly so ,, return empty");
        return "";
    }

    public final String getContentHiddenText(SubscreenNotificationInfo subscreenNotificationInfo) {
        int i;
        if (subscreenNotificationInfo.mGroupSummary && subscreenNotificationInfo.mRow.mIsSummaryWithChildren) {
            i = this.mChildCount;
        } else {
            i = 1;
        }
        return this.mContext.getResources().getQuantityString(R.plurals.plural_notification_count, i, Integer.valueOf(i)).toString();
    }

    public final List getHistories(int i) {
        List semGetNotificationHistoryForPackage = ((NotificationManager) this.mContext.getSystemService(NotificationManager.class)).semGetNotificationHistoryForPackage(this.mContext.getPackageName(), this.mContext.getAttributionTag(), this.mSbn.getUserId(), this.mSbn.getPackageName(), this.mSbn.getKey(), i);
        ArrayList arrayList = new ArrayList();
        if (semGetNotificationHistoryForPackage != null) {
            Iterator it = semGetNotificationHistoryForPackage.iterator();
            while (it.hasNext()) {
                arrayList.add((Bundle) it.next());
            }
        }
        return arrayList;
    }

    public final String getTitle() {
        String str = this.mBigTitle;
        if (str == null) {
            return this.mTitle;
        }
        return str;
    }

    public final void makeConversation(ExpandableNotificationRow expandableNotificationRow) {
        String str;
        String str2;
        boolean z;
        NotificationEntry notificationEntry = expandableNotificationRow.mEntry;
        if (notificationEntry != null) {
            Notification notification2 = notificationEntry.mSbn.getNotification();
            Parcelable[] parcelableArray = notification2.extras.getParcelableArray("android.messages");
            Person person = (Person) notification2.extras.getParcelable("android.messagingUser", Person.class);
            for (Notification.MessagingStyle.Message message : Notification.MessagingStyle.Message.getMessagesFromBundleArray(parcelableArray)) {
                MessagingStyleInfo messagingStyleInfo = new MessagingStyleInfo();
                if (message.getText() == null) {
                    str = "";
                } else {
                    str = message.getText().toString();
                }
                messagingStyleInfo.mContentText = str;
                Uri dataUri = message.getDataUri();
                if (dataUri != null) {
                    Drawable loadImage = expandableNotificationRow.mImageResolver.loadImage(dataUri);
                    if (loadImage == null) {
                        Log.d("SubscreenNotificationInfo", notificationEntry.mKey + " : no drawable for " + dataUri);
                    } else {
                        messagingStyleInfo.mUriImage = loadImage;
                    }
                }
                Person senderPerson = message.getSenderPerson();
                if (senderPerson != null && senderPerson.getName() != null) {
                    str2 = senderPerson.getName().toString();
                } else if (person == null || person.getName() == null) {
                    str2 = "";
                } else {
                    str2 = person.getName().toString();
                }
                if (senderPerson != null && (person == null || person.getName() == null || !str2.equals(person.getName().toString()))) {
                    z = false;
                } else {
                    z = true;
                }
                if ("com.viber.voip".equals(notificationEntry.mSbn.getPackageName())) {
                    z = "Me".equals(str2);
                }
                messagingStyleInfo.mIsReply = z;
                messagingStyleInfo.mSender = str2;
                messagingStyleInfo.mTimeStamp = message.getTimestamp();
                this.mMessageingStyleInfoArray.add(messagingStyleInfo);
                this.mContent = str;
                if (!"".equals(findConversationTitle(notificationEntry.mSbn).toString())) {
                    this.mTitle = findConversationTitle(notificationEntry.mSbn).toString();
                }
            }
        }
    }

    public final boolean useSmallIcon() {
        boolean z;
        boolean equals = "android".equals(this.mPkg);
        boolean equals2 = "com.android.systemui".equals(this.mPkg);
        if (!equals && !equals2 && !this.mUseSmallIcon) {
            z = false;
        } else {
            z = true;
        }
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.mKey);
            sb.append(": use small icon. androidPkg = ");
            sb.append(equals);
            sb.append(", systemuiPkg = ");
            sb.append(equals2);
            sb.append(", mUseSmallIcon = ");
            ActionBarContextView$$ExternalSyntheticOutline0.m(sb, this.mUseSmallIcon, "SubscreenNotificationInfo");
        }
        return z;
    }

    public SubscreenNotificationInfo(Parcel parcel) {
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
    }
}
