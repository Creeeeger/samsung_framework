package com.sec.internal.ims.servicemodules.volte2.data;

import com.sec.internal.constants.ims.servicemodules.volte2.IMSMediaEvent;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class RelayStreams {
    private static final String LOG_TAG = "RelayStreams";
    private int mBoundStreamId;
    private int mCmcType;
    private int mRelayChannelId;
    private int mSessionId;
    private int mStreamId;

    public RelayStreams() {
        this.mStreamId = -1;
        this.mSessionId = -1;
        this.mBoundStreamId = -1;
        this.mRelayChannelId = -1;
        this.mCmcType = 0;
        IMSLog.i(LOG_TAG, LOG_TAG);
    }

    public RelayStreams(int i, int i2) {
        this.mStreamId = -1;
        this.mSessionId = -1;
        this.mBoundStreamId = -1;
        this.mRelayChannelId = -1;
        this.mCmcType = 0;
        IMSLog.i(LOG_TAG, "streamId: " + i + " sessionId: " + i2);
        this.mStreamId = i;
        this.mSessionId = i2;
    }

    public RelayStreams(IMSMediaEvent iMSMediaEvent, int i) {
        this.mStreamId = -1;
        this.mSessionId = -1;
        this.mBoundStreamId = -1;
        this.mRelayChannelId = -1;
        this.mCmcType = 0;
        IMSLog.i(LOG_TAG, "streamId: " + iMSMediaEvent.getStreamId() + " sessionId: " + iMSMediaEvent.getSessionID() + " state: " + iMSMediaEvent.getRelayStreamEvent() + " cmcType: " + i);
        this.mStreamId = iMSMediaEvent.getStreamId();
        this.mSessionId = iMSMediaEvent.getSessionID();
        this.mCmcType = i;
    }

    public int getStreamId() {
        return this.mStreamId;
    }

    public int getSessionId() {
        return this.mSessionId;
    }

    public int getCmcType() {
        return this.mCmcType;
    }

    public void setBoundStreamId(int i) {
        this.mBoundStreamId = i;
    }

    public int getBoundStreamId() {
        return this.mBoundStreamId;
    }

    public void setRelayChannelId(int i) {
        this.mRelayChannelId = i;
    }

    public int getRelayChannelId() {
        return this.mRelayChannelId;
    }

    public String toString() {
        return "RelayStreams [mStreamId=" + this.mStreamId + ", mSessionId=" + this.mSessionId + ", mBoundStreamId=" + this.mBoundStreamId + ", mRelayChannelId=" + this.mRelayChannelId + "]";
    }
}
