package com.sec.internal.constants.ims.servicemodules.im;

/* loaded from: classes.dex */
public enum ImDirection implements IEnumerationWithId<ImDirection> {
    INCOMING(0),
    OUTGOING(1),
    IRRELEVANT(2);

    private static final ReverseEnumMap<ImDirection> map = new ReverseEnumMap<>(ImDirection.class);
    private final int id;

    ImDirection(int i) {
        this.id = i;
    }

    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public int getId() {
        return this.id;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId
    public ImDirection getFromId(int i) {
        return (ImDirection) map.get(Integer.valueOf(i));
    }

    public static ImDirection fromId(int i) {
        return (ImDirection) map.get(Integer.valueOf(i));
    }
}
