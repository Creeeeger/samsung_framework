package com.sec.internal.ims.servicemodules.tapi.service.utils;

import android.util.SparseArray;
import com.gsma.services.rcs.capability.Capabilities;
import com.gsma.services.rcs.contact.ContactId;
import com.sec.ims.presence.PresenceInfo;

/* loaded from: classes.dex */
public class ContactInfo {
    public static final int NOT_RCS = 1;
    public static final int NO_INFO = 8;
    public static final int RCS_ACTIVE = 2;
    public static final int REGISTRATION_STATUS_OFFLINE = 2;
    public static final int REGISTRATION_STATUS_ONLINE = 1;
    public static final int REGISTRATION_STATUS_UNKNOWN = 0;
    private long mBlockingTs;
    private Capabilities capabilities = null;
    private PresenceInfo presenceInfo = null;
    private ContactId contact = null;
    private int registrationState = 0;
    private int rcsStatus = 1;
    private long rcsStatusTimestamp = 0;
    private String displayName = null;
    private BlockingState mBlockingState = BlockingState.NOT_BLOCKED;

    public enum BlockingState {
        NOT_BLOCKED(0),
        BLOCKED(1);

        private static SparseArray<BlockingState> mValueToEnum = new SparseArray<>();
        private int mValue;

        static {
            for (BlockingState blockingState : values()) {
                mValueToEnum.put(blockingState.toInt(), blockingState);
            }
        }

        BlockingState(int i) {
            this.mValue = i;
        }

        public final int toInt() {
            return this.mValue;
        }
    }

    public void setCapabilities(Capabilities capabilities) {
        this.capabilities = capabilities;
    }

    public Capabilities getCapabilities() {
        return this.capabilities;
    }

    public void setPresenceInfo(PresenceInfo presenceInfo) {
        this.presenceInfo = presenceInfo;
    }

    public void setContact(ContactId contactId) {
        this.contact = contactId;
    }

    public ContactId getContact() {
        return this.contact;
    }

    public void setRcsStatus(int i) {
        this.rcsStatus = i;
    }

    public int getRcsStatus() {
        return this.rcsStatus;
    }

    public void setRegistrationState(int i) {
        this.registrationState = i;
    }

    public int getRegistrationState() {
        return this.registrationState;
    }

    public void setRcsStatusTimestamp(long j) {
        this.rcsStatusTimestamp = j;
    }

    public void setRcsDisplayName(String str) {
        this.displayName = str;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public void setBlockingState(BlockingState blockingState) {
        this.mBlockingState = blockingState;
    }

    public BlockingState getBlockingState() {
        return this.mBlockingState;
    }

    public long getBlockingTimestamp() {
        return this.mBlockingTs;
    }

    public void setBlockingTimestamp(long j) {
        this.mBlockingTs = j;
    }

    public String toString() {
        String str = "Contact=" + this.contact + ", Status=" + this.rcsStatus + ", State=" + this.registrationState + ", Timestamp=" + this.rcsStatusTimestamp;
        if (this.capabilities != null) {
            str = str + ", Capabilities=" + this.capabilities.toString();
        }
        if (this.presenceInfo == null) {
            return str;
        }
        return str + ", Presence=" + this.presenceInfo.toString();
    }
}
