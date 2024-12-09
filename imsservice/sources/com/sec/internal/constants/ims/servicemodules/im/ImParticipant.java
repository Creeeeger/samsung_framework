package com.sec.internal.constants.ims.servicemodules.im;

import com.sec.ims.util.ImsUri;
import com.sec.internal.log.IMSLog;
import java.util.Observable;

/* loaded from: classes.dex */
public class ImParticipant extends Observable {
    public static final String NO_ALIAS = "";
    private final String mChatId;
    private int mId;
    private Status mStatus;
    private Type mType;
    private final ImsUri mUri;
    private String mUserAlias;

    public ImParticipant(String str, ImsUri imsUri) {
        this.mType = Type.REGULAR;
        this.mStatus = Status.INITIAL;
        this.mUserAlias = "";
        this.mChatId = str;
        this.mUri = imsUri;
    }

    public ImParticipant(String str, Status status, ImsUri imsUri) {
        this.mType = Type.REGULAR;
        Status status2 = Status.INITIAL;
        this.mUserAlias = "";
        this.mChatId = str;
        this.mStatus = status;
        this.mUri = imsUri;
    }

    public ImParticipant(String str, Status status, Type type, ImsUri imsUri, String str2) {
        this.mType = Type.REGULAR;
        Status status2 = Status.INITIAL;
        this.mChatId = str;
        this.mStatus = status;
        this.mType = type;
        this.mUri = imsUri;
        this.mUserAlias = str2;
    }

    public ImParticipant(int i, String str, Status status, Type type, ImsUri imsUri, String str2) {
        this.mType = Type.REGULAR;
        Status status2 = Status.INITIAL;
        this.mId = i;
        this.mChatId = str;
        this.mStatus = status;
        this.mType = type;
        this.mUri = imsUri;
        this.mUserAlias = str2;
    }

    public int getId() {
        return this.mId;
    }

    public void setId(int i) {
        this.mId = i;
    }

    public String getChatId() {
        return this.mChatId;
    }

    public Type getType() {
        return this.mType;
    }

    public void setType(Type type) {
        this.mType = type;
    }

    public Status getStatus() {
        return this.mStatus;
    }

    public void setStatus(Status status) {
        this.mStatus = status;
    }

    public ImsUri getUri() {
        return this.mUri;
    }

    public String getUserAlias() {
        if (this.mUserAlias == null) {
            this.mUserAlias = "";
        }
        return this.mUserAlias;
    }

    public void setUserAlias(String str) {
        this.mUserAlias = str;
    }

    public enum Type implements IEnumerationWithId<Type> {
        REGULAR(0),
        INITIATOR(1),
        CHAIRMAN(2);

        private static final ReverseEnumMap<Type> map = new ReverseEnumMap<>(Type.class);
        private final int id;

        Type(int i) {
            this.id = i;
        }

        @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
        public int getId() {
            return this.id;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
        public Type getFromId(int i) {
            return (Type) map.get(Integer.valueOf(i));
        }

        public static Type fromId(int i) {
            return (Type) map.get(Integer.valueOf(i));
        }
    }

    public enum Status implements IEnumerationWithId<Status> {
        INITIAL(0),
        INVITED(1),
        ACCEPTED(2),
        DECLINED(3),
        TIMEOUT(4),
        GONE(5),
        TO_INVITE(6),
        FAILED(7),
        PENDING(8);

        private static final ReverseEnumMap<Status> map = new ReverseEnumMap<>(Status.class);
        private final int id;

        Status(int i) {
            this.id = i;
        }

        @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
        public int getId() {
            return this.id;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
        public Status getFromId(int i) {
            return (Status) map.get(Integer.valueOf(i));
        }

        public static Status fromId(int i) {
            return (Status) map.get(Integer.valueOf(i));
        }
    }

    public String toString() {
        return "ImParticipant [mId=" + this.mId + ", mChatId=" + this.mChatId + ", mType=" + this.mType + ", mStatus=" + this.mStatus + ", mUri=" + IMSLog.numberChecker(this.mUri) + ", mUserAlias=" + IMSLog.checker(this.mUserAlias) + "]";
    }

    public int hashCode() {
        String str = this.mChatId;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        ImsUri imsUri = this.mUri;
        return hashCode + (imsUri != null ? imsUri.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ImParticipant imParticipant = (ImParticipant) obj;
        String str = this.mChatId;
        if (str == null) {
            if (imParticipant.mChatId != null) {
                return false;
            }
        } else if (!str.equals(imParticipant.mChatId)) {
            return false;
        }
        ImsUri imsUri = this.mUri;
        if (imsUri == null) {
            return imParticipant.mUri == null;
        }
        return imsUri.equals(imParticipant.mUri);
    }
}
