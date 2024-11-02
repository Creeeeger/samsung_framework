package com.android.systemui.statusbar.notification.logging;

import com.android.systemui.statusbar.notification.logging.NotificationMemoryLogger;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.Grouping;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class NotificationMemoryLoggerKt {
    public static final Map<Pair<String, Integer>, NotificationMemoryLogger.NotificationMemoryUseAtomBuilder> aggregateMemoryUsageData(final List<NotificationMemoryUsage> list) {
        boolean z;
        Object obj;
        boolean z2;
        Grouping grouping = new Grouping() { // from class: com.android.systemui.statusbar.notification.logging.NotificationMemoryLoggerKt$aggregateMemoryUsageData$$inlined$groupingBy$1
            @Override // kotlin.collections.Grouping
            public final Object keyOf(Object obj2) {
                NotificationMemoryUsage notificationMemoryUsage = (NotificationMemoryUsage) obj2;
                return new Pair(notificationMemoryUsage.packageName, Integer.valueOf(notificationMemoryUsage.objectUsage.style));
            }

            @Override // kotlin.collections.Grouping
            public final Iterator sourceIterator() {
                return list.iterator();
            }
        };
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            Object next = sourceIterator.next();
            Object keyOf = grouping.keyOf(next);
            Object obj2 = linkedHashMap.get(keyOf);
            if (obj2 == null && !linkedHashMap.containsKey(keyOf)) {
                z = true;
            } else {
                z = false;
            }
            NotificationMemoryUsage notificationMemoryUsage = (NotificationMemoryUsage) next;
            NotificationMemoryLogger.NotificationMemoryUseAtomBuilder notificationMemoryUseAtomBuilder = (NotificationMemoryLogger.NotificationMemoryUseAtomBuilder) obj2;
            if (z) {
                notificationMemoryUseAtomBuilder = new NotificationMemoryLogger.NotificationMemoryUseAtomBuilder(notificationMemoryUsage.uid, notificationMemoryUsage.objectUsage.style);
            } else {
                Intrinsics.checkNotNull(notificationMemoryUseAtomBuilder);
            }
            notificationMemoryUseAtomBuilder.count++;
            if (!notificationMemoryUsage.viewUsage.isEmpty()) {
                notificationMemoryUseAtomBuilder.countWithInflatedViews++;
            }
            int i = notificationMemoryUseAtomBuilder.smallIconObject;
            NotificationObjectUsage notificationObjectUsage = notificationMemoryUsage.objectUsage;
            int i2 = notificationObjectUsage.smallIcon;
            notificationMemoryUseAtomBuilder.smallIconObject = i + i2;
            if (i2 > 0) {
                notificationMemoryUseAtomBuilder.smallIconBitmapCount++;
            }
            int i3 = notificationMemoryUseAtomBuilder.largeIconObject;
            int i4 = notificationObjectUsage.largeIcon;
            notificationMemoryUseAtomBuilder.largeIconObject = i3 + i4;
            if (i4 > 0) {
                notificationMemoryUseAtomBuilder.largeIconBitmapCount++;
            }
            int i5 = notificationMemoryUseAtomBuilder.bigPictureObject;
            int i6 = notificationObjectUsage.bigPicture;
            notificationMemoryUseAtomBuilder.bigPictureObject = i5 + i6;
            if (i6 > 0) {
                notificationMemoryUseAtomBuilder.bigPictureBitmapCount++;
            }
            notificationMemoryUseAtomBuilder.extras += notificationObjectUsage.extras;
            notificationMemoryUseAtomBuilder.extenders += notificationObjectUsage.extender;
            Iterator it = notificationMemoryUsage.viewUsage.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((NotificationViewUsage) obj).viewType == ViewType.TOTAL) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            NotificationViewUsage notificationViewUsage = (NotificationViewUsage) obj;
            if (notificationViewUsage != null) {
                notificationMemoryUseAtomBuilder.smallIconViews += notificationViewUsage.smallIcon;
                notificationMemoryUseAtomBuilder.largeIconViews += notificationViewUsage.largeIcon;
                notificationMemoryUseAtomBuilder.systemIconViews += notificationViewUsage.systemIcons;
                notificationMemoryUseAtomBuilder.styleViews += notificationViewUsage.style;
                notificationMemoryUseAtomBuilder.customViews += notificationViewUsage.customViews;
                notificationMemoryUseAtomBuilder.softwareBitmaps += notificationViewUsage.softwareBitmapsPenalty;
            }
            linkedHashMap.put(keyOf, notificationMemoryUseAtomBuilder);
        }
        return linkedHashMap;
    }
}
