package com.sec.internal.constants.ims.servicemodules.volte2;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'VCID_FAILURE' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:293)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:266)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class ImsGeneralEvent {
    private static final /* synthetic */ ImsGeneralEvent[] $VALUES;
    public static final ImsGeneralEvent IDC_ARCALL_START;
    public static final ImsGeneralEvent IDC_ARCALL_STOP;
    public static final ImsGeneralEvent IDC_SCREEN_SHARE_START;
    public static final ImsGeneralEvent IDC_SCREEN_SHARE_STOP;
    public static final ImsGeneralEvent NOTIFY_DSDA_VIDEO_CAPA;
    public static final ImsGeneralEvent NOTIFY_QUANTUM_ENCRYPTION_STATUS;
    public static final ImsGeneralEvent UNKNOWN = new ImsGeneralEvent("UNKNOWN", 0, "", NotifyType.UNKNOWN);
    public static final ImsGeneralEvent VCID_FAILURE;
    private String mName;
    private NotifyType mNotifyType;

    private enum NotifyType {
        UNKNOWN,
        CALL_PROFILE_CHANGED,
        CALL_EVENT
    }

    private static /* synthetic */ ImsGeneralEvent[] $values() {
        return new ImsGeneralEvent[]{UNKNOWN, VCID_FAILURE, IDC_SCREEN_SHARE_START, IDC_SCREEN_SHARE_STOP, IDC_ARCALL_START, IDC_ARCALL_STOP, NOTIFY_QUANTUM_ENCRYPTION_STATUS, NOTIFY_DSDA_VIDEO_CAPA};
    }

    public static ImsGeneralEvent valueOf(String str) {
        return (ImsGeneralEvent) Enum.valueOf(ImsGeneralEvent.class, str);
    }

    public static ImsGeneralEvent[] values() {
        return (ImsGeneralEvent[]) $VALUES.clone();
    }

    static {
        NotifyType notifyType = NotifyType.CALL_PROFILE_CHANGED;
        VCID_FAILURE = new ImsGeneralEvent("VCID_FAILURE", 1, "VCIDGeneralFailure", notifyType);
        IDC_SCREEN_SHARE_START = new ImsGeneralEvent("IDC_SCREEN_SHARE_START", 2, "IdcScreenShareStart", notifyType);
        IDC_SCREEN_SHARE_STOP = new ImsGeneralEvent("IDC_SCREEN_SHARE_STOP", 3, "IdcScreenShareStop", notifyType);
        IDC_ARCALL_START = new ImsGeneralEvent("IDC_ARCALL_START", 4, "IdcArCallStart", notifyType);
        IDC_ARCALL_STOP = new ImsGeneralEvent("IDC_ARCALL_STOP", 5, "IdcArCallStop", notifyType);
        NOTIFY_QUANTUM_ENCRYPTION_STATUS = new ImsGeneralEvent("NOTIFY_QUANTUM_ENCRYPTION_STATUS", 6, "NotifyQuantumEncryptionStatus", notifyType);
        NOTIFY_DSDA_VIDEO_CAPA = new ImsGeneralEvent("NOTIFY_DSDA_VIDEO_CAPA", 7, "NotifyDSDAVideoCapa", notifyType);
        $VALUES = $values();
    }

    private ImsGeneralEvent(String str, int i, String str2, NotifyType notifyType) {
        this.mName = str2;
        this.mNotifyType = notifyType;
    }

    public String getName() {
        return this.mName;
    }

    public NotifyType getNotifyType() {
        return this.mNotifyType;
    }

    public static boolean isOnlyCallProfileChanged(String str) {
        for (ImsGeneralEvent imsGeneralEvent : values()) {
            if (imsGeneralEvent.getName().equals(str) && imsGeneralEvent.getNotifyType() == NotifyType.CALL_PROFILE_CHANGED) {
                return true;
            }
        }
        return false;
    }
}
