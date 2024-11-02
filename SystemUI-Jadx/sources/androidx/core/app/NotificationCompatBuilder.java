package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat$BubbleMetadata;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NotificationCompatBuilder {
    public final Notification.Builder mBuilder;
    public final NotificationCompat$Builder mBuilderCompat;
    public final Context mContext;
    public final Bundle mExtras;

    public NotificationCompatBuilder(NotificationCompat$Builder notificationCompat$Builder) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        String str;
        String str2;
        Notification.BubbleMetadata bubbleMetadata;
        Notification.BubbleMetadata platform;
        int i;
        Bundle bundle;
        Bundle[] bundleArr;
        ArrayList arrayList;
        String str3;
        String str4;
        Icon icon;
        Iterator it;
        Bundle bundle2;
        NotificationCompatBuilder notificationCompatBuilder = this;
        new ArrayList();
        notificationCompatBuilder.mExtras = new Bundle();
        notificationCompatBuilder.mBuilderCompat = notificationCompat$Builder;
        notificationCompatBuilder.mContext = notificationCompat$Builder.mContext;
        Context context = notificationCompat$Builder.mContext;
        String str5 = notificationCompat$Builder.mChannelId;
        Notification.Builder builder = new Notification.Builder(context, str5);
        notificationCompatBuilder.mBuilder = builder;
        Notification notification2 = notificationCompat$Builder.mNotification;
        Icon icon2 = null;
        Notification.Builder lights = builder.setWhen(notification2.when).setSmallIcon(notification2.icon, notification2.iconLevel).setContent(notification2.contentView).setTicker(notification2.tickerText, null).setVibrate(notification2.vibrate).setLights(notification2.ledARGB, notification2.ledOnMS, notification2.ledOffMS);
        if ((notification2.flags & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        Notification.Builder ongoing = lights.setOngoing(z);
        if ((notification2.flags & 8) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Notification.Builder onlyAlertOnce = ongoing.setOnlyAlertOnce(z2);
        if ((notification2.flags & 16) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        Notification.Builder deleteIntent = onlyAlertOnce.setAutoCancel(z3).setDefaults(notification2.defaults).setContentTitle(notificationCompat$Builder.mContentTitle).setContentText(notificationCompat$Builder.mContentText).setContentInfo(notificationCompat$Builder.mContentInfo).setContentIntent(notificationCompat$Builder.mContentIntent).setDeleteIntent(notification2.deleteIntent);
        PendingIntent pendingIntent = notificationCompat$Builder.mFullScreenIntent;
        if ((notification2.flags & 128) != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        deleteIntent.setFullScreenIntent(pendingIntent, z4).setLargeIcon(notificationCompat$Builder.mLargeIcon).setNumber(notificationCompat$Builder.mNumber).setProgress(notificationCompat$Builder.mProgressMax, notificationCompat$Builder.mProgress, notificationCompat$Builder.mProgressIndeterminate);
        builder.setSubText(notificationCompat$Builder.mSubText).setUsesChronometer(notificationCompat$Builder.mUseChronometer).setPriority(notificationCompat$Builder.mPriority);
        Iterator it2 = notificationCompat$Builder.mActions.iterator();
        while (true) {
            str = "android.support.allowGeneratedReplies";
            if (!it2.hasNext()) {
                break;
            }
            NotificationCompat$Action notificationCompat$Action = (NotificationCompat$Action) it2.next();
            IconCompat iconCompat = notificationCompat$Action.getIconCompat();
            if (iconCompat != null) {
                icon = iconCompat.toIcon$1();
            } else {
                icon = icon2;
            }
            Notification.Action.Builder builder2 = new Notification.Action.Builder(icon, notificationCompat$Action.title, notificationCompat$Action.actionIntent);
            RemoteInput[] remoteInputArr = notificationCompat$Action.mRemoteInputs;
            if (remoteInputArr != null) {
                int length = remoteInputArr.length;
                android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[length];
                int i2 = 0;
                while (i2 < remoteInputArr.length) {
                    RemoteInput remoteInput = remoteInputArr[i2];
                    RemoteInput.Builder addExtras = new RemoteInput.Builder(remoteInput.mResultKey).setLabel(remoteInput.mLabel).setChoices(remoteInput.mChoices).setAllowFreeFormInput(remoteInput.mAllowFreeFormTextInput).addExtras(remoteInput.mExtras);
                    Set set = remoteInput.mAllowedDataTypes;
                    if (set != null) {
                        Iterator it3 = set.iterator();
                        while (it3.hasNext()) {
                            addExtras.setAllowDataType((String) it3.next(), true);
                            it2 = it2;
                        }
                    }
                    addExtras.setEditChoicesBeforeSending(remoteInput.mEditChoicesBeforeSending);
                    remoteInputArr2[i2] = addExtras.build();
                    i2++;
                    it2 = it2;
                }
                it = it2;
                for (int i3 = 0; i3 < length; i3++) {
                    builder2.addRemoteInput(remoteInputArr2[i3]);
                }
            } else {
                it = it2;
            }
            Bundle bundle3 = notificationCompat$Action.mExtras;
            if (bundle3 != null) {
                bundle2 = new Bundle(bundle3);
            } else {
                bundle2 = new Bundle();
            }
            boolean z5 = notificationCompat$Action.mAllowGeneratedReplies;
            bundle2.putBoolean("android.support.allowGeneratedReplies", z5);
            builder2.setAllowGeneratedReplies(z5);
            int i4 = notificationCompat$Action.mSemanticAction;
            bundle2.putInt("android.support.action.semanticAction", i4);
            builder2.setSemanticAction(i4);
            builder2.setContextual(notificationCompat$Action.mIsContextual);
            builder2.setAuthenticationRequired(notificationCompat$Action.mAuthenticationRequired);
            bundle2.putBoolean("android.support.action.showsUserInterface", notificationCompat$Action.mShowsUserInterface);
            builder2.addExtras(bundle2);
            notificationCompatBuilder.mBuilder.addAction(builder2.build());
            it2 = it;
            icon2 = null;
        }
        Bundle bundle4 = notificationCompat$Builder.mExtras;
        if (bundle4 != null) {
            notificationCompatBuilder.mExtras.putAll(bundle4);
        }
        notificationCompatBuilder.mBuilder.setShowWhen(notificationCompat$Builder.mShowWhen);
        notificationCompatBuilder.mBuilder.setLocalOnly(notificationCompat$Builder.mLocalOnly).setGroup(notificationCompat$Builder.mGroupKey).setGroupSummary(notificationCompat$Builder.mGroupSummary).setSortKey(notificationCompat$Builder.mSortKey);
        notificationCompatBuilder.mBuilder.setCategory(notificationCompat$Builder.mCategory).setColor(notificationCompat$Builder.mColor).setVisibility(notificationCompat$Builder.mVisibility).setPublicVersion(notificationCompat$Builder.mPublicVersion).setSound(notification2.sound, notification2.audioAttributes);
        ArrayList arrayList2 = notificationCompat$Builder.mPeople;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            Iterator it4 = arrayList2.iterator();
            while (it4.hasNext()) {
                notificationCompatBuilder.mBuilder.addPerson((String) it4.next());
            }
        }
        ArrayList arrayList3 = notificationCompat$Builder.mInvisibleActions;
        if (arrayList3.size() > 0) {
            if (notificationCompat$Builder.mExtras == null) {
                notificationCompat$Builder.mExtras = new Bundle();
            }
            Bundle bundle5 = notificationCompat$Builder.mExtras.getBundle("android.car.EXTENSIONS");
            bundle5 = bundle5 == null ? new Bundle() : bundle5;
            Bundle bundle6 = new Bundle(bundle5);
            Bundle bundle7 = new Bundle();
            int i5 = 0;
            while (i5 < arrayList3.size()) {
                String num = Integer.toString(i5);
                NotificationCompat$Action notificationCompat$Action2 = (NotificationCompat$Action) arrayList3.get(i5);
                Object obj = NotificationCompatJellybean.sExtrasLock;
                Bundle bundle8 = new Bundle();
                IconCompat iconCompat2 = notificationCompat$Action2.getIconCompat();
                if (iconCompat2 != null) {
                    i = iconCompat2.getResId();
                } else {
                    i = 0;
                }
                bundle8.putInt("icon", i);
                bundle8.putCharSequence(UniversalCredentialUtil.AGENT_TITLE, notificationCompat$Action2.title);
                bundle8.putParcelable("actionIntent", notificationCompat$Action2.actionIntent);
                Bundle bundle9 = notificationCompat$Action2.mExtras;
                if (bundle9 != null) {
                    bundle = new Bundle(bundle9);
                } else {
                    bundle = new Bundle();
                }
                bundle.putBoolean(str, notificationCompat$Action2.mAllowGeneratedReplies);
                bundle8.putBundle("extras", bundle);
                RemoteInput[] remoteInputArr3 = notificationCompat$Action2.mRemoteInputs;
                if (remoteInputArr3 == null) {
                    arrayList = arrayList3;
                    str4 = str5;
                    str3 = str;
                    bundleArr = null;
                } else {
                    bundleArr = new Bundle[remoteInputArr3.length];
                    arrayList = arrayList3;
                    str3 = str;
                    int i6 = 0;
                    while (i6 < remoteInputArr3.length) {
                        RemoteInput remoteInput2 = remoteInputArr3[i6];
                        RemoteInput[] remoteInputArr4 = remoteInputArr3;
                        Bundle bundle10 = new Bundle();
                        String str6 = str5;
                        bundle10.putString("resultKey", remoteInput2.mResultKey);
                        bundle10.putCharSequence("label", remoteInput2.mLabel);
                        bundle10.putCharSequenceArray("choices", remoteInput2.mChoices);
                        bundle10.putBoolean("allowFreeFormInput", remoteInput2.mAllowFreeFormTextInput);
                        bundle10.putBundle("extras", remoteInput2.mExtras);
                        Set set2 = remoteInput2.mAllowedDataTypes;
                        if (set2 != null && !set2.isEmpty()) {
                            ArrayList<String> arrayList4 = new ArrayList<>(set2.size());
                            Iterator it5 = set2.iterator();
                            while (it5.hasNext()) {
                                arrayList4.add((String) it5.next());
                            }
                            bundle10.putStringArrayList("allowedDataTypes", arrayList4);
                        }
                        bundleArr[i6] = bundle10;
                        i6++;
                        remoteInputArr3 = remoteInputArr4;
                        str5 = str6;
                    }
                    str4 = str5;
                }
                bundle8.putParcelableArray("remoteInputs", bundleArr);
                bundle8.putBoolean("showsUserInterface", notificationCompat$Action2.mShowsUserInterface);
                bundle8.putInt("semanticAction", notificationCompat$Action2.mSemanticAction);
                bundle7.putBundle(num, bundle8);
                i5++;
                arrayList3 = arrayList;
                str = str3;
                str5 = str4;
            }
            str2 = str5;
            bundle5.putBundle("invisible_actions", bundle7);
            bundle6.putBundle("invisible_actions", bundle7);
            if (notificationCompat$Builder.mExtras == null) {
                notificationCompat$Builder.mExtras = new Bundle();
            }
            notificationCompat$Builder.mExtras.putBundle("android.car.EXTENSIONS", bundle5);
            notificationCompatBuilder = this;
            notificationCompatBuilder.mExtras.putBundle("android.car.EXTENSIONS", bundle6);
        } else {
            str2 = str5;
        }
        Icon icon3 = notificationCompat$Builder.mSmallIcon;
        if (icon3 != null) {
            notificationCompatBuilder.mBuilder.setSmallIcon(icon3);
        }
        notificationCompatBuilder.mBuilder.setExtras(notificationCompat$Builder.mExtras).setRemoteInputHistory(null);
        notificationCompatBuilder.mBuilder.setBadgeIconType(notificationCompat$Builder.mBadgeIcon).setSettingsText(notificationCompat$Builder.mSettingsText).setShortcutId(notificationCompat$Builder.mShortcutId).setTimeoutAfter(notificationCompat$Builder.mTimeout).setGroupAlertBehavior(0);
        if (notificationCompat$Builder.mColorizedSet) {
            notificationCompatBuilder.mBuilder.setColorized(notificationCompat$Builder.mColorized);
        }
        if (!TextUtils.isEmpty(str2)) {
            bubbleMetadata = null;
            notificationCompatBuilder.mBuilder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        } else {
            bubbleMetadata = null;
        }
        Iterator it6 = notificationCompat$Builder.mPersonList.iterator();
        while (it6.hasNext()) {
            notificationCompatBuilder.mBuilder.addPerson(((Person) it6.next()).toAndroidPerson());
        }
        notificationCompatBuilder.mBuilder.setAllowSystemGeneratedContextualActions(notificationCompat$Builder.mAllowSystemGeneratedContextualActions);
        Notification.Builder builder3 = notificationCompatBuilder.mBuilder;
        NotificationCompat$BubbleMetadata notificationCompat$BubbleMetadata = notificationCompat$Builder.mBubbleMetadata;
        if (notificationCompat$BubbleMetadata == null) {
            platform = bubbleMetadata;
        } else {
            platform = NotificationCompat$BubbleMetadata.Api30Impl.toPlatform(notificationCompat$BubbleMetadata);
        }
        builder3.setBubbleMetadata(platform);
        LocusIdCompat locusIdCompat = notificationCompat$Builder.mLocusId;
        if (locusIdCompat != null) {
            notificationCompatBuilder.mBuilder.setLocusId(locusIdCompat.mWrapped);
        }
    }
}
