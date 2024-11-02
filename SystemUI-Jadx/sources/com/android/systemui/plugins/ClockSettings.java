package com.android.systemui.plugins;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ClockSettings {
    private final String clockId;
    private JSONObject metadata;
    private final Integer seedColor;
    public static final Companion Companion = new Companion(null);
    private static final String KEY_CLOCK_ID = "clockId";
    private static final String KEY_SEED_COLOR = "seedColor";
    private static final String KEY_METADATA = "metadata";

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ClockSettings deserialize(String str) {
            boolean z;
            String str2;
            if (str != null && str.length() != 0) {
                z = false;
            } else {
                z = true;
            }
            Integer num = null;
            if (z) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull(ClockSettings.KEY_CLOCK_ID)) {
                str2 = jSONObject.getString(ClockSettings.KEY_CLOCK_ID);
            } else {
                str2 = null;
            }
            if (!jSONObject.isNull(ClockSettings.KEY_SEED_COLOR)) {
                num = Integer.valueOf(jSONObject.getInt(ClockSettings.KEY_SEED_COLOR));
            }
            ClockSettings clockSettings = new ClockSettings(str2, num);
            if (!jSONObject.isNull(ClockSettings.KEY_METADATA)) {
                clockSettings.setMetadata(jSONObject.getJSONObject(ClockSettings.KEY_METADATA));
            }
            return clockSettings;
        }

        public final String serialize(ClockSettings clockSettings) {
            if (clockSettings == null) {
                return "";
            }
            return new JSONObject().put(ClockSettings.KEY_CLOCK_ID, clockSettings.getClockId()).put(ClockSettings.KEY_SEED_COLOR, clockSettings.getSeedColor()).put(ClockSettings.KEY_METADATA, clockSettings.getMetadata()).toString();
        }
    }

    public ClockSettings() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ ClockSettings copy$default(ClockSettings clockSettings, String str, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            str = clockSettings.clockId;
        }
        if ((i & 2) != 0) {
            num = clockSettings.seedColor;
        }
        return clockSettings.copy(str, num);
    }

    public final String component1() {
        return this.clockId;
    }

    public final Integer component2() {
        return this.seedColor;
    }

    public final ClockSettings copy(String str, Integer num) {
        return new ClockSettings(str, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClockSettings)) {
            return false;
        }
        ClockSettings clockSettings = (ClockSettings) obj;
        if (Intrinsics.areEqual(this.clockId, clockSettings.clockId) && Intrinsics.areEqual(this.seedColor, clockSettings.seedColor)) {
            return true;
        }
        return false;
    }

    public final String getClockId() {
        return this.clockId;
    }

    public final JSONObject getMetadata() {
        return this.metadata;
    }

    public final Integer getSeedColor() {
        return this.seedColor;
    }

    public int hashCode() {
        int hashCode;
        String str = this.clockId;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = hashCode * 31;
        Integer num = this.seedColor;
        if (num != null) {
            i = num.hashCode();
        }
        return i2 + i;
    }

    public final void setMetadata(JSONObject jSONObject) {
        this.metadata = jSONObject;
    }

    public String toString() {
        return "ClockSettings(clockId=" + this.clockId + ", seedColor=" + this.seedColor + ")";
    }

    public ClockSettings(String str, Integer num) {
        this.clockId = str;
        this.seedColor = num;
        this.metadata = new JSONObject();
    }

    public /* synthetic */ ClockSettings(String str, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : num);
    }
}
