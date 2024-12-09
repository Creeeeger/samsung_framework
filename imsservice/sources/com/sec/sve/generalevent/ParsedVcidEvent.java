package com.sec.sve.generalevent;

import android.os.Bundle;
import com.sec.internal.constants.ims.ImsConstants;

/* loaded from: classes.dex */
public class ParsedVcidEvent extends VcidEvent {
    private final String mAction;
    private final String mFileUrl;
    private final String mServiceType;
    private final int mSessionId;
    private final int mSubId;

    public ParsedVcidEvent(Parser parser) {
        this.mEvent = parser.mEvent;
        this.mAction = parser.mAction;
        this.mFileUrl = parser.mFileUrl;
        this.mServiceType = parser.mServiceType;
        this.mSessionId = parser.mSessionId;
        this.mSubId = parser.mSubId;
    }

    public boolean isStartEvent() {
        return "start".equals(this.mAction);
    }

    public boolean isStopEvent() {
        return VcidEvent.BUNDLE_VALUE_ACTION_STOP.equals(this.mAction);
    }

    public boolean isSetVCIDEngineEvent() {
        return VcidEvent.BUNDLE_VALUE_ACTION_SET_VCID_ENGINE.equals(this.mAction);
    }

    public String getFileUrl() {
        return this.mFileUrl;
    }

    public String getServiceType() {
        return this.mServiceType;
    }

    public int getSessionId() {
        return this.mSessionId;
    }

    public int getSubId() {
        return this.mSubId;
    }

    public static class Parser {
        private String mAction;
        private Bundle mBundle;
        private String mFileUrl;
        private String mServiceType;
        private int mSessionId = -1;
        private int mSubId = -1;
        private final String mEvent = "VCID";

        public Parser setBundle(Bundle bundle) {
            this.mBundle = bundle;
            return this;
        }

        public ParsedVcidEvent parse() {
            if (this.mBundle.containsKey("action")) {
                this.mAction = this.mBundle.getString("action");
            }
            if (this.mBundle.containsKey("fileURL")) {
                this.mFileUrl = this.mBundle.getString("fileURL");
            }
            if (this.mBundle.containsKey("serviceType")) {
                this.mServiceType = this.mBundle.getString("serviceType");
            }
            if (this.mBundle.containsKey("sessionId")) {
                this.mSessionId = this.mBundle.getInt("sessionId");
            }
            if (this.mBundle.containsKey(ImsConstants.Intents.EXTRA_RESET_NETWORK_SUBID)) {
                this.mSubId = this.mBundle.getInt(ImsConstants.Intents.EXTRA_RESET_NETWORK_SUBID);
            }
            return new ParsedVcidEvent(this);
        }
    }
}
