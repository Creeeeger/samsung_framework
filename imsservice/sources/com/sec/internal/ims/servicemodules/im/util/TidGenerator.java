package com.sec.internal.ims.servicemodules.im.util;

import com.sec.internal.ims.util.ImsUtil;
import java.util.UUID;

/* loaded from: classes.dex */
public class TidGenerator {
    private static final int CLOCK_SEQ_LIMIT = 16384;
    private static final int CLOCK_SEQ_MASK = 16383;
    private static final long INTERVAL = 10000;
    private static final long MULTICAST = 1099511627776L;
    private static final long NODE_LIMIT = 281474976710656L;
    private static final long NODE_MASK = 281474976710655L;
    private static final long OFFSET = 12219292800000L;
    private static final long RESERVED = Long.MIN_VALUE;
    private static final long VERSION_NUMBER = 4096;
    private long mPrevSysTime;
    private final long mNode = (ImsUtil.getRandom().nextLong() & NODE_MASK) | MULTICAST;
    private long mClockSeq = ImsUtil.getRandom().nextInt(CLOCK_SEQ_LIMIT);

    public UUID generate() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis <= this.mPrevSysTime) {
            this.mClockSeq = (this.mClockSeq + 1) & 16383;
        }
        long j = (OFFSET + currentTimeMillis) * 10000;
        long j2 = ((j >> 48) & 4095) | (((-1) & j) << 32) | (((j >> 32) & 65535) << 16) | VERSION_NUMBER;
        long j3 = (this.mClockSeq << 48) | RESERVED | this.mNode;
        this.mPrevSysTime = currentTimeMillis;
        return new UUID(j2, j3);
    }
}
