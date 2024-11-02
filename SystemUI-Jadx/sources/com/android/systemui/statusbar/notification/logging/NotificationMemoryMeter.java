package com.android.systemui.statusbar.notification.logging;

import android.app.Notification;
import android.app.Person;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.collection.NotificationEntry;
import com.android.systemui.statusbar.notification.row.ExpandableNotificationRow;
import com.android.systemui.statusbar.notification.row.NotificationContentView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.sequences.TransformingSequence;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationMemoryMeter {
    public static final NotificationMemoryMeter INSTANCE = new NotificationMemoryMeter();

    private NotificationMemoryMeter() {
    }

    public static int computeBitmapUse(Bitmap bitmap, HashSet hashSet) {
        int identityHashCode = System.identityHashCode(bitmap);
        boolean z = true;
        if (!hashSet.contains(Integer.valueOf(identityHashCode))) {
            z = false;
        }
        if (z) {
            return 0;
        }
        hashSet.add(Integer.valueOf(identityHashCode));
        return bitmap.getAllocationByteCount();
    }

    public static int computeBundleSize(Bundle bundle) {
        Parcel obtain = Parcel.obtain();
        try {
            bundle.writeToParcel(obtain, 0);
            return obtain.dataSize();
        } finally {
            obtain.recycle();
        }
    }

    public static int computeIconUse(Icon icon, HashSet hashSet) {
        Integer num;
        if (icon != null) {
            num = Integer.valueOf(icon.getType());
        } else {
            num = null;
        }
        if (num != null && num.intValue() == 1) {
            return computeBitmapUse(icon.getBitmap(), hashSet);
        }
        if (num != null && num.intValue() == 5) {
            return computeBitmapUse(icon.getBitmap(), hashSet);
        }
        if (num != null && num.intValue() == 3) {
            int identityHashCode = System.identityHashCode(icon.getDataBytes());
            if (!hashSet.contains(Integer.valueOf(identityHashCode))) {
                hashSet.add(Integer.valueOf(identityHashCode));
                return icon.getDataLength();
            }
        }
        return 0;
    }

    public static int computeParcelableUse(Bundle bundle, String str, HashSet hashSet) {
        Parcelable parcelable;
        if (bundle != null) {
            parcelable = bundle.getParcelable(str);
        } else {
            parcelable = null;
        }
        if (parcelable instanceof Bitmap) {
            return computeBitmapUse((Bitmap) parcelable, hashSet);
        }
        if (parcelable instanceof Icon) {
            return computeIconUse((Icon) parcelable, hashSet);
        }
        if (parcelable instanceof Person) {
            return computeIconUse(((Person) parcelable).getIcon(), hashSet);
        }
        return 0;
    }

    public static List notificationMemoryUse(Collection collection) {
        return SequencesKt___SequencesKt.toList(new TransformingSequence(new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(collection), new Function1() { // from class: com.android.systemui.statusbar.notification.logging.NotificationMemoryMeter$notificationMemoryUse$1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v6, types: [android.view.View] */
            /* JADX WARN: Type inference failed for: r5v28, types: [android.view.View[]] */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i;
                Icon icon;
                int i2;
                int i3;
                String str;
                int i4;
                NotificationEntry notificationEntry;
                int i5;
                String str2;
                int i6;
                boolean z;
                View view;
                View view2;
                View view3;
                View view4;
                View view5;
                View view6;
                List list;
                List list2;
                View view7;
                View view8;
                View view9;
                View view10;
                View view11;
                Iterator it;
                Icon icon2;
                NotificationEntry notificationEntry2 = (NotificationEntry) obj;
                String packageName = notificationEntry2.mSbn.getPackageName();
                int uid = notificationEntry2.mSbn.getUid();
                NotificationMemoryMeter notificationMemoryMeter = NotificationMemoryMeter.INSTANCE;
                Notification notification2 = notificationEntry2.mSbn.getNotification();
                HashSet hashSet = new HashSet();
                notificationMemoryMeter.getClass();
                Bundle bundle = notification2.extras;
                int computeIconUse = NotificationMemoryMeter.computeIconUse(notification2.getSmallIcon(), hashSet);
                int computeIconUse2 = NotificationMemoryMeter.computeIconUse(notification2.getLargeIcon(), hashSet);
                int computeParcelableUse = NotificationMemoryMeter.computeParcelableUse(bundle, "android.largeIcon.big", hashSet);
                int computeParcelableUse2 = NotificationMemoryMeter.computeParcelableUse(bundle, "android.pictureIcon", hashSet) + NotificationMemoryMeter.computeParcelableUse(bundle, "android.picture", hashSet);
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("android.people.list");
                if (parcelableArrayList != null) {
                    Iterator it2 = parcelableArrayList.iterator();
                    i = 0;
                    while (it2.hasNext()) {
                        i += NotificationMemoryMeter.computeIconUse(((Person) it2.next()).getIcon(), hashSet);
                    }
                } else {
                    i = 0;
                }
                int computeParcelableUse3 = NotificationMemoryMeter.computeParcelableUse(bundle, "android.callPerson", hashSet);
                int computeParcelableUse4 = NotificationMemoryMeter.computeParcelableUse(bundle, "android.verificationIcon", hashSet);
                Iterator it3 = Notification.MessagingStyle.Message.getMessagesFromBundleArray(bundle.getParcelableArray("android.messages")).iterator();
                int i7 = 0;
                while (true) {
                    icon = null;
                    if (!it3.hasNext()) {
                        break;
                    }
                    Person senderPerson = ((Notification.MessagingStyle.Message) it3.next()).getSenderPerson();
                    if (senderPerson != null) {
                        icon = senderPerson.getIcon();
                    }
                    i7 += NotificationMemoryMeter.computeIconUse(icon, hashSet);
                }
                Iterator it4 = Notification.MessagingStyle.Message.getMessagesFromBundleArray(bundle.getParcelableArray("android.messages.historic")).iterator();
                int i8 = 0;
                while (it4.hasNext()) {
                    Person senderPerson2 = ((Notification.MessagingStyle.Message) it4.next()).getSenderPerson();
                    if (senderPerson2 != null) {
                        it = it4;
                        icon2 = senderPerson2.getIcon();
                    } else {
                        it = it4;
                        icon2 = null;
                    }
                    i8 += NotificationMemoryMeter.computeIconUse(icon2, hashSet);
                    it4 = it;
                }
                Bundle bundle2 = bundle.getBundle("android.car.EXTENSIONS");
                if (bundle2 != null) {
                    i3 = NotificationMemoryMeter.computeBundleSize(bundle2);
                    i2 = uid;
                } else {
                    i2 = uid;
                    i3 = 0;
                }
                int computeParcelableUse5 = NotificationMemoryMeter.computeParcelableUse(bundle2, "large_icon", hashSet);
                Bundle bundle3 = bundle.getBundle("android.tv.EXTENSIONS");
                if (bundle3 != null) {
                    i4 = NotificationMemoryMeter.computeBundleSize(bundle3);
                    str = packageName;
                } else {
                    str = packageName;
                    i4 = 0;
                }
                Bundle bundle4 = bundle.getBundle("android.wearable.EXTENSIONS");
                if (bundle4 != null) {
                    i5 = NotificationMemoryMeter.computeBundleSize(bundle4);
                    notificationEntry = notificationEntry2;
                } else {
                    notificationEntry = notificationEntry2;
                    i5 = 0;
                }
                int computeParcelableUse6 = NotificationMemoryMeter.computeParcelableUse(bundle4, "background", hashSet);
                if (Intrinsics.areEqual(notification2.getGroup(), "ranker_group")) {
                    i6 = 8;
                } else {
                    Class notificationStyle = notification2.getNotificationStyle();
                    if (notificationStyle != null) {
                        str2 = notificationStyle.getName();
                    } else {
                        str2 = null;
                    }
                    if (str2 == null) {
                        i6 = 0;
                    } else if (Intrinsics.areEqual(str2, Notification.BigTextStyle.class.getName())) {
                        i6 = 2;
                    } else if (Intrinsics.areEqual(str2, Notification.BigPictureStyle.class.getName())) {
                        i6 = 1;
                    } else if (Intrinsics.areEqual(str2, Notification.InboxStyle.class.getName())) {
                        i6 = 5;
                    } else if (Intrinsics.areEqual(str2, Notification.MediaStyle.class.getName())) {
                        i6 = 6;
                    } else if (Intrinsics.areEqual(str2, Notification.DecoratedCustomViewStyle.class.getName())) {
                        i6 = 4;
                    } else if (Intrinsics.areEqual(str2, Notification.MessagingStyle.class.getName())) {
                        i6 = 7;
                    } else if (Intrinsics.areEqual(str2, Notification.CallStyle.class.getName())) {
                        i6 = 3;
                    } else {
                        i6 = -1000;
                    }
                }
                if (notification2.contentView == null && notification2.bigContentView == null) {
                    z = false;
                } else {
                    z = true;
                }
                NotificationObjectUsage notificationObjectUsage = new NotificationObjectUsage(computeIconUse, computeIconUse2, NotificationMemoryMeter.computeBundleSize(bundle), i6, computeParcelableUse + i + computeParcelableUse3 + computeParcelableUse4 + i7 + i8, computeParcelableUse2, i3 + computeParcelableUse5 + i4 + i5 + computeParcelableUse6, z);
                NotificationMemoryViewWalker notificationMemoryViewWalker = NotificationMemoryViewWalker.INSTANCE;
                NotificationEntry notificationEntry3 = notificationEntry;
                ExpandableNotificationRow expandableNotificationRow = notificationEntry3.row;
                notificationMemoryViewWalker.getClass();
                if (expandableNotificationRow == null) {
                    list2 = EmptyList.INSTANCE;
                } else {
                    NotificationViewUsage[] notificationViewUsageArr = new NotificationViewUsage[4];
                    ViewType viewType = ViewType.PRIVATE_EXPANDED_VIEW;
                    View[] viewArr = new View[1];
                    NotificationContentView notificationContentView = expandableNotificationRow.mPrivateLayout;
                    if (notificationContentView != null) {
                        view = notificationContentView.mExpandedChild;
                    } else {
                        view = null;
                    }
                    viewArr[0] = view;
                    notificationViewUsageArr[0] = NotificationMemoryViewWalker.getViewUsage$default(viewType, viewArr);
                    ViewType viewType2 = ViewType.PRIVATE_CONTRACTED_VIEW;
                    View[] viewArr2 = new View[1];
                    NotificationContentView notificationContentView2 = expandableNotificationRow.mPrivateLayout;
                    if (notificationContentView2 != null) {
                        view2 = notificationContentView2.mContractedChild;
                    } else {
                        view2 = null;
                    }
                    viewArr2[0] = view2;
                    notificationViewUsageArr[1] = NotificationMemoryViewWalker.getViewUsage$default(viewType2, viewArr2);
                    ViewType viewType3 = ViewType.PRIVATE_HEADS_UP_VIEW;
                    View[] viewArr3 = new View[1];
                    NotificationContentView notificationContentView3 = expandableNotificationRow.mPrivateLayout;
                    if (notificationContentView3 != null) {
                        view3 = notificationContentView3.mHeadsUpChild;
                    } else {
                        view3 = null;
                    }
                    viewArr3[0] = view3;
                    notificationViewUsageArr[2] = NotificationMemoryViewWalker.getViewUsage$default(viewType3, viewArr3);
                    ViewType viewType4 = ViewType.PUBLIC_VIEW;
                    View[] viewArr4 = new View[3];
                    NotificationContentView notificationContentView4 = expandableNotificationRow.mPublicLayout;
                    if (notificationContentView4 != null) {
                        view4 = notificationContentView4.mExpandedChild;
                    } else {
                        view4 = null;
                    }
                    viewArr4[0] = view4;
                    if (notificationContentView4 != null) {
                        view5 = notificationContentView4.mContractedChild;
                    } else {
                        view5 = null;
                    }
                    viewArr4[1] = view5;
                    if (notificationContentView4 != null) {
                        view6 = notificationContentView4.mHeadsUpChild;
                    } else {
                        view6 = null;
                    }
                    viewArr4[2] = view6;
                    notificationViewUsageArr[3] = NotificationMemoryViewWalker.getViewUsage$default(viewType4, viewArr4);
                    List listOf = CollectionsKt__CollectionsKt.listOf(notificationViewUsageArr);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : listOf) {
                        if (obj2 != null) {
                            arrayList.add(obj2);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        HashSet hashSet2 = new HashSet();
                        ViewType viewType5 = ViewType.TOTAL;
                        ?? r5 = new View[6];
                        NotificationContentView notificationContentView5 = expandableNotificationRow.mPrivateLayout;
                        if (notificationContentView5 != null) {
                            view7 = notificationContentView5.mExpandedChild;
                        } else {
                            view7 = null;
                        }
                        r5[0] = view7;
                        if (notificationContentView5 != null) {
                            view8 = notificationContentView5.mContractedChild;
                        } else {
                            view8 = null;
                        }
                        r5[1] = view8;
                        if (notificationContentView5 != null) {
                            view9 = notificationContentView5.mHeadsUpChild;
                        } else {
                            view9 = null;
                        }
                        r5[2] = view9;
                        NotificationContentView notificationContentView6 = expandableNotificationRow.mPublicLayout;
                        if (notificationContentView6 != null) {
                            view10 = notificationContentView6.mExpandedChild;
                        } else {
                            view10 = null;
                        }
                        r5[3] = view10;
                        if (notificationContentView6 != null) {
                            view11 = notificationContentView6.mContractedChild;
                        } else {
                            view11 = null;
                        }
                        r5[4] = view11;
                        if (notificationContentView6 != null) {
                            icon = notificationContentView6.mHeadsUpChild;
                        }
                        r5[5] = icon;
                        NotificationViewUsage viewUsage = NotificationMemoryViewWalker.getViewUsage(viewType5, r5, hashSet2);
                        list = arrayList;
                        if (viewUsage != null) {
                            list = CollectionsKt___CollectionsKt.plus(arrayList, viewUsage);
                        }
                    } else {
                        list = EmptyList.INSTANCE;
                    }
                    list2 = list;
                }
                return new NotificationMemoryUsage(str, i2, NotificationUtils.logKey(notificationEntry3.mSbn.getKey()), notificationEntry3.mSbn.getNotification(), notificationObjectUsage, list2);
            }
        }));
    }
}
