package com.android.systemui.volume.util;

import android.bluetooth.BluetoothDevice;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class BluetoothIconUtil {
    public static final BluetoothIconUtil INSTANCE = new BluetoothIconUtil();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes2.dex */
    public @interface SamsungStandard {
        public static final Companion Companion = Companion.$$INSTANCE;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class Companion {
            public static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final short GALAXY_BUDS = 5379;
            public static final short GALAXY_BUDS_LIVE = 5380;
            public static final short GALAXY_BUDS3 = 5381;
            public static final short AI_SPEAKER_GALAXY_HOME_MINI = 10242;

            private Companion() {
            }
        }
    }

    private BluetoothIconUtil() {
    }

    public static boolean isSameDeviceIconType(BluetoothDevice bluetoothDevice, ArrayList arrayList) {
        byte[] semGetManufacturerDeviceIconIndex = bluetoothDevice.semGetManufacturerDeviceIconIndex();
        if (semGetManufacturerDeviceIconIndex == null) {
            return false;
        }
        final short s = (short) (semGetManufacturerDeviceIconIndex[1] | (semGetManufacturerDeviceIconIndex[0] << 8));
        return !arrayList.stream().filter(new Predicate() { // from class: com.android.systemui.volume.util.BluetoothIconUtil$isSameDeviceIconType$1$1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                Short sh = (Short) obj;
                if (sh != null && sh.shortValue() == s) {
                    return true;
                }
                return false;
            }
        }).findFirst().isEmpty();
    }
}
