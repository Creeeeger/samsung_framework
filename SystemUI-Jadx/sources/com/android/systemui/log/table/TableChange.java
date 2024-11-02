package com.android.systemui.log.table;

import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.picker.model.AppInfo$$ExternalSyntheticOutline0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt___StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class TableChange {
    public boolean bool;
    public String columnName;
    public String columnPrefix;

    /* renamed from: int, reason: not valid java name */
    public Integer f5int;
    public boolean isInitial;
    public String str;
    public long timestamp;
    public DataType type;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum DataType {
        STRING,
        BOOLEAN,
        INT,
        EMPTY
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DataType.values().length];
            try {
                iArr[DataType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DataType.INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DataType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DataType.EMPTY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public TableChange() {
        this(0L, null, null, false, null, false, null, null, 255, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TableChange)) {
            return false;
        }
        TableChange tableChange = (TableChange) obj;
        if (this.timestamp == tableChange.timestamp && Intrinsics.areEqual(this.columnPrefix, tableChange.columnPrefix) && Intrinsics.areEqual(this.columnName, tableChange.columnName) && this.isInitial == tableChange.isInitial && this.type == tableChange.type && this.bool == tableChange.bool && Intrinsics.areEqual(this.f5int, tableChange.f5int) && Intrinsics.areEqual(this.str, tableChange.str)) {
            return true;
        }
        return false;
    }

    public final String getName() {
        if (!StringsKt__StringsJVMKt.isBlank(this.columnPrefix)) {
            return AbstractResolvableFuture$$ExternalSyntheticOutline0.m(this.columnPrefix, ".", this.columnName);
        }
        return this.columnName;
    }

    public final String getVal() {
        Object obj;
        String str;
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        obj = null;
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                } else {
                    obj = Boolean.valueOf(this.bool);
                }
            } else {
                obj = this.f5int;
            }
        } else {
            obj = this.str;
        }
        String valueOf = String.valueOf(obj);
        if (this.isInitial) {
            str = "**";
        } else {
            str = "";
        }
        return str.concat(valueOf);
    }

    public final boolean hasData() {
        if ((!StringsKt__StringsJVMKt.isBlank(this.columnName)) && this.type != DataType.EMPTY) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode;
        int m = AppInfo$$ExternalSyntheticOutline0.m(this.columnName, AppInfo$$ExternalSyntheticOutline0.m(this.columnPrefix, Long.hashCode(this.timestamp) * 31, 31), 31);
        boolean z = this.isInitial;
        int i = 1;
        int i2 = z;
        if (z != 0) {
            i2 = 1;
        }
        int hashCode2 = (this.type.hashCode() + ((m + i2) * 31)) * 31;
        boolean z2 = this.bool;
        if (!z2) {
            i = z2 ? 1 : 0;
        }
        int i3 = (hashCode2 + i) * 31;
        Integer num = this.f5int;
        int i4 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i5 = (i3 + hashCode) * 31;
        String str = this.str;
        if (str != null) {
            i4 = str.hashCode();
        }
        return i5 + i4;
    }

    public final void reset(long j, String str, String str2, boolean z) {
        this.timestamp = j;
        this.columnPrefix = StringsKt___StringsKt.take(str);
        this.columnName = StringsKt___StringsKt.take(str2);
        this.isInitial = z;
        this.type = DataType.EMPTY;
        this.bool = false;
        this.f5int = 0;
        this.str = null;
    }

    public final String toString() {
        return "TableChange(timestamp=" + this.timestamp + ", columnPrefix=" + this.columnPrefix + ", columnName=" + this.columnName + ", isInitial=" + this.isInitial + ", type=" + this.type + ", bool=" + this.bool + ", int=" + this.f5int + ", str=" + this.str + ")";
    }

    public TableChange(long j, String str, String str2, boolean z, DataType dataType, boolean z2, Integer num, String str3) {
        this.timestamp = j;
        this.columnPrefix = str;
        this.columnName = str2;
        this.isInitial = z;
        this.type = dataType;
        this.bool = z2;
        this.f5int = num;
        this.str = str3;
        this.columnPrefix = StringsKt___StringsKt.take(str);
        this.columnName = StringsKt___StringsKt.take(this.columnName);
        String str4 = this.str;
        this.str = str4 != null ? StringsKt___StringsKt.take(str4) : null;
    }

    public /* synthetic */ TableChange(long j, String str, String str2, boolean z, DataType dataType, boolean z2, Integer num, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? "" : str, (i & 4) == 0 ? str2 : "", (i & 8) != 0 ? false : z, (i & 16) != 0 ? DataType.EMPTY : dataType, (i & 32) == 0 ? z2 : false, (i & 64) != 0 ? null : num, (i & 128) == 0 ? str3 : null);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getIS_INITIAL_PREFIX$annotations() {
        }

        public static /* synthetic */ void getMAX_STRING_LENGTH$annotations() {
        }
    }
}
