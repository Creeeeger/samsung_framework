package com.android.systemui.log;

import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.systemui.appops.AppOpItem$$ExternalSyntheticOutline0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class LogMessageImpl implements LogMessage {
    public static final Factory Factory = new Factory(null);
    private boolean bool1;
    private boolean bool2;
    private boolean bool3;
    private boolean bool4;
    private boolean bool5;
    private double double1;
    private Throwable exception;
    private int int1;
    private int int2;
    private LogLevel level;
    private long long1;
    private long long2;
    private Function1 messagePrinter;
    private String str1;
    private String str2;
    private String str3;
    private String tag;
    private Character tagSeparator;
    private long threadId;
    private long timestamp;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class Factory {
        private Factory() {
        }

        public /* synthetic */ Factory(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static LogMessageImpl create() {
            return new LogMessageImpl(LogLevel.DEBUG, "UnknownTag", 0L, LogMessageImplKt.DEFAULT_PRINTER, null, null, null, null, 0, 0, 0L, 0L, 0.0d, false, false, false, false, false, 0L, null);
        }
    }

    public LogMessageImpl(LogLevel logLevel, String str, long j, Function1 function1, Throwable th, String str2, String str3, String str4, int i, int i2, long j2, long j3, double d, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, long j4, Character ch) {
        this.level = logLevel;
        this.tag = str;
        this.timestamp = j;
        this.messagePrinter = function1;
        this.exception = th;
        this.str1 = str2;
        this.str2 = str3;
        this.str3 = str4;
        this.int1 = i;
        this.int2 = i2;
        this.long1 = j2;
        this.long2 = j3;
        this.double1 = d;
        this.bool1 = z;
        this.bool2 = z2;
        this.bool3 = z3;
        this.bool4 = z4;
        this.bool5 = z5;
        this.threadId = j4;
        this.tagSeparator = ch;
    }

    public static /* synthetic */ LogMessageImpl copy$default(LogMessageImpl logMessageImpl, LogLevel logLevel, String str, long j, Function1 function1, Throwable th, String str2, String str3, String str4, int i, int i2, long j2, long j3, double d, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, long j4, Character ch, int i3, Object obj) {
        LogLevel logLevel2;
        String str5;
        long j5;
        Function1 function12;
        Throwable th2;
        String str6;
        String str7;
        String str8;
        int i4;
        int i5;
        long j6;
        long j7;
        double d2;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        long j8;
        Character ch2;
        if ((i3 & 1) != 0) {
            logLevel2 = logMessageImpl.getLevel();
        } else {
            logLevel2 = logLevel;
        }
        if ((i3 & 2) != 0) {
            str5 = logMessageImpl.getTag();
        } else {
            str5 = str;
        }
        if ((i3 & 4) != 0) {
            j5 = logMessageImpl.getTimestamp();
        } else {
            j5 = j;
        }
        if ((i3 & 8) != 0) {
            function12 = logMessageImpl.getMessagePrinter();
        } else {
            function12 = function1;
        }
        if ((i3 & 16) != 0) {
            th2 = logMessageImpl.getException();
        } else {
            th2 = th;
        }
        if ((i3 & 32) != 0) {
            str6 = logMessageImpl.getStr1();
        } else {
            str6 = str2;
        }
        if ((i3 & 64) != 0) {
            str7 = logMessageImpl.getStr2();
        } else {
            str7 = str3;
        }
        if ((i3 & 128) != 0) {
            str8 = logMessageImpl.getStr3();
        } else {
            str8 = str4;
        }
        if ((i3 & 256) != 0) {
            i4 = logMessageImpl.getInt1();
        } else {
            i4 = i;
        }
        if ((i3 & 512) != 0) {
            i5 = logMessageImpl.getInt2();
        } else {
            i5 = i2;
        }
        if ((i3 & 1024) != 0) {
            j6 = logMessageImpl.getLong1();
        } else {
            j6 = j2;
        }
        if ((i3 & 2048) != 0) {
            j7 = logMessageImpl.getLong2();
        } else {
            j7 = j3;
        }
        long j9 = j7;
        if ((i3 & 4096) != 0) {
            d2 = logMessageImpl.getDouble1();
        } else {
            d2 = d;
        }
        double d3 = d2;
        if ((i3 & 8192) != 0) {
            z6 = logMessageImpl.getBool1();
        } else {
            z6 = z;
        }
        if ((i3 & 16384) != 0) {
            z7 = logMessageImpl.getBool2();
        } else {
            z7 = z2;
        }
        if ((i3 & 32768) != 0) {
            z8 = logMessageImpl.getBool3();
        } else {
            z8 = z3;
        }
        if ((i3 & 65536) != 0) {
            z9 = logMessageImpl.getBool4();
        } else {
            z9 = z4;
        }
        if ((i3 & 131072) != 0) {
            z10 = logMessageImpl.getBool5();
        } else {
            z10 = z5;
        }
        if ((i3 & 262144) != 0) {
            j8 = logMessageImpl.getThreadId();
        } else {
            j8 = j4;
        }
        if ((i3 & 524288) != 0) {
            ch2 = logMessageImpl.getTagSeparator();
        } else {
            ch2 = ch;
        }
        return logMessageImpl.copy(logLevel2, str5, j5, function12, th2, str6, str7, str8, i4, i5, j6, j9, d3, z6, z7, z8, z9, z10, j8, ch2);
    }

    public static /* synthetic */ void reset$default(LogMessageImpl logMessageImpl, String str, LogLevel logLevel, long j, Function1 function1, Throwable th, int i, Object obj) {
        if ((i & 16) != 0) {
            th = null;
        }
        logMessageImpl.reset(str, logLevel, j, function1, th);
    }

    public final LogLevel component1() {
        return getLevel();
    }

    public final int component10() {
        return getInt2();
    }

    public final long component11() {
        return getLong1();
    }

    public final long component12() {
        return getLong2();
    }

    public final double component13() {
        return getDouble1();
    }

    public final boolean component14() {
        return getBool1();
    }

    public final boolean component15() {
        return getBool2();
    }

    public final boolean component16() {
        return getBool3();
    }

    public final boolean component17() {
        return getBool4();
    }

    public final boolean component18() {
        return getBool5();
    }

    public final long component19() {
        return getThreadId();
    }

    public final String component2() {
        return getTag();
    }

    public final Character component20() {
        return getTagSeparator();
    }

    public final long component3() {
        return getTimestamp();
    }

    public final Function1 component4() {
        return getMessagePrinter();
    }

    public final Throwable component5() {
        return getException();
    }

    public final String component6() {
        return getStr1();
    }

    public final String component7() {
        return getStr2();
    }

    public final String component8() {
        return getStr3();
    }

    public final int component9() {
        return getInt1();
    }

    public final LogMessageImpl copy(LogLevel logLevel, String str, long j, Function1 function1, Throwable th, String str2, String str3, String str4, int i, int i2, long j2, long j3, double d, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, long j4, Character ch) {
        return new LogMessageImpl(logLevel, str, j, function1, th, str2, str3, str4, i, i2, j2, j3, d, z, z2, z3, z4, z5, j4, ch);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LogMessageImpl)) {
            return false;
        }
        LogMessageImpl logMessageImpl = (LogMessageImpl) obj;
        if (getLevel() == logMessageImpl.getLevel() && Intrinsics.areEqual(getTag(), logMessageImpl.getTag()) && getTimestamp() == logMessageImpl.getTimestamp() && Intrinsics.areEqual(getMessagePrinter(), logMessageImpl.getMessagePrinter()) && Intrinsics.areEqual(getException(), logMessageImpl.getException()) && Intrinsics.areEqual(getStr1(), logMessageImpl.getStr1()) && Intrinsics.areEqual(getStr2(), logMessageImpl.getStr2()) && Intrinsics.areEqual(getStr3(), logMessageImpl.getStr3()) && getInt1() == logMessageImpl.getInt1() && getInt2() == logMessageImpl.getInt2() && getLong1() == logMessageImpl.getLong1() && getLong2() == logMessageImpl.getLong2() && Double.compare(getDouble1(), logMessageImpl.getDouble1()) == 0 && getBool1() == logMessageImpl.getBool1() && getBool2() == logMessageImpl.getBool2() && getBool3() == logMessageImpl.getBool3() && getBool4() == logMessageImpl.getBool4() && getBool5() == logMessageImpl.getBool5() && getThreadId() == logMessageImpl.getThreadId() && Intrinsics.areEqual(getTagSeparator(), logMessageImpl.getTagSeparator())) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.log.LogMessage
    public boolean getBool1() {
        return this.bool1;
    }

    @Override // com.android.systemui.log.LogMessage
    public boolean getBool2() {
        return this.bool2;
    }

    @Override // com.android.systemui.log.LogMessage
    public boolean getBool3() {
        return this.bool3;
    }

    @Override // com.android.systemui.log.LogMessage
    public boolean getBool4() {
        return this.bool4;
    }

    @Override // com.android.systemui.log.LogMessage
    public boolean getBool5() {
        return this.bool5;
    }

    @Override // com.android.systemui.log.LogMessage
    public double getDouble1() {
        return this.double1;
    }

    @Override // com.android.systemui.log.LogMessage
    public Throwable getException() {
        return this.exception;
    }

    @Override // com.android.systemui.log.LogMessage
    public int getInt1() {
        return this.int1;
    }

    @Override // com.android.systemui.log.LogMessage
    public int getInt2() {
        return this.int2;
    }

    @Override // com.android.systemui.log.LogMessage
    public LogLevel getLevel() {
        return this.level;
    }

    @Override // com.android.systemui.log.LogMessage
    public long getLong1() {
        return this.long1;
    }

    @Override // com.android.systemui.log.LogMessage
    public long getLong2() {
        return this.long2;
    }

    @Override // com.android.systemui.log.LogMessage
    public Function1 getMessagePrinter() {
        return this.messagePrinter;
    }

    @Override // com.android.systemui.log.LogMessage
    public String getStr1() {
        return this.str1;
    }

    @Override // com.android.systemui.log.LogMessage
    public String getStr2() {
        return this.str2;
    }

    @Override // com.android.systemui.log.LogMessage
    public String getStr3() {
        return this.str3;
    }

    @Override // com.android.systemui.log.LogMessage
    public String getTag() {
        return this.tag;
    }

    @Override // com.android.systemui.log.LogMessage
    public Character getTagSeparator() {
        return this.tagSeparator;
    }

    @Override // com.android.systemui.log.LogMessage
    public long getThreadId() {
        return this.threadId;
    }

    @Override // com.android.systemui.log.LogMessage
    public long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5 = (getMessagePrinter().hashCode() + ((Long.hashCode(getTimestamp()) + ((getTag().hashCode() + (getLevel().hashCode() * 31)) * 31)) * 31)) * 31;
        int i = 0;
        if (getException() == null) {
            hashCode = 0;
        } else {
            hashCode = getException().hashCode();
        }
        int i2 = (hashCode5 + hashCode) * 31;
        if (getStr1() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = getStr1().hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        if (getStr2() == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = getStr2().hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        if (getStr3() == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = getStr3().hashCode();
        }
        int hashCode6 = (Double.hashCode(getDouble1()) + ((Long.hashCode(getLong2()) + ((Long.hashCode(getLong1()) + ((Integer.hashCode(getInt2()) + ((Integer.hashCode(getInt1()) + ((i4 + hashCode4) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        boolean bool1 = getBool1();
        int i5 = 1;
        int i6 = bool1;
        if (bool1) {
            i6 = 1;
        }
        int i7 = (hashCode6 + i6) * 31;
        boolean bool2 = getBool2();
        int i8 = bool2;
        if (bool2) {
            i8 = 1;
        }
        int i9 = (i7 + i8) * 31;
        boolean bool3 = getBool3();
        int i10 = bool3;
        if (bool3) {
            i10 = 1;
        }
        int i11 = (i9 + i10) * 31;
        boolean bool4 = getBool4();
        int i12 = bool4;
        if (bool4) {
            i12 = 1;
        }
        int i13 = (i11 + i12) * 31;
        boolean bool5 = getBool5();
        if (!bool5) {
            i5 = bool5;
        }
        int hashCode7 = (Long.hashCode(getThreadId()) + ((i13 + i5) * 31)) * 31;
        if (getTagSeparator() != null) {
            i = getTagSeparator().hashCode();
        }
        return hashCode7 + i;
    }

    public final void reset(String str, LogLevel logLevel, long j, Function1 function1, Throwable th) {
        setLevel(logLevel);
        setTag(str);
        setTimestamp(j);
        setMessagePrinter(function1);
        setException(th);
        setStr1(null);
        setStr2(null);
        setStr3(null);
        setInt1(0);
        setInt2(0);
        setLong1(0L);
        setLong2(0L);
        setDouble1(0.0d);
        setBool1(false);
        setBool2(false);
        setBool3(false);
        setBool4(false);
        setBool5(false);
        setThreadId(0L);
        setTagSeparator(null);
    }

    @Override // com.android.systemui.log.LogMessage
    public void setBool1(boolean z) {
        this.bool1 = z;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setBool2(boolean z) {
        this.bool2 = z;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setBool3(boolean z) {
        this.bool3 = z;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setBool4(boolean z) {
        this.bool4 = z;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setBool5(boolean z) {
        this.bool5 = z;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setDouble1(double d) {
        this.double1 = d;
    }

    public void setException(Throwable th) {
        this.exception = th;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setInt1(int i) {
        this.int1 = i;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setInt2(int i) {
        this.int2 = i;
    }

    public void setLevel(LogLevel logLevel) {
        this.level = logLevel;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setLong1(long j) {
        this.long1 = j;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setLong2(long j) {
        this.long2 = j;
    }

    public void setMessagePrinter(Function1 function1) {
        this.messagePrinter = function1;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setStr1(String str) {
        this.str1 = str;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setStr2(String str) {
        this.str2 = str;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setStr3(String str) {
        this.str3 = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setTagSeparator(Character ch) {
        this.tagSeparator = ch;
    }

    @Override // com.android.systemui.log.LogMessage
    public void setThreadId(long j) {
        this.threadId = j;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public String toString() {
        LogLevel level = getLevel();
        String tag = getTag();
        long timestamp = getTimestamp();
        Function1 messagePrinter = getMessagePrinter();
        Throwable exception = getException();
        String str1 = getStr1();
        String str2 = getStr2();
        String str3 = getStr3();
        int int1 = getInt1();
        int int2 = getInt2();
        long long1 = getLong1();
        long long2 = getLong2();
        double double1 = getDouble1();
        boolean bool1 = getBool1();
        boolean bool2 = getBool2();
        boolean bool3 = getBool3();
        boolean bool4 = getBool4();
        boolean bool5 = getBool5();
        long threadId = getThreadId();
        Character tagSeparator = getTagSeparator();
        StringBuilder sb = new StringBuilder("LogMessageImpl(level=");
        sb.append(level);
        sb.append(", tag=");
        sb.append(tag);
        sb.append(", timestamp=");
        sb.append(timestamp);
        sb.append(", messagePrinter=");
        sb.append(messagePrinter);
        sb.append(", exception=");
        sb.append(exception);
        sb.append(", str1=");
        sb.append(str1);
        AppOpItem$$ExternalSyntheticOutline0.m(sb, ", str2=", str2, ", str3=", str3);
        sb.append(", int1=");
        sb.append(int1);
        sb.append(", int2=");
        sb.append(int2);
        sb.append(", long1=");
        sb.append(long1);
        sb.append(", long2=");
        sb.append(long2);
        sb.append(", double1=");
        sb.append(double1);
        sb.append(", bool1=");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, bool1, ", bool2=", bool2, ", bool3=");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(sb, bool3, ", bool4=", bool4, ", bool5=");
        sb.append(bool5);
        sb.append(", threadId=");
        sb.append(threadId);
        sb.append(", tagSeparator=");
        sb.append(tagSeparator);
        sb.append(")");
        return sb.toString();
    }
}
