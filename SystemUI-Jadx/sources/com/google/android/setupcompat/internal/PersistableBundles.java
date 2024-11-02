package com.google.android.setupcompat.internal;

import android.os.BaseBundle;
import android.os.PersistableBundle;
import android.util.ArrayMap;
import com.google.android.setupcompat.util.Logger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PersistableBundles {
    public static final Logger LOG = new Logger("PersistableBundles");

    private PersistableBundles() {
        throw new AssertionError("Should not be instantiated");
    }

    public static void assertIsValid(PersistableBundle persistableBundle) {
        if (persistableBundle != null) {
            for (String str : persistableBundle.keySet()) {
                Object obj = persistableBundle.get(str);
                Preconditions.checkArgument(String.format("Unknown/unsupported data type [%s] for key %s", obj, str), isSupportedDataType(obj));
            }
            return;
        }
        throw new NullPointerException("PersistableBundle cannot be null!");
    }

    public static boolean isSupportedDataType(Object obj) {
        if (!(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof String) && !(obj instanceof Boolean)) {
            return false;
        }
        return true;
    }

    public static ArrayMap toMap(BaseBundle baseBundle) {
        if (baseBundle != null && !baseBundle.isEmpty()) {
            ArrayMap arrayMap = new ArrayMap(baseBundle.size());
            for (String str : baseBundle.keySet()) {
                Object obj = baseBundle.get(str);
                if (!isSupportedDataType(obj)) {
                    LOG.w(String.format("Unknown/unsupported data type [%s] for key %s", obj, str));
                } else {
                    arrayMap.put(str, baseBundle.get(str));
                }
            }
            return arrayMap;
        }
        return new ArrayMap(0);
    }
}
