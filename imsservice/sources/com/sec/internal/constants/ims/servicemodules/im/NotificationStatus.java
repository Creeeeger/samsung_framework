package com.sec.internal.constants.ims.servicemodules.im;

import android.util.Log;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public enum NotificationStatus implements IEnumerationWithId<NotificationStatus> {
    NONE(0),
    DELIVERED(1),
    DISPLAYED(2),
    INTERWORKING_SMS(3),
    INTERWORKING_MMS(4),
    CANCELED(5);

    private final int id;
    private static final String LOG_TAG = NotificationStatus.class.getSimpleName();
    private static final ReverseEnumMap<NotificationStatus> map = new ReverseEnumMap<>(NotificationStatus.class);

    NotificationStatus(int i) {
        this.id = i;
    }

    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public int getId() {
        return this.id;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public NotificationStatus getFromId(int i) {
        return (NotificationStatus) map.get(Integer.valueOf(i));
    }

    public static NotificationStatus fromId(int i) {
        return (NotificationStatus) map.get(Integer.valueOf(i));
    }

    /* renamed from: com.sec.internal.constants.ims.servicemodules.im.NotificationStatus$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus;

        static {
            int[] iArr = new int[NotificationStatus.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus = iArr;
            try {
                iArr[NotificationStatus.DELIVERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[NotificationStatus.DISPLAYED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static int encode(Set<NotificationStatus> set) {
        int i = 0;
        for (NotificationStatus notificationStatus : set) {
            int i2 = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[notificationStatus.ordinal()];
            if (i2 == 1 || i2 == 2) {
                i |= notificationStatus.getId();
            } else {
                Log.e(LOG_TAG, "encode(): unsupported disposition notification!");
            }
        }
        return i;
    }

    public static Set<NotificationStatus> decode(int i) {
        HashSet hashSet = new HashSet();
        NotificationStatus notificationStatus = DELIVERED;
        if ((notificationStatus.getId() & i) != 0) {
            hashSet.add(notificationStatus);
        }
        NotificationStatus notificationStatus2 = DISPLAYED;
        if ((i & notificationStatus2.getId()) != 0) {
            hashSet.add(notificationStatus2);
        }
        return hashSet;
    }

    public static Set<NotificationStatus> toSet(String str) {
        HashSet hashSet = new HashSet();
        Log.e(LOG_TAG, "toSet(): disposition :" + str);
        if (str == null) {
            hashSet.add(DELIVERED);
            hashSet.add(DISPLAYED);
            return hashSet;
        }
        switch (str) {
            case "none":
                hashSet.add(NONE);
                return hashSet;
            case "delivery":
                hashSet.add(DELIVERED);
                return hashSet;
            case "display":
                hashSet.add(DISPLAYED);
                return hashSet;
            default:
                hashSet.add(DELIVERED);
                hashSet.add(DISPLAYED);
                return hashSet;
        }
    }
}
